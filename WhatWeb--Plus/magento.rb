Plugin.define do
name "Magento"
authors [
  "Andrew Horton",

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.2"
description "Opensource ecommerce platform written in PHP"
website "http://www.magentocommerce.com"
dorks [
"Magento is a trademark of Magento Inc. Copyright" "admin",

'intitle:"Magento Downloader" "Report All Bugs"'
]
matches [
    {:certainty=>50, :search=>'body', :regexp=>/static._requirejs/},
    {:mmh3=>'-38580010'},
    {:name=>"Meta keywords", :text=>'<meta name="keywords" content="Magento, Varien, E-commerce" />'},
    {:name=>"cookie called CUSTOMER", :search=>"headers[set-cookie]", :regexp=>/^CUSTOMER/i, :certainty=>25},
    {:name=>"cookie called frontend", :search=>"headers[set-cookie]", :regexp=>/^frontend=[0-9a-z]+/},
    {:name=>"cookie called magento", :search=>"headers[set-cookie]", :regexp=>/^magento=[0-9a-f]+/},
    {:name=>'Copyright footer', :string=>/Magento is a trademark of Magento Inc. Copyright &copy; ([0-9]{4}) Magento Inc/},
    {:offset=>1, :search=>'body', :regexp=>/skin.frontend.(?:default|(enterprise))/},
    {:regexp=>%r{<link rel="stylesheet" type="text/css" href="[^"]+/skin/frontend/[^"]+/css/boxes.css" media="all"}, :name=>"/skin/front/*/css/boxes.css"},
    {:regexp=>%r{<p>You must have JavaScript enabled in your browser to utilize the functionality of this website.</p>}, :name=>'JavaScript disabled warning'},
    {:regexp=>/<div id="noscript-notice" class="magento-notice">/, :name=>'JavaScript disabled warning'},
    {:regexp=>/<script [^>]+data-requiremodule="Magento_/},
    {:regexp=>/<script [^>]+data-requiremodule="mage./},
    {:regexp=>/<script type="text.x-magento-init">/},
    {:search=>'body', :regexp=>/js.mage/},
    {:text=>"var searchForm = new Varien.searchForm('search_mini_form', 'search', '"},
    {:text=>',mage/cookies.js" ></script>'},
    {:text=>'<script type="text/x-magento-init">'},
    {:text=>'BLANK_IMG")'},
    {:text=>'Magento, Varien, E-commerce'},
    {:text=>'images/logo.gif" alt="Magento Commerce" /></a></h1>', :name=>'default logo alt-text'},
    {:url=>'/LICENSE.txt', :md5=>'c798b72a0ea6cc6b4be23db690ec9e22'},
    {:url=>'/admin',:text=>'<title>Log into Magento Admin Page</title>'},
    {:url=>'/js/extjs/resources/css/ytheme-magento.css', :text=>'magento/tree'},
    {:url=>'/js/lib/dropdown.js', :text=>'magento'},
    {:version=>%r{<a href="http://www.magentocommerce.com/bug-tracking" id="bug_tracking_link"><strong>Report All Bugs</strong></a> \((Magento Connect Manager |Downloader )?ver. ([0-9\.]+)\)}, :offset=>1}
]
end
