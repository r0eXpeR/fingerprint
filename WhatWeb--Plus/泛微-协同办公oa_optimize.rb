Plugin.define do
    name "泛微-协同办公oa" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:md5=>'281348dd57383c1f214ffb8aed3a1210'},
    {:md5=>'41eca7a9245394106a09b2534d8030df'},
    {:md5=>'9b1d3f08ede38dbe699d6b2e72a8febb'},
    {:md5=>'c27547e27e1d2c7514545cd8d5988946'},
    {:search=>"headers", :text=>'testBanCookie'},
    {:serach=>'headers', :text=>'ecology_JSessionid'},
    {:text=>'/spa/portal/public/index.js'},
    {:text=>'/wui/common/css/w7OVFont.css'},
    {:text=>'/wui/index.html#/?logintype=1'},
    {:text=>'cloudstore/resource/pc/polyfill/polyfill.min.js'},
    {:text=>'wui/theme/ecology8/page/images/login/username_wev8.png'},
    {:url=>'/js/ext/resources/css/ext-all.css', :md5=>'ccb7b72900a36c6ebe41f7708edb44ce'}
]
end