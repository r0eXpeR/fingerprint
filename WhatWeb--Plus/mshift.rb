Plugin.define do
name "MShift"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MShift - Comprehensive Mobile Banking - Over 200 US Financial Institutions are MShift clients. With a base comprised of the largest banks in the world, as well as regional credit unions and local banks, MShift is the standard by which Mobile Banking is measured."
website "http://www.mshift.com/"
dorks [
'inurl:msestks'
]
matches [
{ :text=>'<BODY><b>MShift, Inc</b><br>Relevant Mobile Solutions<br>http://www.mshift.com' },
{ :text=>'<td align="center"><font size="-1" color="#FFFFFF">Powered by MShift&reg;</font></td></tr>' },
{ :text=>'<td align="center"><font size="-1" color=#FFFFFF>Powered by MShift&reg;</font></td></tr>' },
{ :text=>'<div class="poweredBy">Powered by MShift &reg;</div>' },
]
passive do
	m=[]
	m << { :certainty=>25, :name=>"dcttype cookie" } if @headers["set-cookie"] =~ /^dcttype=1$/
	m
end
end
