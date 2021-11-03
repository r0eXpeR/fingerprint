Plugin.define do
    name "bugzilla" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a href="https?:..www\.bugzilla\.org.docs.([0-9.]+).[^>]+>Help</,:offset => 1   },
    { :regexp => /<main id="bugzilla-body/   },
    { :regexp => /Bugzilla ?([\d.]+)?/,:offset => 1, :search => 'body'   },
    { :regexp => /href="enter_bug\.cgi">/   },
    { :search => "headers", :text => 'Bugzilla_login_request_cookie'    },
    { :text => '/cgi-bin/bugzilla/'    },
    { :text => 'Bugzilla Main Page'    },
    { :text => 'enter_bug.cgi'    },
    {:offset => 1, :regexp => /<span id="information" class="header_addl_info">version ([\d.]+)</   }
]
end