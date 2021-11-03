Plugin.define do
    name "bohoog" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/JavaScript/script.js', :text => 'myAnchors=document.all.tags("A")'   }
]
end