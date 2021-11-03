Plugin.define do
    name "octopress" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.octopress\.js/, :search => 'body'  },
    { :regexp => /Octopress/, :search => 'body'  },
    { :regexp => /Powered by <a href="http:..octopress\.org">/  }
]
end