Plugin.define do
    name "chromelogger" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Chromelogger-Data'   }
]
end