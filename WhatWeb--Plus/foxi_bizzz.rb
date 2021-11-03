Plugin.define do
    name "foxi_bizzz" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Powered-Cms: FOXI BIZzz'   }
]
end