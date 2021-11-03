Plugin.define do
    name "google_sign-in" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a[^>]*accounts\.google\.com.o.oauth2/  },
    { :regexp => /<iframe[^>]*accounts\.google\.com.o.oauth2/  },
    { :regexp => /<meta[^>]*google-signin-client_id/  },
    { :regexp => /<meta[^>]*google-signin-scope/  },
    { :regexp => /accounts\.google\.com.gsi.client/, :search => 'body'  },
    { :regexp => /apis\.google\.com.js.platform\.js/, :search => 'body'  }
]
end