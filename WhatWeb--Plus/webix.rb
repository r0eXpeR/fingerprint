Plugin.define do
    name "webix" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\bwebix\.js/, :search => 'body'  }
]
end