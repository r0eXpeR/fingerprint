Plugin.define do
    name "fortune3" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<link [^>]*href="[^\.]*\.\.www\.fortune3\.com\.[^"]*siterate\.rate\.css|Powered by <a [^>]*href="[^"]+fortune3\.com)/  },
    { :regexp => /cartjs\.php\?(?:.*&)?s=[^&]*myfortune3cart\.com/, :search => 'body'  }
]
end