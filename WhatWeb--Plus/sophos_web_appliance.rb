Plugin.define do
    name "sophos_web_appliance" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Sophos Web Appliance'   },
    { :text => 'resources/images/sophos_web.ico'   },
    { :text => 'url(resources/images/en/login_swa.jpg)'   }
]
end