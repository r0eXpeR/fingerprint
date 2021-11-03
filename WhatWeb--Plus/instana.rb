Plugin.define do
    name "instana" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /eum\.instana\.io/, :search => 'body'  }
]
end