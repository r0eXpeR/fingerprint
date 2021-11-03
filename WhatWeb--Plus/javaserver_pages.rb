Plugin.define do
    name "javaserver_pages" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'headers[x-powered-by]', :regexp => /JSP(?:.([\d.]+))?/  }
]
end