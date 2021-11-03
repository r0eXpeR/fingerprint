Plugin.define do
    name "amazon_s3" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^AmazonS3$/  }
]
end