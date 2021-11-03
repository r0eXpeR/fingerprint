Plugin.define do
    name "personaclick" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /cdn\.personaclick\.com.v([\d.]+)\.js/  }
]
end