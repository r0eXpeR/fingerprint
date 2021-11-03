Plugin.define do
    name "jboss_web" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /JBossWeb(?:-([\d.]+))?/,:offset => 1, :search => 'headers[x-powered-by]'  }
]
end