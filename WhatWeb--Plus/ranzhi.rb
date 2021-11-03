Plugin.define do
    name "ranzhi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/sys/index.php?m=user&f=login&referer='   }
]
end