Plugin.define do
    name "phpems考试系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="PHPEMS'   },
    { :text => 'phpems'   }
]
end