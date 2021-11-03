Plugin.define do
    name "mywebsite_9" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.\.integration.mywebsite-editor.com.*\.js/, :search => 'body', :certainty => 100  }
]
end