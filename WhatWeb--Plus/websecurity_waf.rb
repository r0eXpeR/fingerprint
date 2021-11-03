Plugin.define do
    name "websecurity_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Websecurity: WAF 1.0'   }
]
end