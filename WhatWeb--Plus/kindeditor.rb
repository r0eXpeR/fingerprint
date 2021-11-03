Plugin.define do
    name "kindeditor" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'K.create'   },
    { :text => 'KindEditor.ready'   },
    { :text => 'kindeditor.js'   }
]
end