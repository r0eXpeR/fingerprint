Plugin.define do
    name "userguiding" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /static\.userguiding*\.js/, :search => 'body'  }
]
end