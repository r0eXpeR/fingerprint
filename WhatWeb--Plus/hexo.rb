Plugin.define do
    name "hexo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Hexo(?: v?([\d.]+))?/, :search => 'body'  },
    { :regexp => /Powered by <a href="https?:..hexo\.io.?"[^>]*>Hexo<./  }
]
end