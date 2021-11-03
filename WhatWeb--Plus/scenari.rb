Plugin.define do
    name "scenari" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Roadiz ?(?:master|develop)? v?[0-9\.]+ - Scenari v?([0-9\.]+)/,:offset => 1, :search => 'body'  }
]
end