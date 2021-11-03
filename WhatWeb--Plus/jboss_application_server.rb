Plugin.define do
    name "jboss_application_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /JBoss(?:-([\d.]+))?/,:offset => 1, :search => 'headers[x-powered-by]'  }
]
end