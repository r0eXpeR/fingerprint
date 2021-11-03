Plugin.define do
    name "tpshop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/index.php/Mobile/Index/index.html'   },
    { :text => '>TPshop开源商城<'   }
]
end