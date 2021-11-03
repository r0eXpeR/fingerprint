Plugin.define do
    name "phpliteadmin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Copyright [0-9]+ phpLiteAdmin (?:https?:..www\.phpliteadmin\.org.) -->/  },
    { :regexp => /Powered by <a href='https?:..www\.phpliteadmin\.org./  },
    {:offset => 1, :regexp => /<span id='logo'>phpLiteAdmin<.span> <span id='version'>v([0-9.]+)</  }
]
end