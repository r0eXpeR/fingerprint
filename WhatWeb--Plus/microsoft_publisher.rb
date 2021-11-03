Plugin.define do
    name "microsoft_publisher" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<html [^>]*xmlns:w="urn:schemas-microsoft-com:office:publisher"|<!--[if pub]><xml>)/  },
    { :regexp => /^Publisher\./, :search => 'body'  },
    {:offset => 1, :regexp => /Microsoft Publisher( [\d.]+)?/, :search => 'body'  }
]
end