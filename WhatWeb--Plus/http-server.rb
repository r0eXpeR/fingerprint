Plugin.define do
name "HTTPServer"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.4"
description "HTTP server header string. This plugin also attempts to identify the operating system from the server header."
passive do
	m=[]
	unless @headers["server"].nil?
		m << { :os=>"Windows (32 bit)" } if @headers["server"] =~ /Win32/i
		if @headers["server"] =~ /Windows/i
			m << { :os=>"Windows Vista" } if @headers["server"] =~ /Windows Vista/i
			m << { :os=>@headers["server"].scan(/(Windows [0-9]{4})/i) } if @headers["server"] =~ /Windows [0-9]{4}/i
			m << { :os=>@headers["server"].scan(/(Windows Server [0-9]{4})/i) } if @headers["server"] =~ /Windows Server [0-9]{4}/i
			m << { :os=>"Windows XP" } if @headers["server"] =~ /Windows XP/i
			m << { :os=>"Windows" } if m.empty?
		end
		m << { :os=>"MontaVista Hard Hat Linux" } if @headers["server"] =~ /MontaVista Software Hard Hat Linux/i
		m << { :os=>"FreeBSD" } if @headers["server"] =~ /FreeBSD/i
		m << { :os=>"MacOSX" } if @headers["server"] =~ /MacOSX/i
		m << { :os=>"CentOS" } if @headers["server"] =~ /CentOS/i
		m << { :os=>"Debian Linux" } if @headers["server"] =~ /Debian/i
		m << { :os=>"Ubuntu Linux" } if @headers["server"] =~ /Ubuntu/i
		m << { :os=>"Mandrake Linux" } if @headers["server"] =~ /Mandrake/i
		m << { :os=>"PCLinuxOS" } if @headers["server"] =~ /PCLinuxOS/i
		m << { :os=>"Fedora Linux" } if @headers["server"] =~ /Fedora/i
		m << { :os=>"openSUSE" } if @headers["server"] =~ /openSUSE/i
		m << { :os=>"Arch Linux" } if @headers["server"] =~ /Arch Linux/i
		m << { :os=>"Mandriva Linux" } if @headers["server"] =~ /Mandriva Linux/i
		m << { :os=>"SUSE Linux" } if @headers["server"] =~ /Linux\/SUSE/i
		m << { :os=>"Slackware Linux" } if @headers["poweredby"] =~ /Slackware/i
		m << { :os=>"Gentoo Linux" } if @headers["x-powered-by"] =~ /Gentoo/i
		m << { :os=>"Red Hat Linux" } if @headers["server"] =~ /Red[-| ]?Hat/i
		m << { :os=>"GNU OpenSolaris" } if @headers["server"] =~ /GNU_OpenSolaris/i
		m << { :os=>"Trustix Secure Linux" } if @headers["server"] =~ /Trustix Secure Linux/i
		if m.empty? and @headers["server"] =~ /UNIX/i
			m << { :os=>"Unix" }
		end
		if m.empty? and @headers["server"] =~ /Solaris/i
			m << { :os=>"Solaris" }
		end
		if m.empty? and @headers["server"] =~ /Linux\/[^\s]+/
			m << { :os=>@headers["server"].scan(/(Linux\/[^\s]+)/) }
		elsif m.empty? and @headers["server"] =~ /Linux/
			m << { :os=>"Linux" }
		end
		m << {:name=>"server string",:string=>@headers['server'].to_s}
	end
	m
end
end
