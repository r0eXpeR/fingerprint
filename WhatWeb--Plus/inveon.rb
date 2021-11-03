Plugin.define do
    name "inveon" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /Scripts._app.Inv(?:\w+)\.js\?v=(.+)$/  }
]
end