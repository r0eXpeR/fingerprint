Plugin.define do
    name "visual_webgui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Visual WebGUI/, :search => 'body'  },
    { :search => 'body', :regexp => /\.js\.wgx$/  }
]
end