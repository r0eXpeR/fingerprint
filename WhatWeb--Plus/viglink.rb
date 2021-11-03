Plugin.define do
    name "viglink" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /(?:^[^.]*..[^.]*viglink\.com.api.|vglnk\.js)/  }
]
end