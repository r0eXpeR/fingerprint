Plugin.define do
name "ImpressPages-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ImpressPages - Web CMS built on PHP5.3 and MySQL"
website "http://www.impresspages.org/"
dorks [
'"Powered by ImpressPages CMS."',
'"This is standard ImpressPages content management system website. Use it as an example to build your own website with your content and design." intitle:"ImpressPages welcome page"'
]
matches [
    {:text=>'<!-- common functions used by various modules -->'},
    {:text=>'<h1 class="ipWidgetTitleHeading">ImpressPages CMS successfully installed</h1>'},
    {:text=>'<script type="text/javascript">if(parent.header && parent.content)parent.window.top.location=\'admin.php\';</script>'},
    {:text=>'<span id="modCommunityNewsletterError" class="error">Incorrect e-mail address</span>'},
    {:text=>'Powered by <a href="http://www.impresspages.org">ImpressPages CMS</a>'},
    {:text=>'content="ImpressPages CMS'},
    {:url=>"/favicon.ico", :md5=>"c92e16f66ec6069432c3be3d10bf5d1c"},
    {:version=>/<meta name="generator" content="ImpressPages CMS ([^\s]+) under GNU GPL license"( \/)?>/}
]
end
