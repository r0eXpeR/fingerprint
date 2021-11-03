Plugin.define do
    name "yahoo!_ecommerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+store\.yahoo\.net/  },
    { :search => 'headers[x-xrds-location]', :regexp => /.ystore./  }
]
end