Plugin.define do
    name "jira" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :mmh3 => '855273746'     },
    { :mmh3 => '855273746'    },
    { :search => "headers", :text => 'atlassian.xsrf.token'     },
    { :text => 'ams-build-number'     },
    { :text => 'com.atlassian.plugins'     },
    { :text => 'jira.webresources'     },
    { :text => 'jira.webresources'    }
]
end