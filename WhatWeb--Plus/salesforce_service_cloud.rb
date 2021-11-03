Plugin.define do
    name "salesforce_service_cloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /service\.force\.com/  }
]
end