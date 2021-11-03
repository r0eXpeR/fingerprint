Plugin.define do
    name "clearbit_reveal" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /reveal\.clearbit\.com.v[(0-9)]./  }
]
end