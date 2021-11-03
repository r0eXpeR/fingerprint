Plugin.define do
    name "cakephp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /CakePHP/, :search => 'body'   },
    { :search => "headers", :text => 'CAKEPHP'    }
]
end