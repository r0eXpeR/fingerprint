Plugin.define do
    name "volusion_(v1)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /.volusion\.js(?:\?([\d.]*))?/, :search => 'body'  },
    { :regexp => /<link [^>]*href="[^"]*.vspfiles./  }
]
end