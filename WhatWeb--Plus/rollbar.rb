Plugin.define do
    name "rollbar" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /rollbar\.js.([0-9.]+)/  }
]
end