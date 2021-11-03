Plugin.define do
    name "hcaptcha" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<style[^>]+[^<]+#cf-hcaptcha-container[^<]+<.style>/  },
    {:offset => 1, :search => 'body', :regexp => /https:..hcaptcha.com.([\d]+?).api.js/  }
]
end