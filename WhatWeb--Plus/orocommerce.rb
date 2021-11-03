Plugin.define do
    name "orocommerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<script [^>]+data-requiremodule="oro./  },
    { :regexp => /<script [^>]+data-requiremodule="oroui./  },
    {:offset => 1, :regexp => /oro\.min\.js\?version=([\d.]+)/, :search => 'body'  }
]
end