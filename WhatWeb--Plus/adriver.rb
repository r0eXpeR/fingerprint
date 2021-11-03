Plugin.define do
    name "adriver" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<embed[^>]+(?:src="https?:..mh\d?\.adriver\.ru.|flashvars="[^"]*(?:http:%3A..(?:ad|mh\d?)\.adriver\.ru.|adriver_banner))|<(?:(?:iframe|img)[^>]+src|a[^>]+href)="https?:..ad\.adriver\.ru.)/   },
    { :regexp => /(?:adriver\.core\.\d\.js|https?:..(?:content|ad|masterh\d)\.adriver\.ru.)/, :search => 'body'   },
    { :text => 'ad.adriver.ru/cgi-bin'    }
]
end