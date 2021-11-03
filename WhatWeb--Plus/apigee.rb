Plugin.define do
    name "apigee" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<script>[^>]{0,50}script src=[^>].profiles.apigee/  },
    { :search => 'body', :regexp => /.profiles.apigee/  }
]
end