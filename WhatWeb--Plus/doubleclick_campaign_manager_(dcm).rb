Plugin.define do
    name "doubleclick_campaign_manager_(dcm)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /2mdn\.net/, :search => 'body'  }
]
end