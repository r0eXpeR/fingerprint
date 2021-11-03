Plugin.define do
    name "firebase" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /.firebasejs.([\d.]+).firebase/  },
    { :regexp => /.(?:([\d.]+).)?firebase(?:\.min)?\.js/,:offset => 1, :search => 'body'  }
]
end