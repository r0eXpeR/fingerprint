Plugin.define do
    name "asciidoc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^AsciiDoc ([\d.]+)/, :search => 'body'  }
]
end