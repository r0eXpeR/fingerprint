Plugin.define do
    name "microsoft_powerpoint" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Microsoft PowerPoint ( [\d.]+)?/, :search => 'body',:offset => 1  },
    { :search => 'body', :regexp => /^PowerPoint\./  },
    {:offset => 1, :regexp => /(?:<html [^>]*xmlns:w="urn:schemas-microsoft-com:office:powerpoint"|<link rel="?Presentation-XML"? href="?[^"]+\.xml"?>|<o:PresentationFormat>[^<]+<.o:PresentationFormat>[^!]+<o:Slides>\d+<.o:Slides>(?:[^!]+<o:Version>([\d.]+)<.o:Version>)?)/  }
]
end