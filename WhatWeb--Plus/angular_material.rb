Plugin.define do
    name "angular_material" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /.([\d.rc-]+)?.angular-material(?:\.min)?\.js/  }
]
end