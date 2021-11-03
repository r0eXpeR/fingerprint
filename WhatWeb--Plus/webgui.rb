Plugin.define do
    name "webgui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^WebGUI ([\d.]+)/, :search => 'body'  }
]
end