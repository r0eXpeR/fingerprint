Plugin.define do
    name "epson_printer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'EPSON-HTTP'   },
    { :text => 'EpsonNet WebAssist'   },
    { :text => 'EpsonNet config'   }
]
end