Plugin.define do
    name "a-frame" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /.?([\d.]+)?.aframe(?:\.min)?\.js/  },
    { :regexp => /<a-scene[^<>]*>/  }
]
end