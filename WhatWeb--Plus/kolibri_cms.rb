Plugin.define do
    name "kolibri_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Kolibri/, :search => 'body'  },
    { :regexp => /Kolibri/, :search => 'headers[x-powered-by]'  }
]
end