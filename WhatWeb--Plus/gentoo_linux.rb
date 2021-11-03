Plugin.define do
    name "gentoo_linux" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Gentoo'   }
]
end