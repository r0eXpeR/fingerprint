Plugin.define do
    name "tealium" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^(?:https?:)?..tags\.tiqcdn\.com./, :search => 'body'  },
    { :search => 'body', :regexp => /.tealium.utag\.js$/  }
]
end