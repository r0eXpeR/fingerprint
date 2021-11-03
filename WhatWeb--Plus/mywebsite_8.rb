Plugin.define do
    name "mywebsite_8" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^.*MyWebsite.*$/, :search => 'body', :certainty => 100  }
]
end