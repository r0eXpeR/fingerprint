Plugin.define do
name "ECShop(商派)"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Ecshop is an Open Source Ecommerce Platform"
website "http://www.ecshop.org/"
dorks [
'"powered by ECSHOP"'
]
matches [
    {:certainty=>25, :regexp=>/<title>[^<]+ - Powered by ECShop<\/title>/},
    {:search=>"headers", :text=>'ECS_ID'},
    {:text=>'/api/cron.php'},
    {:text=>'Powered by ECShop'},
    {:text=>'content="ECSHOP'},
    {:url => '/admin/ecshopfiles.md5', :md5 => '6d7db29a9ae1c60a48b9817ce6caad8b'},
    {:url => '/admin/ecshopfiles.md5', :text => 'ecshop'},
    {:url => '/admin/help/zh_cn/database.xml', :md5 => 'ea18310350220fb452ab1be869017425'},
    {:url => '/admin/help/zh_cn/database.xml', :text => 'ecshop'},
    {:url => '/admin/js/validator.js', :text => 'ecshop'},
    {:url => '/admin/templates/about_us.htm', :text => 'ecshop'},
    {:url => '/alipay.html', :text => 'ecshop'},
    {:url => '/data/cycle_image.xml', :text => 'ecshop'},
    {:url => '/data/flashdata/default/cycle_image.xml', :text => 'ecshop'},
    {:url => '/demo/js/check.js', :text => 'ecshop'},
    {:url => '/demo/templates/faq_en_us_utf-8.htm', :text => 'ecshop'},
    {:url => '/demo/zh_cn.sql', :text => 'ecshop'},
    {:url => '/favicon.ico', :md5 => '6c26aa03585abce810a6dd4396ed2aea'},
    {:url => '/install/', :text => 'ecshop'},
    {:url => '/install/data/data_en_us.sql', :text => 'ecshop'},
    {:url => '/install/data/demo/zh_cn.sql', :text => 'ecshop'},
    {:url => '/install/js/transport.js', :text => 'ecshop'},
    {:url => '/install/templates/license_en_us.htm', :text => 'ecshop'},
    {:url => '/js/transport.js', :text => 'ecshop'},
    {:url => '/mobile/templates/article.html', :text => 'ecshop'},
    {:url => '/themes/Blueocean/exchange_goods.dwt', :text => 'ecshop'},
    {:url => '/themes/Blueocean/library/comments.lbi', :text => 'ecshop'},
    {:url => '/themes/default/library/member.lbi', :text => 'ecshop'},
    {:url => '/themes/default/style.css', :text => 'ecshop'},
    {:url => '/themes/default_old/activity.dwt', :text => 'ecshop'},
    {:url => '/themes/default_old/library/comments.lbi', :text => 'ecshop'},
    {:url => '/wap/templates/article.wml', :text => 'ecshop'},
    {:url => '/widget/blog_sohu.xhtml', :text => 'ecshop'},
    {:url=>'/animated_favicon.gif', :md5=>'428b23d688f0f756d2881346d07f882f'},
    {:url=>'/favicon.ico', :md5=>'5c9c996e03cdee120657435096f65544'},
    {:url=>'/favicon.ico', :md5=>'bbc79252733e2e1a65cf0e92c62bdd7d'},
    {:url=>'/js/calendar/active-bg.gif', :md5=>'f8fb9f2b7428c94b41320aa1bc9cf601'},
    {:url=>'/widget/images/thumbnail.jpg', :md5=>'7bb50e4281fa02758834a2e9d7ba9fb9'},
    {:version=>/<meta name="Generator" content="ECSHOP v([\d\.]+)" \/>/}
]
end
