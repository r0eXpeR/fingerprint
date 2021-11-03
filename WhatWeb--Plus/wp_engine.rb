Plugin.define do
    name "wp_engine" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /WP Engine/  }
]
end