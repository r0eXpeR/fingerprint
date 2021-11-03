Plugin.define do
    name "owncloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a href="https:..owncloud\.com" target="_blank">ownCloud Inc\.<.a><br.>Your Cloud, Your Data, Your Way!/  },
    { :search => 'body', :regexp => /app-id=543672169/  }
]
end