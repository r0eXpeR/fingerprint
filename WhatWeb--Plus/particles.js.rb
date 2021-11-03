Plugin.define do
    name "particles.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.particles(?:\.min)?\.js/, :search => 'body'  },
    { :regexp => /<div id="particles-js">/  }
]
end