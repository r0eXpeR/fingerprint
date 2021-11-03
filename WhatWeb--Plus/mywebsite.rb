Plugin.define do
    name "mywebsite" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.\.integration\.mywebsite-editor\.com.*\.js/, :search => 'body'  },
    { :regexp => /^.*MyWebsite.*$/, :search => 'body'  }
]
end