Plugin.define do
    name "sylius" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /syliusgtmenhancedecommerceplugin/  },
    { :search => 'body', :regexp => /syliusshop.script\.js/  }
]
end