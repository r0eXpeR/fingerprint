Plugin.define do
    name "linksmart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^https?:..cdn\.linksmart\.com.linksmart_([\d.]+?)(?:\.min)?\.js/, :search => 'body'  }
]
end