Plugin.define do
    name "zendesk_chat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /v2\.zopim\.com/  }
]
end