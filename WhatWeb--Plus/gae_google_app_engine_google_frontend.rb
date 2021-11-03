Plugin.define do
    name "gae_google_app_engine_google_frontend" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: GFE'   },
    { :search => "headers", :text => 'Server: Google Frontend'   }
]
end