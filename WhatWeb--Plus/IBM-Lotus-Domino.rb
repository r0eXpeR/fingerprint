Plugin.define do
    name "IBM-Lotus-Domino" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :md5 => '36c1002bb579edf52a472b9d2e39bb50'   },
    { :md5 => '639b61409215d770a99667b446c80ea1'   },
    { :regexp => /\/mailjump.nsf|\/domcfg.nsf|\/names.nsf|\/homepage.nsf/   }
]
end