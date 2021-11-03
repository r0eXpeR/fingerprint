Plugin.define do
    name "immunify360_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'imunify360'  }
]
end