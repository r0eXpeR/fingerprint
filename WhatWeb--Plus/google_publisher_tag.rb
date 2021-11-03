Plugin.define do
    name "google_publisher_tag" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /googletagservices\.com.tag.js.gpt\.js/, :search => 'body'  },
    { :search => 'body', :regexp => /securepubads\.g\.doubleclick\.net.gpt/  }
]
end