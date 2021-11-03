Plugin.define do
name "phpinfo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "This plugin detects instances of phpinfo() results and extracts the operating system, PHP version, document root and remote cpanel credentials."
dorks [
'intitle:"phpinfo()" "mysql.default_password" "Zend Scripting Language Engine"',
'inurl:"phpinfo.php" intitle:"phpinfo()" "mysql.default_password"'
]
passive do
        m=[]
        if @body =~ /<title>phpinfo\(\)<\/title>/ and (@body =~ /<h1 class="p">PHP Version [^<]{3,40}<\/h1>/ or @body =~ /<h1>PHP Version [^<]{3,40}<\/h1>/)
		m << { :version=>@body.scan(/<h1 class="p">PHP Version ([^<]{3,40})<\/h1>/).flatten.first } if @body =~ /<h1 class="p">PHP Version [^<]{3,40}<\/h1>/
		m << { :version=>@body.scan(/<h1>PHP Version ([^<]{3,40})<\/h1>/).flatten.first } if @body =~ /<h1>PHP Version [^<]{3,40}<\/h1>/
		m << { :os=>@body.scan(/<tr><td class="e">System[\s]?<\/td><td class="v">([^<]{10,256})[\s]?<\/td><\/tr>/).flatten.first } if @body =~ /<tr><td class="e">System[\s]?<\/td><td class="v">[^<]{10,256}[\s]?<\/td><\/tr>/
		m << { :module=>"cpanel" } if @body =~ /<tr><td class="e">SERVER_SOFTWARE[\s]?<\/td><td class="v">cpaneld[\s]?<\/td><\/tr>/
		m << { :module=>"cpanel", :account=>@body.scan(/<tr><td class="e">REMOTE_PASSWORD[\s]?<\/td><td class="v">([^<]{3,256})[\s]?<\/td><\/tr>/).flatten } if @body =~ /<tr><td class="e">REMOTE_PASSWORD[\s]?<\/td><td class="v">[^<]{3,256}[\s]?<\/td><\/tr>/
		m << { :module=>"cpanel", :account=>@body.scan(/<tr><td class="e">[_A-Z]{3,16}\["REMOTE_PASSWORD"\]<\/td><td class="v">([^<]{3,256})<\/td><\/tr>/).flatten } if @body =~ /<tr><td class="e">[_A-Z]{3,16}\["REMOTE_PASSWORD"\]<\/td><td class="v">[^<]{3,256}<\/td><\/tr>/
		m << { :module=>"cpanel", :account=>@body.scan(/<tr><td class="e">REMOTE_USER[\s]?<\/td><td class="v">([^<]{3,256})[\s]?<\/td><\/tr>/).flatten } if @body =~ /<tr><td class="e">REMOTE_USER[\s]?<\/td><td class="v">([^<]{3,256})[\s]?<\/td><\/tr>/
		m << { :module=>"cpanel", :account=>@body.scan(/<tr><td class="e">[_A-Z]{3,16}\["REMOTE_USER"\]<\/td><td class="v">([^<]{3,256})<\/td><\/tr>/).flatten } if @body =~ /<tr><td class="e">[_A-Z]{3,16}\["REMOTE_USER"\]<\/td><td class="v">[^<]{3,256}<\/td><\/tr>/
		m << { :module=>"cpanel", :account=>@body.scan(/<tr><td class="e">REMOTE_HOST[\s]?<\/td><td class="v">([^<]{3,256})[\s]?<\/td><\/tr>/).flatten } if @body =~ /<tr><td class="e">REMOTE_HOST[\s]?<\/td><td class="v">[^<]{3,256}[\s]?<\/td><\/tr>/
		m << { :module=>"cpanel", :account=>@body.scan(/<tr><td class="e">[_A-Z]{3,16}\["REMOTE_HOST"\]<\/td><td class="v">([^<]{3,256})<\/td><\/tr>/).flatten } if @body =~ /<tr><td class="e">[_A-Z]{3,16}\["REMOTE_HOST"\]<\/td><td class="v">[^<]{3,256}<\/td><\/tr>/
		m << { :filepath=>@body.scan(/<tr><td class="e">DOCUMENT_ROOT[\s]?<\/td><td class="v">([^<]{3,256})[\s]?<\/td><\/tr>/).flatten	 } if @body =~ /<tr><td class="e">DOCUMENT_ROOT[\s]?<\/td><td class="v">[^<]{3,256}[\s]?<\/td><\/tr>/
		m << { :filepath=>@body.scan(/<tr><td class="e">[_A-Z]{3,16}\["DOCUMENT_ROOT"\]<\/td><td class="v">([^<]{3,256})<\/td><\/tr>/).flatten } if @body =~ /<tr><td class="e">[_A-Z]{3,16}\["DOCUMENT_ROOT"\]<\/td><td class="v">[^<]{3,256}<\/td><\/tr>/
	end
	m
end
matches [
    {:text=>'Virtual Directory Support'}
]
end
