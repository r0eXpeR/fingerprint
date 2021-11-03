Plugin.define do
    name "geotrust_cert" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '//smarticon.geotrust.com/si.js'   }
]
end