Plugin.define do
    name "estore_shopserve" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cart\d+\.shopserve\.jp./, :search => 'body'  }
]
end