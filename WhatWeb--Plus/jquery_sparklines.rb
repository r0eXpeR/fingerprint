Plugin.define do
    name "jquery_sparklines" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /jquery\.sparkline.*\.js/  }
]
end