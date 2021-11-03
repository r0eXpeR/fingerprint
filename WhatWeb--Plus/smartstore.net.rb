Plugin.define do
    name "smartstore.net" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--Powered by SmartStore\.NET - https:..www\.smartstore\.com-->/  },
    { :regexp => /^SmartStore.NET (.+)$/,:offset => 1, :search => 'body'  }
]
end