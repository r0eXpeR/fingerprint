Plugin.define do
    name "akamai_web_application_protector" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 50, :regexp => /aksb\.min\.js/, :search => 'body'  },
    { :regexp => /ds-aksb-a\.akamaihd\.net.aksb.min.js/, :search => 'body'  }
]
end