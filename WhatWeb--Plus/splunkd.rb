Plugin.define do
    name "splunkd" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /Splunkd/  }
]
end