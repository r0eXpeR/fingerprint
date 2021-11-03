Plugin.define do
    name "disqus" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div[^>]+id="disqus_thread/   },
    { :search => 'body', :regexp => /disqus_url/   },
    { :text => 'disqus_thread'    }
]
end