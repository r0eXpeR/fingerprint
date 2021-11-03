Plugin.define do
    name "opengrok" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /OpenGrok(?: v?([\d.]+))?/  }
]
end