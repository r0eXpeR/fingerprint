Plugin.define do
    name "advert_stream" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:ad\.advertstream\.com|adxcore\.com)/, :search => 'body'  }
]
end