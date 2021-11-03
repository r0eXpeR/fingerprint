Plugin.define do
    name "phpfusion" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /PHPFusion (.+)$/,:offset => 1, :search => 'headers[x-powered-by]'  },
    { :regexp => /Powered by <a href="[^>]+php-fusion/  },
    { :regexp => /Powered by <a href="[^>]+phpfusion/  }
]
end