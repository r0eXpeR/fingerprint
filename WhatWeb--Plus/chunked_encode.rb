Plugin.define do
    name "chunked_encode" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Transfer-Encoding: chunked'   }
]
end