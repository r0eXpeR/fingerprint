Plugin.define do
    name "flickity" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.flickity(?:\.pkgd)?(?:\.min)?\.js/  }
]
end