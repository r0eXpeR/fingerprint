Plugin.define do
    name "laterpay" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /https?:..connectormwi\.laterpay\.net.([0-9.]+)[a-zA-z-]*.live.[\w-]+\.js/, :search => 'body'  },
    { :regexp => /deobfuscateText/, :search => 'body'  }
]
end