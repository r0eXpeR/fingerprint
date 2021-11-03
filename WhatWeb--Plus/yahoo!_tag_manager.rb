Plugin.define do
    name "yahoo!_tag_manager" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- (?:End )?Yahoo! Tag Manager -->/  },
    { :regexp => /b\.yjtag\.jp.iframe/, :search => 'body'  }
]
end