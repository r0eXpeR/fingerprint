Plugin.define do
    name "moon" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.moon(?:\.min)?\.js$/  }
]
end