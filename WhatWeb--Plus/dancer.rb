Plugin.define do
    name "dancer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Perl Dancer ([\d.]+)/,:offset => 1, :search => 'headers[x-powered-by]'  },
    { :search => 'headers[server]', :regexp => /Perl Dancer ([\d.]+)/,:offset => 1  }
]
end