Plugin.define do
name "OpenEMR"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OpenEMR is a Free and Open Source electronic health records and medical practice management application."
website "http://www.open-emr.org/"
dorks [
'inurl:"interface/login/login_frame.php" ext:php'
]
matches [
{ :certainty=>25, :ghdb=>'inurl:interface/login/login_frame.php filetype:php' },
{ :regexp=>/<body ONLOAD="javascript:top\.location\.href='interface\/login\/login_frame\.php(\?site=default)?';">/ },
{ :version=>/type="text\/css">[\s]+<\/head>[\s]+<body class="body_title">[\s]+<span class="title_bar">[^<]+ v([^\s^<]+)<\/span><br>/ },
{ :regexp=>/<!--<frame src="\/[^\/]+\/interface\/login\/filler\.php" name="Filler Bottom" scrolling="no" noresize frameborder="NO">-->/ },
{ :certainty=>75, :search=>"headers[set-cookie]", :regexp=>/OpenEMR=[^\s]+;/ },
]
end
