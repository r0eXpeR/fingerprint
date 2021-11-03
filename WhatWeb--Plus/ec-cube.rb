Plugin.define do
    name "ec-cube" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /win_op\.js/, :search => 'body'  },
    { :search => 'body', :regexp => /eccube\.js/  }
]
end