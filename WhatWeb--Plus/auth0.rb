Plugin.define do
    name "auth0" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /.auth0(?:-js)?.([\d.]+).auth0(?:.min)?\.js/  },
    {:offset => 1, :regexp => /.auth0-js@([\d.]+).([a-z]+).auth0\.min\.js/, :search => 'body'  }
]
end