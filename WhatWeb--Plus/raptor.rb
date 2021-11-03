Plugin.define do
    name "raptor" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /msecnd\.net.script.raptor-([\d.]+)\.js/, :search => 'body'  },
    { :regexp => /api\.raptorsmartadvisor\.com/, :search => 'body'  }
]
end