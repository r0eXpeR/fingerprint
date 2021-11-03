Plugin.define do
    name "apexpages" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Salesforce\.com ApexPages/, :search => 'headers[x-powered-by]'  }
]
end