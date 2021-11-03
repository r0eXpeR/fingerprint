Plugin.define do
    name "adobe_experience_manager" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.etc.designs./, :search => 'body'  },
    { :regexp => /.etc\.clientlibs./, :search => 'body'  },
    { :regexp => /<div class="[^"]*aem-Grid/  },
    { :regexp => /<div class="[^"]*parbase/  },
    { :regexp => /<div[^>]+data-component-path="[^"+]jcr:/  },
    { :search => 'body', :regexp => /.etc.clientlibs./  }
]
end