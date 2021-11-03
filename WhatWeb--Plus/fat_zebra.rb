Plugin.define do
    name "fat_zebra" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:iframe)[^>]+FatZebraFrame/  },
    { :regexp => /<(?:iframe|img|form)[^>]+paynow\.pmnts\.io/  },
    { :regexp => /paynow\.pmnts\.io/, :search => 'body'  }
]
end