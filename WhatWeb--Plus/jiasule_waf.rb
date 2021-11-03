Plugin.define do
    name "jiasule_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'jsluid='  }
]
end