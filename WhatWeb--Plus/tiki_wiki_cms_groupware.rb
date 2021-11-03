Plugin.define do
    name "tiki_wiki_cms_groupware" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Tiki/, :search => 'body'  },
    { :search => 'body', :regexp => /(?:.|_)tiki/  }
]
end