Plugin.define do
    name "yongyou_zhiyuan_a6" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/yyoa/common/js/javaSeesion.js', :text => 'function f_showallCookie'   }
]
end