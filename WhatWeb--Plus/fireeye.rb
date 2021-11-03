Plugin.define do
    name "fireeye" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :mmh3 => '-842192932'     },
    { :mmh3 => '-842192932'    },
    { :mmh3 => '105083909'     },
    { :mmh3 => '105083909'    },
    { :mmh3 => '1476335317'     },
    { :mmh3 => '1476335317'    },
    { :mmh3 => '2121539357'     },
    { :mmh3 => '2121539357'    },
    { :mmh3 => '240606739'     },
    { :mmh3 => '240606739'    },
    { :mmh3 => '95271369'     },
    { :mmh3 => '95271369'    },
    { :search => "headers", :text => 'fireeye'     }
]
end