Plugin.define do
name "Jive-SBS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Jive Engage platform apparently combines the most powerful features of community software, collaboration software, social networking software & social media monitoring into the leading Social Business Software (SBS) solution."
website "http://www.jivesoftware.com/products"
dorks [
'inurl:"/forgot-username!input.jspa" intitle:"Forgot Username"',
'"powered by Jive SBS * community software"'
]
matches [
    {:module=>/jive\.rte\.defaultStyles\.push\("\/plugins\/([^\/]+)\/resources\/styles\/[^\.]+\.css"\);/},
    {:search=>"headers", :text=>'X-Jsl:'},
    {:search=>"headers[set-cookie]", :string=>/jive\.server\.info="?serverName=[^:]+:serverPort=[\d]+:contextPath=[^:]*:(localName=[^:]+:localPort=[\d]+):localAddr=/},
    {:search=>"headers[x-jal]", :regexp=>/^[\d]+$/},
    {:search=>"headers[x-jsl]", :regexp=>/^D=[\d]+ t=[\d]+$/},
    {:text=>" * This software is the proprietary information of Jive Software. Use is subject to license terms.", :url=>"/0.0.0/styles/jive-global.css"},
    {:text=>'/jive-icons.css'},
    {:text=>'<a href="#jive-body-full" class="jive-skip-nav">Skip navigation</a>'},
    {:text=>'<body class="jive-body-formpage jive-body-formpage-login" >'},
    {:text=>'class="jive-body-formpage'},
    {:text=>'jive.rte.defaultStyles'},
    {:url=>"/___sbsstatic___/logo-jive-darkgloss.jpg", :md5=>"70c76564f1c22c6d9a66854fdc721fd9"},
    {:url=>"/admin/images/jive-logo.png", :md5=>"8badf8cdaaa8e9adf2e552bc3ab77f49"},
    {:url=>"/community/admin/images/jive-logo.png", :md5=>"8badf8cdaaa8e9adf2e552bc3ab77f49"},
    {:version=>/<a class="font-color-meta" href="http:\/\/www\.jivesoftware\.com\/poweredby\/" target="_blank" alt="Jive Software Version: [\d]+">[^<]+powered by Jive SBS &reg; ([^\s]+)  community software[\s]+<\/a>[\s]+<div class="jiveVersion" style="display: none;">/},
    {:version=>/<div id="jive-loginVersion">[\s]+Jive SBS[\s]+([^\s]+)[\s]+<\/div>/},
    {:version=>/<link rel="stylesheet" href="\/([\d\.]+)\/styles\/jive-global\.css" type="text\/css" media="all" \/>/},
    {:version=>/<link rel="stylesheet" href="\/([\d\.]+)\/styles\/jive-icons\.css" type="text\/css" media="all" \/>/}
]
end
