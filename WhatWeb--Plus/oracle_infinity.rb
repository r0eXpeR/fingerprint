Plugin.define do
    name "oracle_infinity" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /c\.oracleinfinity\.io/  }
]
end