Plugin.define do
    name "jsecoin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^(?:https):?..load\.jsecoin\.com.load./, :search => 'body'  }
]
end