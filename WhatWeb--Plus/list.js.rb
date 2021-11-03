Plugin.define do
    name "list.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 50, :regexp => /list\.js./, :search => 'body'  },
    {:offset => 1, :search => 'body', :regexp => /@([\d.]+).(?:.dist)?list\.(?:min\.)?js/  }
]
end