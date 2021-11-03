Plugin.define do
    name "java_servlet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Servlet(?:\.([\d.]+))?/,:offset => 1, :search => 'headers[x-powered-by]'  }
]
end