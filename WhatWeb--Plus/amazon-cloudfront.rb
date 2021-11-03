Plugin.define do
    name "amazon-cloudfront" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Amz-Cf-Id'   }
]
end