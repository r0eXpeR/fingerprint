Plugin.define do
    name "volusion" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /.volusion\.js(?:\?([\d.]*))?/, :search => 'body'  },
    { :regexp => /<body [^>]*data-vn-page-name/  },
    { :regexp => /<link [^>]*href="[^"]*.vspfiles./  }
]
end