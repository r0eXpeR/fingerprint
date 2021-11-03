Plugin.define do
    name "profense_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'profense'  }
]
end