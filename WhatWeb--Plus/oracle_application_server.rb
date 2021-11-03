Plugin.define do
    name "oracle_application_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Oracle[- ]Application[- ]Server(?: Containers for J2EE)?(?:[- ](\d[\da-z..]+))?/  }
]
end