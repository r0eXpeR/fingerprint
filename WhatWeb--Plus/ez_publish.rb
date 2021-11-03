Plugin.define do
    name "ez_publish" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^eZ Publish/, :search => 'headers[x-powered-by]'  },
    { :regexp => /eZ Publish/, :search => 'body'  }
]
end