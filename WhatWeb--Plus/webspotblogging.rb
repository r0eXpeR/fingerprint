Plugin.define do
name "WebspotBlogging"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Old blog"
website "http://www.webspot.co.uk/"
passive do
        m=[]
        if @body =~ /Powered By <a href='http:\/\/www.webspot.co.uk\/' target='_blank'>WebspotBlogging<\/a> v[\d\.]+<BR>/
                version=@body.scan(/Powered By <a href='http:\/\/www.webspot.co.uk\/' target='_blank'>WebspotBlogging<\/a> v([\d\.]+)<BR>/)[0][0]
                m << {:version=>version}
        end
        m
end
end
