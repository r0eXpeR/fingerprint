Plugin.define do
    name "usp_sec_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'Secure Entry Server'  }
]
end