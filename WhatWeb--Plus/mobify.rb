Plugin.define do
    name "mobify" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..a\.mobify\.com./, :search => 'body'  },
    { :regexp => /Mobify/, :search => 'headers[x-powered-by]'  },
    { :search => 'body', :regexp => /..cdn\.mobify\.com./  }
]
end