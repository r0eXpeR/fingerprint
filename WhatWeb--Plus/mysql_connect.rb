Plugin.define do
name "mysql_connect"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "This plugin detects instances of the mysql_connect() function in PHP source code and retrieves the mysql server hostname, username and password if it's in plain-text. Alternatively, if the connection details are stored in variables it will return the variable names with possible values for those variables returned in :string=>"
passive do
	m=[]
	hup={}; hup[:host] = []; hup[:user] = []; hup[:pass] = []
	stuff={
		:host=>/mysql_connect\([\s]*([^\r^\n^\)]*),[\s]*[^\r^\n^\)]*,[\s]*[^\r^\n^\)]*\)[^\r^\n^;]*;/,
		:user=>/mysql_connect\([\s]*[^\r^\n^\)]*,[\s]*([^\r^\n^\)]*),[\s]*[^\r^\n^\)]*\)[^\r^\n^;]*;/,
		:pass=>/mysql_connect\([\s]*[^\r^\n^\)]*,[\s]*[^\r^\n^\)]*,[\s]*([^\r^\n^\)]*)\)[^\r^\n^;]*;/
	}
	if @body =~ /mysql_connect\([^\r^\n^\)]*,[\s]*[^\r^\n^\)]*,[\s]*[^\r^\n^\)]*\)[^\r^\n^;]*;/
		stuff.each do |symbol,regex|
			@body.scan(regex).each do |line|
				hup[symbol] << line
				if line.to_s =~ /^[\s]*\$[\w_]+/
					r=Regexp.new("[\s]*"+Regexp.escape(line.to_s)+"[\s]*=[\s]*([^\r^\n]*);")
					if @body =~ r
						found=@body.scan(r)
						if found.size > 1
							hup[symbol] << found.join("+") 
						else
							hup[symbol] << found.first
						end
					end
				end
			end
		end
		unless hup[:user].empty?
			hup.values.each {|x| x.each {|y| y.first.gsub!(/^['"]|['"]$/,'') }} # remove the ' and "
			ret=(0..hup[:host].size-1).map {|x|
				[hup[:host][x],hup[:user][x],hup[:pass][x]].join(",") }.map {|x| '(' + x + ')' }.join(",")
			m << { :string=>ret }
		end
	end
	m
end
end
