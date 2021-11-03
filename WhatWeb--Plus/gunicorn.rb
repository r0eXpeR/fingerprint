Plugin.define do
    name "gunicorn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'gunicorn'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /gunicorn(?:.([\d.]+))?/   }
]
end