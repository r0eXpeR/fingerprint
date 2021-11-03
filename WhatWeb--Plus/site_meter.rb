Plugin.define do
    name "site_meter" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /sitemeter\.com.js.counter\.js\?site=/  }
]
end