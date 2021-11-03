Plugin.define do
    name "aircall" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /^https?:..cdn\.aircall\.io./  }
]
end