Plugin.define do
    name "google_hosted_libraries" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ajax.googleapis.com/ajax/libs'   },
    { :text => 'ajax.googleapis.com/ajax/libs'   }
]
end