Plugin.define do
    name "hugo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /powered by <a [^>]*href="http:..hugo\.spf13\.com/  },
    {:offset => 1, :regexp => /Hugo ([\d.]+)?/, :search => 'body'  }
]
end