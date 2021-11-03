Plugin.define do
    name "chargebee" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /js\.chargebee\.com.v([\d.]+)/  }
]
end