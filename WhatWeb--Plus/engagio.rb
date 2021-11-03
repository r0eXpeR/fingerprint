Plugin.define do
    name "engagio" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /web-analytics\.engagio\.com.api./, :search => 'body'  },
    { :search => 'body', :regexp => /web-analytics\.engagio\.com.js.ei\.js/  }
]
end