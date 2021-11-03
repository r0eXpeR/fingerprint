Plugin.define do
    name "awesomplete" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.awesomplete\.js(?:$|\?)/, :search => 'body'  },
    { :regexp => /<link[^>]+href="[^>]*awesomplete(?:\.min)?\.css/  }
]
end