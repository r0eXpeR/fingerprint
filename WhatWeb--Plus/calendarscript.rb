Plugin.define do
name "CalendarScript"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CalendarScript is a fully customizable event-publishing solution. It gives you everything you'll need to begin, then gives you the power to redefine it to fit your specific needs."
website "http://www.calendarscript.com/"
dorks [
'"Powered by CalendarScript"',
'inurl:calendar_admin.pl intitle:"Calendar Administration : Login"',
'"Powered by CalendarScript" inurl:calendar_admin.pl intitle:"Calendar Administration : Login"',
'"CGISession: Session file" "could not be opened for writing!"'
]
matches [
    {:certainty=>75, :ghdb=>'inurl:calendar_admin.pl intitle:Calendar Administration : Login'},
    {:certainty=>75, :ghdb=>'powered by CalendarScript inurl:calendar.pl filetype:pl'},
    {:filepath=>/<FONT COLOR="red">CGISession: Session file \[([^\]]+)\] could not be opened for writing!<BR><\/FONT>/},
    {:text=>'<FONT color="#FFFFFF" SIZE="-1">Powered by <A HREF="http://www.CalendarScript.com/" STYLE="color:#FFFFFF;">CalendarScript</A></FONT>'},

    {:text=>'<HEAD><TITLE>Calendar Administration : Login</TITLE>'},
    {:text=>'Calendar Administration : Login'},
    {:text=>'Powered by <A HREF="http://www.CalendarScript.com'},
    {:text=>'Powered by <A HREF="http://www.CalendarScript.com/" CLASS="footertext" STYLE="text-decoration:underline;">CalendarScript</A>'}
]
aggressive do
	m=[]
	if @base_uri.path =~ /^[^\n]*\/(calendar_admin\.pl|calendar\.pl)/i
                random_string=rand(36**6).to_s(36)
		target_url = @base_uri.path.scan(/^([^\n]*\/)(calendar_admin\.pl|calendar\.pl)/i)[0][0].to_s+"calendar.pl?year="+random_string
		unless target_url.nil?
			target = URI.join(@base_uri.to_s,target_url).to_s
			status,url,ip,body,headers=open_target(target)
			m << { :filepath=>body.scan(/^Month '-1' out of range 0\.\.11 at ([^\n^<]+) <a href="#error">line [\d]+<\/a>\.$/).flatten } if body =~ /^Month '-1' out of range 0\.\.11 at ([^\n^<]+) <a href="#error">line [\d]+<\/a>\.$/

		end
	end
	m
end
end
