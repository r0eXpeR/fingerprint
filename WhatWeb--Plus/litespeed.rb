Plugin.define do
name "LiteSpeed"
authors [
  "Sagar Prakash Junnarkar  <sagarjunnu@gmail.com>", # 2012-11-09" 
]
  version "1.0"
  description "LiteSpeed web server, which is able to read Apache configuration directly and used together with web hosting control panels by replacing Apache"
	passive do
		m=[]
		m << {:name=>"LiteSpeed server" } if @headers["server"] =~ /LiteSpeed/i
		m
	end
matches [
    {:search=>"headers", :text=>'Server: LiteSpeed'},
    {:search=>'headers[server]', :regexp=>/^LiteSpeed$/}
]
end
