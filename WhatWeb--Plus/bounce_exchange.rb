Plugin.define do
    name "bounce_exchange" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /^https?:..tag\.bounceexchange\.com./  }
]
end