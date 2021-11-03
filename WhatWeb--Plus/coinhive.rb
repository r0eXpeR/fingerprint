Plugin.define do
    name "coinhive" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /coinhive\.com.lib/, :search => 'body'  },
    {:offset => 1, :search => 'body', :regexp => /\.(?:coinhive|(authedmine))(?:\.min)?\.js/  }
]
end