Plugin.define do
    name "ibm_websphere_datapower" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Backside-Transport'   }
]
end