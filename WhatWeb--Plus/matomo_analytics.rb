Plugin.define do
    name "matomo_analytics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /app-id=org\.piwik\.mobile2/, :search => 'body'  },
    { :search => 'body', :regexp => /(?:Matomo|Piwik) - Open Source Web Analytics/  },
    { :search => 'body', :regexp => /app-id=737216887/  },
    { :search => 'body', :regexp => /piwik\.js|piwik\.php/  }
]
end