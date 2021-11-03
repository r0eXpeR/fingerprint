Plugin.define do
    name "sonarqubes" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link href=".css.sonar\.css\?v=([\d.]+)/,:offset => 1  },
    { :regexp => /<title>SonarQube<.title>/  },
    { :regexp => /^SonarQubes$/, :search => 'body'  },
    {:offset => 1, :regexp => /^.js.bundles.sonar\.js?v=([\d.]+)$/, :search => 'body'  }
]
end