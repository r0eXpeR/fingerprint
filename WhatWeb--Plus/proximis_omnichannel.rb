Plugin.define do
    name "proximis_omnichannel" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<html[^>]+data-ng-app="RbsChangeApp/  },
    { :search => 'body', :regexp => /Proximis Omnichannel/  }
]
end