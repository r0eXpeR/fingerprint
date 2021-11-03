Plugin.define do
    name "enjie_soft" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/fo/flash.js', :text => 'flashToElem:function (elem)'   }
]
end