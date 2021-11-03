Plugin.define do
    name "gitlab" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :md5 => '85c754581e1d4b628be5b7712c042224'      },
    { :md5 => '85c754581e1d4b628be5b7712c042224'    },
    { :mmh3 => '1278323681'      },
    { :mmh3 => '1278323681'    },
    { :mmh3 => '516963061'      },
    { :mmh3 => '516963061'    },
    { :regexp => /<header class="navbar navbar-fixed-top navbar-gitlab with-horizontal-nav">/    },
    { :regexp => /<meta content="https?:..[^.]+.assets.gitlab_logo-/    },
    { :regexp => /^GitLab$/, :search => 'body'    },
    { :search => "headers", :text => '_gitlab_session'      },
    { :text => 'GitLab Community Edition'      },
    { :text => 'assets/gitlab_logo'      },
    { :text => 'assets/gitlab_logo'    },
    { :text => 'gon.default_issues_tracker'      },
    { :text => 'href=\https://about.gitlab.com/'      },
    { :text => 'href=\https://about.gitlab.com/'    }
]
end