Plugin.define do
    name "iubenda" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /iubenda\.com.cookie-solution.confs.js./, :search => 'body'  }
]
end