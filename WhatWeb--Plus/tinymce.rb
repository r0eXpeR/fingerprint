Plugin.define do
    name "tinymce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.tiny_?mce(?:\.min)?\.js/  }
]
end