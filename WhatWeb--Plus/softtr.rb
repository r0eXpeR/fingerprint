Plugin.define do
    name "softtr" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /SoftTr E-Ticaret Sitesi Yazılımı/, :search => 'body'  }
]
end