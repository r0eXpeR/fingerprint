Plugin.define do
    name "livewire" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]{1,512}\bwire:/  },
    { :search => 'body', :regexp => /livewire(?:\.min)?\.js/  }
]
end