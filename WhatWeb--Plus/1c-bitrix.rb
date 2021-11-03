Plugin.define do
    name "1c-bitrix" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<link[^>]+components.bitrix|(?:src|href)=".bitrix.(?:js|templates))/  },
    { :regexp => /1c-bitrix/, :search => 'body'  },
    { :search => 'headers[set-cookie]', :regexp => /BITRIX_/  },
    { :search => 'headers[x-powered-cms]', :regexp => /Bitrix Site Manager/  }
]
end