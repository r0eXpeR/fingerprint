Plugin.define do
    name "vtex" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /vtex/, :search => 'headers[powered]'  },
    { :search => 'headers[server]', :regexp => /^VTEX IO$/  }
]
end