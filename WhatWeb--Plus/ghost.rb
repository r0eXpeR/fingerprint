Plugin.define do
    name "ghost" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /Ghost(?:\s([\d.]+))?/  }
]
end