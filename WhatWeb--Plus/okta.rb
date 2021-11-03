Plugin.define do
    name "okta" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /oktacdn\.com..+.([\d.]+)./  }
]
end