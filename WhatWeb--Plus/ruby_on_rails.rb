Plugin.define do
    name "ruby_on_rails" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 50, :regexp => /.assets.application-[a-z\d]{32}.\.js/, :search => 'body'  },
    { :certainty => 50, :regexp => /^authenticity_token$/, :search => 'body'  },
    { :regexp => /mod_(?:rails|rack)/, :search => 'headers[x-powered-by]'  },
    { :search => 'headers[server]', :regexp => /mod_(?:rails|rack)/  }
]
end