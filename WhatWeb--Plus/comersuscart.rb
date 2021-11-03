Plugin.define do
    name "comersuscart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'CONTENT="Powered by Comersus'   },
    { :text => 'href="comersus_showCart.asp'   }
]
end