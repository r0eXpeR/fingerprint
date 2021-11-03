Plugin.define do
    name "施耐德schneider设备" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Schneider-WEB'   }
]
end