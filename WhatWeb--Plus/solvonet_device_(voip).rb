Plugin.define do
    name "solvonet_device_(voip)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Basic realm="SOLVONET'   }
]
end