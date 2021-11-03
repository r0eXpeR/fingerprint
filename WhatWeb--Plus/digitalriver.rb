Plugin.define do
    name "digitalriver" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.drh\.img\.digitalriver\.\w+.DRHM./  }
]
end