Plugin.define do
    name "grav" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /GravCMS(?:\s([\d.]+))?/  }
]
end