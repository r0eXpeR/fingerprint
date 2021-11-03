Plugin.define do
name "Microsoft-Office-XML"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This module detects instances of Microsoft Office documents saved as HTML and attempts to extract the user name, company name and office version."
website "http://en.wikipedia.org/wiki/Microsoft_Office_XML_formats"
passive do
	m=[]
	if @body =~ /<DocumentProperties xmlns="urn:schemas-microsoft-com:office:[excel|office]?">/ or @body =~ /<?mso-application progid="Excel.Sheet"?>/
		if @body =~ /<Version>([^<]+)<\/Version>/
			version=@body.scan(/<Version>([^<]+)<\/Version>/)
			m << {:version=>"Excel "+version}
		end
		if @body =~ /<Company>([^<]+)<\/Company>/
			accounts=@body.scan(/<Company>([^<]+)<\/Company>/)[0][0]
			m << {:account=>"Company:"+accounts}
		end
		if @body =~ /<Author>([^<]+)<\/Author>/
			accounts=@body.scan(/<Author>([^<]+)<\/Author>/)[0][0]
			m << {:account=>accounts}
		end
		if @body =~ /<LastAuthor>([^<]+)<\/LastAuthor>/
			accounts=@body.scan(/<LastAuthor>([^<]+)<\/LastAuthor>/)[0][0]
			m << {:account=>accounts}
		end
	end
	if @body =~ /<o:DocumentProperties>/ or @body =~ /<?mso-application progid="Word.Document"?>/
		if @body =~ /<o:Version>([^<]+)<\/o:Version>/
			version=@body.scan(/<o:Version>([^<]+)<\/o:Version>/)[0][0]
			m << {:version=>"Word "+version}
		end
		if @body =~ /<o:Company>([^<]+)<\/o:Company>/
			accounts=@body.scan(/<o:Company>([^<]+)<\/o:Company>/)[0][0]
			m << {:account=>"Company:"+accounts}
		end
		if @body =~ /<o:Author>([^<]+)<\/o:Author>/
			accounts=@body.scan(/<o:Author>([^<]+)<\/o:Author>/)[0][0]
			m << {:account=>accounts}
		end
		if @body =~ /<o:LastAuthor>([^<]+)<\/o:LastAuthor>/
			accounts=@body.scan(/<o:LastAuthor>([^<]+)<\/o:LastAuthor>/)[0][0]
			m << {:account=>accounts}
		end
	end
	if @body =~ /<cp:coreProperties/
		if @body =~ /<dc:creator>([^<]+)<\/creator>/
			accounts=@body.scan(/<dc:creator>([^<]+)<\/creator>/)[0][0]
			m << {:account=>accounts}
		end
		if @body =~ /<dc:lastModifiedBy>([^<]+)<\/creator>/
			accounts=@body.scan(/<dc:lastModifiedBy>([^<]+)<\/creator>/)[0][0]
			m << {:account=>accounts}
		end
		if @body =~ /<Company>([^<]+)<\/Company>/
			accounts=@body.scan(/<Company>([^<]+)<\/Company>/)[0][0]
			m << {:account=>"Company:"+accounts}
		end
		if @body =~ /<AppVersion>([^<]+)<\/AppVersion>/
			version=@body.scan(/<AppVersion>([^<]+)<\/AppVersion>/)[0][0]
			m << {:version=>version}
		end
	end
	m
end
end
