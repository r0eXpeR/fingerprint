Plugin.define do
    name "growingio" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /assets\.growingio\.com.([\d.]+).gio\.js/, :search => 'body',:offset => 1  }
]
end