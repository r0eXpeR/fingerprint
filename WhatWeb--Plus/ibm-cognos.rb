Plugin.define do
name "IBM-Cognos"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IBM Cognos - Business Intelligence and Financial Performance Management"
website "http://www-01.ibm.com/software/au/data/cognos/"
dorks [
'inurl:"cognos8/cgi-bin/cognos.cgi"'
]
matches [
    {:ghdb=>'inurl:"cognos/cgi-bin/cognos.cgi"'},
    {:ghdb=>'inurl:"cognos8/cgi-bin/cognos.cgi"'},
    {:text=>'/cgi-bin/cognos.cgi'},
    {:text=>'<meta name="Trademark" content="Licensed Material - Property of IBM Corp. IBM, the IBM logo, and Cognos are trademarks of IBM Corp., registered in many jurisdictions worldwide."/>'},
    {:text=>'<td nowrap class="copyright" id="loginLegalContainer">Licensed Material - Property of IBM Corp.<br>(C) Copyright IBM Corporation and its licensors 2005, 2009.<br>IBM, the IBM logo, and Cognos are trademarks of IBM Corp., registered in many jurisdictions worldwide.</td>'},
    {:text=>'Cognos &#26159; International Business Machines Corp'}
]
end
