Plugin.define do
    name "gerrit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:div|style) id="gerrit_/  },
    { :regexp => />Gerrit Code Review<.a>\s*"\s*\(([0-9.]+)\)/,:offset => 1  },
    { :regexp => /^gerrit_ui.gerrit_ui/, :search => 'body'  },
    { :search => 'body', :regexp => /^Gerrit Code Review$/  }
]
end