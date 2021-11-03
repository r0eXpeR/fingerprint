Plugin.define do
    name "blueknow" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /\.blueknow\.com/  }
]
end