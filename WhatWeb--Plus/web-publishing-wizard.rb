Plugin.define do
name "Web-Publishing-Wizard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "If your Internet service provider (ISP) provides space for publishing personal Web pages, you can use Web Publishing Wizard (WPW) to post your personal Web pages. Normally, you must first manually configure WPW before posting your pages. To prevent you from having to manually configure WPW, ISPs can place a file named Postinfo.html in the root folder of Web servers. This file contains all the server-specific information that you would normally have to enter. The file makes posting Web pages faster and easier. - More Info: http://support.microsoft.com/kb/163838"
passive do
	m=[]
	if @body =~ /<TITLE> WEB POSTING INFORMATION <\/TITLE>/i
		if @body =~ /^<!-- postinfo.html version ([\d\.]+)>/i
			version=@body.scan(/^<!-- postinfo.html version ([\d\.]+)>/i)
			m << { :version=>version }
		end
		if @body =~ /[\s]*FPShtmlScriptUrl="([^\"]+)"/i
			accounts=@body.scan(/[\s]*FtpServerName="([^\"]+)"/i)
			m << { :account=>accounts }
		end
		if @body =~ /[\s]*FPAuthorScriptUrl="([^\"]+)"/i
			accounts=@body.scan(/[\s]*FPAuthorScriptUrl="([^\"]+)"/i)
			m << { :account=>accounts }
		end
		if @body =~ /[\s]*FPAdminScriptUrl="([^\"]+)"/i
			accounts=@body.scan(/[\s]*FPAdminScriptUrl="([^\"]+)"/i)
			m << { :account=>accounts }
		end
		if @body =~ /[\s]*XferType="([^\"]+)"/i
			 modules=@body.scan(/[\s]*XferType="([^\"]+)"/i)
			m << { :module=>modules }
		end
		if @body =~ /[\s]*FtpServerName="([^\"]+)"/i
			modules=@body.scan(/[\s]*FtpServerName="([^\"]+)"/i)
			m << { :module=>modules }
		end
	end
	m
end
end
