Plugin.define do
    name "google_api" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'ajax.googleapis.com/'   },
    { :text => 'www.google.com/jsapi'   }
]
end