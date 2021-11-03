Plugin.define do
    name "virtuoso" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Copyright &copy; \d{4} OpenLink Software/, :search => 'body'  },
    { :regexp => /^OpenLink Virtuoso Sparql/, :search => 'body'  },
    { :search => 'headers[server]', :regexp => /Virtuoso.?([0-9.]+)?/,:offset => 1  }
]
end