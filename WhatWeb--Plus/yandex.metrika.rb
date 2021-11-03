Plugin.define do
    name "yandex.metrika" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.jsdelivr\.net.npm.yandex\-metrica\-watch.watch\.js/, :search => 'body'  },
    { :regexp => /mc\.yandex\.ru.metrika.(?:tag|watch)\.js/, :search => 'body'  }
]
end