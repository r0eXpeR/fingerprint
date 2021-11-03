Plugin.define do
    name "firefox-spdy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Firefox-Spdy'   }
]
end