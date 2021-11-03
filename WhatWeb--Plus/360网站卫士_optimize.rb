Plugin.define do
    name "360网站卫士" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:search=>"headers", :text=>'360wzb'},
    {:search=>"headers", :text=>'libs.useso.com'},
    {:text=>'360wzb'},
    {:text=>'libs.useso.com'}
]
end