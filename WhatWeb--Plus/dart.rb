Plugin.define do
    name "dart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.(?:<script)[^>]+(?:type="application.dart")./  },
    { :regexp => /.(?:\.)?(?:dart)(?:\.js)?./, :search => 'body'  },
    { :regexp => /packages.browser.dart\.js/, :search => 'body'  }
]
end