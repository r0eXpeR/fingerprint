Plugin.define do
    name "epson打印机" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'EPSON-HTTP'   },
    { :text => 'EPSON-HTTP'   }
]
end