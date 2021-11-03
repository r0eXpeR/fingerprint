Plugin.define do
    name "winstone_servlet_container" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Winstone(?:\.([\d.]+))?/, :search => 'headers[x-powered-by]'  },
    { :search => 'headers[server]', :regexp => /Winstone Servlet (?:Container|Engine) v?([\d.]+)?/,:offset => 1  }
]
end