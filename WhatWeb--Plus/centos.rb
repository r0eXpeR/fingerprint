Plugin.define do
    name "centos" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /CentOS/, :search => 'headers[x-powered-by]'   },
    { :search => "headers", :text => 'centos'    },
    { :search => 'headers[server]', :regexp => /CentOS/   }
]
end