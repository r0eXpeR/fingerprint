Plugin.define do
    name "yandex.direct" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<yatag class="ya-partner__ads">/  },
    { :search => 'body', :regexp => /https?:..an\.yandex\.ru./  }
]
end