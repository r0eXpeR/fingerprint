Plugin.define do
    name "phabricator" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+(?:class|id)="phabricator-/   },
    { :search => "headers", :text => 'phsid'    },
    { :search => 'body', :regexp => /.phabricator.[a-f0-9]{8}.rsrc.js.phui.[a-z-]+\.js$/   },
    { :text => 'phabricator-application-launch-container'    },
    { :text => 'res/phabricator'    }
]
end