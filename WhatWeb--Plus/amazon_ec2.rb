Plugin.define do
    name "amazon_ec2" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /\(Amazon\)/  }
]
end