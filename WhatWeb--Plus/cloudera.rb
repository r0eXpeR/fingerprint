Plugin.define do
    name "cloudera" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /cloudera/  }
]
end