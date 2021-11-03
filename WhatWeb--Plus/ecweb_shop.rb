Plugin.define do
    name "ecweb_shop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/ecweb/js/common.js', :text => 'function returnTop(speed)'   }
]
end