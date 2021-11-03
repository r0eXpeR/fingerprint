Plugin.define do
    name "microsoft_excel" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<html [^>]*xmlns:w="urn:schemas-microsoft-com:office:excel"|<!--\s*(?:START|END) OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD\s*-->|<div [^>]*x:publishsource="?Excel"?)/  },
    { :search => 'body', :regexp => /^Excel\./  },
    {:offset => 1, :search => 'body', :regexp => /Microsoft Excel( [\d.]+)?/  }
]
end