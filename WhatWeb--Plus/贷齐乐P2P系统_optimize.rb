Plugin.define do
    name "贷齐乐系统" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:text=>'/js/jPackageCss/jPackage.css'},
    {:text=>'src="/js/jPackage'},
    {:url=>'/modules/member/index_ruizhict.php', :md5=>'d71aec693763f4e298e9724f3cda0afe'},
    {:url=>'/plugins/avatar/crossdomain.xml', :md5=>'29c98250b07e4079f3906de984a27ef6'},
    {:url=>'/plugins/avatar/images/locale.xml', :md5=>'3108ff46cd72be64fa798c3c053c0ac1'},
    {:url=>'/themes/ruizhict/images/bbs_bg_elc.png', :md5=>'3c0c9d719e13298650f868220176a2eb'},
    {:url=>'/themes/ruizhict/images/user_menu_1.jpg', :md5=>'a6bd5d394f15cf2804b6a98528c74a2f'},
    {:url=>'/themes/ruizhict/js/base.js', :md5=>'18a4f1f33fdb6bb9d8284dd37a0cf9bd'}
]
end