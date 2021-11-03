Plugin.define do
    name "moinmoin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /moin(?:_static(\d)(\d)(\d)|.+).common.js.common\.js/, :search => 'body'  }
]
end