Plugin.define do
    name "pars_elecom_portal" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Pars Elecom Portal/, :search => 'headers[x-powered-by]'  },
    { :search => 'body', :regexp => /Pars Elecom Portal/  }
]
end