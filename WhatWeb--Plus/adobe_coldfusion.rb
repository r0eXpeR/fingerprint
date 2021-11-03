Plugin.define do
    name "adobe_coldfusion" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- START headerTags\.cfm/  },
    { :search => 'body', :regexp => /.cfajax./  },
    { :search => 'headers[set-cookie]', :regexp => /CFTOKEN=/  }
]
end