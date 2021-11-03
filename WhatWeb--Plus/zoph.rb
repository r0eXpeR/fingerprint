Plugin.define do
name "Zoph"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Zoph (Zoph Organizes Photos) is a web based digital image presentation and management system. In other words, a photo album. It is built with PHP, MySQL and Perl."
website "http://www.zoph.org/"
dorks [
'inurl:albums.php inurl:parent_album_id'
]
matches [
{:text=>'<li class="selected"><a href="zoph.php">home</a></li><li ><a href="albums.php">albums</a></li><li ><a href="categories.php">categories</a></li><li >' },
{:text=>"<title>Zoph - Home</title>" },
]
passive do
        m=[]
        if @body =~ /        <p class="version">/
                if @body =~ /            Zoph ([\d\.a-zA-Z\-]+)/
                        version=@body.scan(/            Zoph ([\d\.a-zA-Z\-]+)/)[0][0]
                        m << {:version=>version}
                end
        end
        if @body =~ /          <td colspan="2" align="center">/
                if @body =~ /            <font size="-1">Zoph ([\d\.a-zA-Z\-]+)<\/font>/
                        version=@body.scan(/            <font size="-1">Zoph ([\d\.a-zA-Z\-]+)<\/font>/)[0][0]
                        m << {:version=>version}
                end
        end
        m
end
end
