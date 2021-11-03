Plugin.define do
    name "aurelia" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+au-target-id=[^>]\d/  },
    { :regexp => /<[^>]+aurelia-app=[^>]/  },
    { :regexp => /<[^>]+data-main=[^>]aurelia-bootstrapper/  },
    { :search => 'body', :regexp => /aurelia(?:\.min)?\.js/  }
]
end