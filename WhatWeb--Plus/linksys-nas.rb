Plugin.define do
name "Linksys-NAS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Linksys NAS web frontend"
website "http://www.linksys.com/"
matches [
{ :text=>'<html><head><title>Ethernet Network Attached Storage  Utility</title>' },
{ :text=>'	<td nowrap colspan="3"><img src="Admin_top.JPG" width="750" height="52" alt="" border="0" hspace="0" vspace="0"></td>' },
]
passive do
        m=[]
        if @body =~ /	 <td nowrap class="hst">&nbsp; &nbsp;Version:<\/td>/
                if @body =~ /	          <td nowrap class="hst">V([\d\.a-zA-Z]+)<\/td>/
                        version=@body.scan(/	          <td nowrap class="hst">V([\d\.a-zA-Z]+)<\/td>/)[0][0]
                        m << { :version=>version }
                end
        end
        m
end
end
