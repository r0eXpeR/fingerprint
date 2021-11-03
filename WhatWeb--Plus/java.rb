Plugin.define do
name "Java"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Java allows you to play online games, chat with people around the world, calculate your mortgage interest, and view images in 3D, just to name a few. It's also integral to the intranet applications and other e-business solutions that are the foundation of corporate computing."
website "http://www.java.com/"
passive do
	m=[]
	m << { :name=>"JSESSIONID Cookie" } if @headers["set-cookie"] =~ /JSESSIONID=[^;]{0,32};[\s]?path=\//i
	m << { :version=>@headers['x-powered-by'].scan(/JSP\/([\d\.]+)/) } if @headers['x-powered-by'] =~ /JSP\/([\d\.]+)/
	m << { :string=>@headers['x-powered-by'].scan(/(Servlet\/[\d\.]+)/i) } if @headers['x-powered-by'] =~ /(Servlet\/[\d\.]+)/i
	m << { :string=>@headers['x-powered-by'].scan(/(JRE\/[\d\.\-\_]+)/) } if @headers['x-powered-by'] =~ /(JRE\/[\d\.\-\_]+)/
	m << { :version=>@headers['server'].scan(/java\/([\d\.\-\_]+)/) } if @headers['server'] =~ /java\/([\d\.\-\_]+)/
	m << { :string=>@headers['server'].scan(/(JDK [\d\.\-\_]+)/) } if @headers['server'] =~ /(JDK [\d\.\-\_]+)/
	if @headers['servlet-engine'] =~ /\((.*?); (.*?); Java (.*?); (.*?); java.vendor=[^\)]{0,50}\)/
		m << { :string=>@headers['servlet-engine'].scan(/\((.*?); (.*?); Java (.*?); (.*?); java.vendor=[^\)]{0,50}\)/)[0][0] }
		m << { :string=>@headers['servlet-engine'].scan(/\((.*?); (.*?); Java (.*?); (.*?); java.vendor=[^\)]{0,50}\)/)[0][1] }
		m << { :version=>@headers['servlet-engine'].scan(/\((.*?); (.*?); Java (.*?); (.*?); java.vendor=[^\)]{0,50}\)/)[0][2] }
		m << { :os=>@headers['servlet-engine'].scan(/\((.*?); (.*?); Java (.*?); (.*?); java.vendor=[^\)]{0,50}\)/)[0][3] }
	end
	m
end
end
