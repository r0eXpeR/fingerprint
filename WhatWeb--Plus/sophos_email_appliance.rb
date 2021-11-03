Plugin.define do
    name "sophos_email_appliance" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Sophos Email Appliance'   }
]
end