Plugin.define do
    name "bootstrap_cdn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'cdn.bootcss.com'   },
    { :text => 'cdn.bootcss.com'   }
]
end