Plugin.define do
name "SDCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SDCMS - CMS - Requires ASP and Access/MsSql"
website "http://www.sdcms.cn/"
dorks [
'"Powered By SDCMS"'
]
matches [
    {:text=>'/js/sdcms.js")'},
    {:text=>'<dl id="con_three_1" class="index_photo">'},
    {:text=>'powered by sdcms'},
    {:url=>'/admin/images/icon_close.gif', :md5=>'824a335f64dbc69f3724784f491ad09f'},
    {:url=>'/admin/images/icon_close.gif', :md5=>'9c5f57eb59bebc68133b54c5f7f85602'},
    {:url=>'/install/images/logo.gif', :md5=>'17f8a25eb1757baf3d4b6522a635057c'},
    {:url=>'/install/images/logo.gif', :md5=>'d9b101506348899b5886f08a30004587'},
    {:url=>'/install/images/steptab.png', :md5=>'71de17808a4461ea3ed2332ec0f0334c'},
    {:url=>'/install/images/steptab.png', :md5=>'f54a10caf557f7ba043fc4c402c3db6a'},
    {:url=>'/lib/images/tip_layer.png', :md5=>'a5436b17d0815080d5113ffeb1253379'},
    {:url=>'/lib/images/tip_layer.png', :md5=>'c8cb16e8b61bc549ebd339858e66fa5c'},
    {:url=>'/theme/admin/images/logo_login.gif', :md5=>'72ff65356a6ccd4b9c43b6f2861b1788'},
    {:url=>'/theme/admin/images/upload.gif', :md5=>'5032b5d60b095c684fc777d7c202855e'},
    {:url=>'/theme/admin/images/upload.gif', :md5=>'d5cd0c796cd7725beacb36ebd0596190'},
    {:version=>/<br>Powered By <a href=['"]http:\/\/www\.sdcms\.cn['"] target=['"]_blank['"]>SDCMS ([^<]+)<\/a>/}
]
end
