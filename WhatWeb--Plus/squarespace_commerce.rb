Plugin.define do
    name "squarespace_commerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /assets\.squarespace\.\w+.universal.scripts-compressed.commerce-\w+-min\.[\w+\-]+\.js/, :search => 'body'  }
]
end