Plugin.define do
    name "intercom_articles" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a href="https:..www.intercom.com.intercom-link[^"]+solution=customer-support[^>]+>We run on Intercom/  }
]
end