Plugin.define do
    name "freshchat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /wchat\.freshchat\.com.js.widget\.js/, :search => 'body'  }
]
end