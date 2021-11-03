Plugin.define do
    name "fwp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--\s+FwP Systems/  },
    { :regexp => /FWP Shop/, :search => 'body'  }
]
end