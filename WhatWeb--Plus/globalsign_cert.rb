Plugin.define do
    name "globalsign_cert" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '//seal.globalsign.com/SiteSeal'   }
]
end