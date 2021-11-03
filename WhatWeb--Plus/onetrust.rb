Plugin.define do
    name "onetrust" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.cookielaw\.org/, :search => 'body'  },
    { :regexp => /optanon\.blob\.core\.windows\.net/, :search => 'body'  },
    { :regexp => /otSDKStub\.js/, :search => 'body'  }
]
end