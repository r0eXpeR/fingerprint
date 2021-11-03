Plugin.define do
    name "statically" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link [^>]*?href="?[a-z]*?:?..cdn\.statically\.io./  },
    { :search => 'headers[server]', :regexp => /^statically$/  }
]
end