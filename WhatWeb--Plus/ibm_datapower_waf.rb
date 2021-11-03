Plugin.define do
    name "ibm_datapower_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'X-Backside-Transport'  }
]
end