Plugin.define do
    name "amazon_cloudfront" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[via]', :regexp => /\(CloudFront\)$/  }
]
end