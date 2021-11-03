Plugin.define do
    name "tianrui_lib" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/imgs/index.css', :text => 'id_FIJ_R_ImgBlk'   },
    { :url => '/imgs/s-button.jpg', :md5 => '34cfd1e1a4d645efc8ef3f716526be8b'   },
    { :url => '/tushu/imgs/index.css', :text => 'id_FIJ_R_ImgBlk'   },
    { :url => '/tushu/imgs/s-6.jpg', :md5 => 'e8e80bf5e059ca96445229b0cb8d9257'   },
    { :url => '/tushu/imgs/s-button.jpg', :md5 => '34cfd1e1a4d645efc8ef3f716526be8b'   }
]
end