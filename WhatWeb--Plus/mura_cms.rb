Plugin.define do
    name "mura_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Mura CMS ([\d]+)/,:offset => 1, :search => 'body'  }
]
end