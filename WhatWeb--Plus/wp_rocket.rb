Plugin.define do
    name "wp_rocket" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'headers[x-powered-by]', :regexp => /WP Rocket(?:.([\d.]+))?/  },
    { :regexp => /<!--[^>]+WP Rocket/  }
]
end