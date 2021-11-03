Plugin.define do
    name "cnzz" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..[^..]+\.cnzz\.com.(?:z_stat.php|core)\?/, :search => 'body'   },
    { :text => 'cnzz.com/stat.php?id='    }
]
end