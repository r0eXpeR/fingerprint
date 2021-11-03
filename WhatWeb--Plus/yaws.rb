Plugin.define do
    name "yaws" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Yaws(?: ([\d.]+))?/  }
]
end