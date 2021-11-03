Plugin.define do
    name "rezdy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /rezdy\.\w+.pluginJs/, :search => 'body'  }
]
end