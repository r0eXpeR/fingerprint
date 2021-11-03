Plugin.define do
    name "dreamgallery" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/dream/css/gallery.css', :text => 'Courgette'   },
    { :url => '/dream/js/fancy/jquery.fancybox.css?v=2.1.0', :text => 'Helvetica Neue'   }
]
end