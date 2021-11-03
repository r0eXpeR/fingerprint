Plugin.define do
    name "pencilblue" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /PencilBlue/  }
]
end