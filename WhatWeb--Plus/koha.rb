Plugin.define do
name "Koha"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Koha is an open source software library automation package (ILS)"
website "http://koha-community.org/"
dorks [
'intitle:"Log in to Koha" "Password"',
'inurl:cgi-bin/koha ext:pl'
]
matches [
    {:certainty=>25, :text=>'<!-- login prompt time-->'},
    {:md5=>"0c240ea1e838d2b398f48122924bf7a0", :url=>"/intranet-tmpl/prog/en/includes/favicon.ico"},
    {:md5=>"0c240ea1e838d2b398f48122924bf7a0", :url=>"/opac-tmpl/prog/en/includes/favicon.ico"},
    {:offset=>1, :search=>'body', :regexp=>/^Koha ([\d.]+)$/},
    {:regexp=>/<a href=".cgi-bin.koha./},
    {:regexp=>/<input name="koha_login_context" value="intranet" type="hidden">/},
    {:regexp=>/<input type="hidden" name="koha_login_context" value="(opac|intranet)" \/>/},
    {:regexp=>/<link rel="shortcut icon" href="\/(intranet|opac)-tmpl\/[^\/]+\/[a-z]{2}\/includes\/favicon\.ico" type="image\/x-icon" \/>/},
    {:regexp=>/<div id="help"><span class="loggedin">You are not logged in | <\/span><a href="\/cgi-bin\/koha\/help.pl" onclick="Help\(\); return false;">[ ? ]<\/a><\/div>/},
    {:text=>'<li><a href="/cgi-bin/koha/lostpassword.pl" title="Password Lost and Found">Lost your password?</a></li>'},
    {:text=>'<link rel="stylesheet" type="text/css" href="/intranet-tmpl/prog/en/lib/jquery/plugins/ui.tabs.css" />'},
    {:text=>'<link rel="stylesheet" type="text/css" href="/opac-tmpl/prog/en/lib/jquery/plugins/ui.tabs.css" />'},
    {:version=>/<meta name="generator" content="Koha ([^\s^"]+)" \/>/}
]
end
