Plugin.define do
    name "hp_system_management" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /HP System Management/  }
]
end