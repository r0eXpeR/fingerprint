Plugin.define do
    name "webassembly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /application.wasm/, :search => 'headers[content-type]'  }
]
end