Plugin.define do
name "Cimplicity-WebView"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "CIMPLICITY is a client/server based visualization and control solution that helps you visualize your operations, perform supervisory automation and deliver reliable information to higher-level analytic applications."
website "http://www.ge-ip.com/products/2819"
matches [
    {:md5=>"be47085f5ac23b78c5b6a952ea0947b3", :url=>"/ProwlerClient.jar"},
    {:regexp=>/^CIMPLICITY-HttpSvr/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'CIMPLICITY-HttpSvr'},
    {:text=>'<APPLET NAME="ProwlerClientAppletObject" ARCHIVE="/ProwlerClient.jar" '},
    {:text=>'<APPLET NAME="ProwlerClientAppletObject" ARCHIVE="/ProwlerClient.jar'},
    {:url=>"/index.html", :text=>"<TITLE>CIMPLICITY WebView</TITLE>"},
    {:version=>/^CIMPLICITY-HttpSvr\/([\d\.]+)/, :search=>"headers[server]"}
]
passive do
	m=[]
	if @headers["server"] =~ /^CIMPLICITY-HttpSvr\/([\d\.]+)/
		m << { :status=>302, :string=>"Hostname: "+@headers["location"].scan(/^http:\/\/([^\/]+)\/index.html$/).flatten.first.to_s } if @headers["location"] =~ /^http:\/\/([^\/]+)\/index.html$/
		m << { :string=>@body.scan(/<PARAM NAME="screen" VALUE="([^\"]+)">/).flatten } if @body =~ /<PARAM NAME="screen" VALUE="([^\"]+)">/
	end
	m
end
aggressive do
	m=[]
	if @headers["server"] =~ /^CIMPLICITY-HttpSvr\/([\d\.]+)/
		target = URI.join(@base_uri.to_s,"/index.html").to_s
		status,url,ip,body,headers=open_target(target)
		m << { :string=>body.scan(/<PARAM NAME="screen" VALUE="([^\"]+)">/).flatten } if body =~ /<PARAM NAME="screen" VALUE="([^\"]+)">/
	end
	m
end
end
