Plugin.define do
name "FormMail"
authors [
  "Andrew Horton",

]
version "0.3"
description "
FormMail is a Perl script written by Matt Wright to send mail with sendmail from the cgi-gateway. Early version didn't have a referer check. New versions could be misconfigured. Spammers are known to hunt them down (by means of cgi-scanning) and abuse them for their own evil purposes if the admin forgot to check the settings.http://www.securityfocus.com/bid/3954/discussion/"
matches [
    {:certainty=>50, :text=>'A Free Product of <a href="http://www.worldwidemart.com/scripts/">Matt\'s Script Archive,'}, #'
{:text=>"<tr><th><font size=+2>FormMail</font></th></tr>"},
    {:certainty=>75, :text=>'<title>FormMail '},
    {:ghdb=>"inurl:/FormMail.pl"},
    {:name=>"copyright",  :certainty=>75, :regexp=>/&copy; 19[\d]+ -[\d]+ Matt Wright<BR>/},
    {:text=>'/FormMail.pl'},
    {:text=>'<a href="http://www.worldwidemart.com/scripts/formmail.shtml">FormMail</a>'},
    {:text=>'This form was suplied by <A href="http://www.worldwidemart.com/scripts/formmail.shtml"'},
    {:text=>'href="http://www.worldwidemart.com/scripts/formmail.shtml'},
    {:version=>"1.9", :regexp=>/Copyright 1995 - 2001 Matt Wright<br>[\s]+Version 1.9/},
    {:version=>/FormMail<\/a>[\s]+V([\d\.]+)/i,  :name=>"version"}
]
end
