Plugin.define do
name "Country"
authors [
  "Andrew Horton",

  "Code0x58", 

]
version "0.4"
description "Shows the country the IPv4 address belongs to. This uses the GeoIP IP2Country database from http://software77.net/geo-ip/. Instructions on updating the database are in the plugin comments."
def startup
	whatweb_folder = File.expand_path(File.dirname(__FILE__))	
	country_db = whatweb_folder + "/country-ips.dat"
	if File.exist?(country_db)
		rfile = File.open(country_db, "rb")
	else		
		if File.exist?(whatweb_folder + "/IpToCountry.csv")
			last_start = nil
			last_end = nil
			last_country = nil
			File.open(whatweb_folder + "/country-ips.dat","wb") do |wfile|
				IO.foreach(whatweb_folder + "/IpToCountry.csv") do |line|
					next if line !~ /^"/
					s, e, _, _, co = line.delete!("\"").split(",")
					s,e = s.to_i, e.to_i
					if !last_start
						last_start,last_end,last_country = s, e, co
					else
						if s == last_end + 1 and co == last_country
							last_end = e
						else
							wfile << [last_start, last_end, last_country].pack("NNa2")
							last_start, last_end, last_country = s, e, co
						end
					end
				end
				if last_start
					wfile << [last_start, last_end, last_country].pack("NNa2")
				end
			end
			rfile = File.open(country_db, "rb")
		end
	end
	f = whatweb_folder + "/country-codes.txt"
	ccnames = {}
	File.open(f, "r:UTF-8").readlines.each do |line|
		country, code, _, _ = line.split(",")
		ccnames[code] = country
	end
  @variables = {
    rfile: rfile,
    ccnames: ccnames,
    mutex: Mutex.new, 
  }
end
passive do
	m = []
	rfile = @variables[:rfile]
  ccnames = @variables[:ccnames]
  mutex = @variables[:mutex]
  if rfile and @ip and @ip =~ /^([0-9]{1,3}\.){3}[0-9]{1,3}$/
  	mutex.synchronize do
		  rfile.seek(0, IO::SEEK_END)
		  record_max = rfile.pos / 10 - 1
	    ipstr = @ip.split(".").map {|x| x.to_i.chr}.join
	    low, high = 0, record_max
	    loop do
	      mid = (low + high) / 2       
	      rfile.seek(10 * mid)     # one record is 10 byte, seek to position
	      str = rfile.read(8)      # for range matching, we need only 8 bytes
	      if ipstr >= str[0, 4]     # is this IP not below the current range?
					if ipstr <= str[4, 4]   # is this IP not above the current range?
					  cc = rfile.read(2)
					  m << {string: ccnames[cc], module: cc}
					  break
					else
		  			low = mid + 1          # binary search: raise lower limit
					end
	      else
					high = mid - 1           # binary search: reduce upper limit
	      end
	      if low > high            # no entries left? nothing found		
					break
	      end
	    end
  	end
	end
	m
end
end
