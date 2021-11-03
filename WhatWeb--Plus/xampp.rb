Plugin.define do
name "XAMPP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.4"
description "XAMPP is an easy to install Apache distribution containing MySQL, PHP and Perl. XAMPP is really very easy to install and to use - just download, extract and start."
website "http://www.apachefriends.org/en/xampp.html"
dorks [
'"You have successfully installed XAMPP on this system!" intitle:"XAMPP Version"'
]
matches [
    {:mmh3=>'-1275226814'},
    {:mmh3=>'-1437701105'},
    {:os=>/<title>XAMPP for ([^\r\n<]{5,8}) [\d\.a-z]{3,6}[\s]*<\/title>/},
    {:regexp=>/<title>XAMPP(?: Version ([\d\.]+))?<.title>/,:offset=>1},
    {:regexp=>/Kai Oswald Seidler/, :search=>'body', :certainty=>10   },
    {:text=>'<meta name="author" content="Kai Oswald Seidler">', :certainty=>75},
    {:text=>'<p style="margin-left: 2.6em; font-size: 1.2em; color: red;">New XAMPP security concept:</p>'},
    {:url=>"img/head-linux.jpg", :md5=>"bca095ec432fe08f90866d2e6c149590", :os=>"Linux"},
    {:url=>"img/head-macosx.gif", :md5=>"1fbd850a328026104cd7caa9e3bdaf4e", :os=>"Mac OSX"},
    {:url=>"img/head-macosx.gif", :md5=>"df859a3c31b7ed2b75d78f78889107b2", :os=>"Mac OSX"},
    {:url=>"img/head-solaris.gif", :md5=>"b18490e1a42d7293cbca353100d6d787", :os=>"Solaris"},
    {:url=>"img/head-windows.gif", :md5=>"567ebe64625942cbb8244eca918b06a0", :os=>"Windows"},
    {:version=>/<title>XAMPP Version ([^\r\n<]+)[\s]*<\/title>/}
]
passive do
	m=[]
	m << { :certainty=>25 } if @headers["location"] =~ /^http:\/\/[\d\.a-z]{1,256}\/xampp\/$/i
	m
end
aggressive do
	m=[]
	target = URI.join(@base_uri.to_s,"/xampp/phpinfo.php").to_s
	status,url,ip,body,headers=open_target(target)
	if body =~ /<title>phpinfo\(\)<\/title>/ and body =~ /XAMPP/i and (body =~ /<h1 class="p">PHP Version [^<]{3,40}<\/h1>/ or body =~ /<h1>PHP Version [^<]{3,40}<\/h1>/)
		m << { :string=>"PHP:"+body.scan(/<h1 class="p">PHP Version ([^<]{3,40})<\/h1>/).flatten.first } if body =~ /<h1 class="p">PHP Version [^<]{3,40}<\/h1>/
		m << { :string=>"PHP:"+body.scan(/<h1>PHP Version ([^<]{3,40})<\/h1>/).flatten.first } if body =~ /<h1>PHP Version [^<]{3,40}<\/h1>/
		m << { :os=>body.scan(/<tr><td class="e">System <\/td><td class="v">([^<]{4,256})[\s]?<\/td><\/tr>/).flatten.first } if body =~ /<tr><td class="e">System <\/td><td class="v">[^<]{4,256}[\s]?<\/td><\/tr>/
	end
	m
end
end
