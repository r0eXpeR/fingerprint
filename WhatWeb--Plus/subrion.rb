Plugin.define do
    name "subrion" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /^Subrion/  },
    { :search => 'headers[x-powered-cms]', :regexp => /Subrion CMS/  }
]
end