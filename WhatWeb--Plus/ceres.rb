Plugin.define do
    name "ceres" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-plenty-shop]', :regexp => /Ceres/  }
]
end