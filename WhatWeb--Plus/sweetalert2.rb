Plugin.define do
    name "sweetalert2" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.npm.sweetalert2@([\d.]+)/, :search => 'body',:offset => 1  },
    { :regexp => /<link[^>]+?href="[^"]+sweetalert2(?:\.min)?\.css/  },
    { :regexp => /limonte-sweetalert2.([\d.]+).sweetalert2(?:\.all)(?:\.min)\.js/, :search => 'body'  },
    { :regexp => /sweetalert2(?:\.all)?(?:\.min)?\.js/, :search => 'body'  },
    { :regexp => /sweetalert2@([\d.]+).dist.sweetalert2(?:\.all)(?:\.min)\.js/, :search => 'body'  }
]
end