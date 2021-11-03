Plugin.define do
    name "coaster_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^Coaster CMS v([\d.]+)$/, :search => 'body'  }
]
end