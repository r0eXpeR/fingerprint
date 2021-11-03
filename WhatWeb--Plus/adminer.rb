Plugin.define do
    name "adminer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Adminer<.a> <span class="version">([\d.]+)<.span>/  },
    {:offset => 1, :regexp => /onclick="bodyClick\(event\);" onload="verifyVersion\('([\d.]+)'\);">/  }
]
end