Plugin.define do
    name "chevereto" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^Chevereto ?([0-9.]+)?$/, :search => 'body'  },
    { :regexp => /Powered by <a href="https?:..chevereto\.com">/  },
    { :search => 'body', :regexp => /.chevereto\.js/  }
]
end