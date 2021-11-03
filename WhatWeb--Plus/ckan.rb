Plugin.define do
    name "ckan" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<http:..ckan\.org.>; rel=shortlink/, :search => 'headers[link]'  },
    { :regexp => /X-CKAN-API-KEY/, :search => 'headers[access-control-allow-headers]'  },
    {:offset => 1, :search => 'body', :regexp => /^ckan ?([0-9.]+)$/  }
]
end