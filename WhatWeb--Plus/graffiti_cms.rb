Plugin.define do
    name "graffiti_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.graffiti\.js/, :search => 'body'  },
    {:offset => 1, :search => 'body', :regexp => /Graffiti CMS ([^"]+)/  }
]
end