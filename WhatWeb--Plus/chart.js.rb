Plugin.define do
    name "chart.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /cdnjs\.cloudflare\.com.ajax.libs.Chart\.js.([\d.]+(?:-[^.]+)?).Chart.*\.js/, :search => 'body'  },
    { :regexp => /.Chart(?:\.bundle)?(?:\.min)?\.js/, :search => 'body', :certainty => 75  },
    {:offset => 1, :regexp => /chartjs\.org.dist.([\d.]+(?:-[^.]+)?|master|latest).Chart.*\.js/, :search => 'body'  },
    {:offset => 1, :search => 'body', :regexp => /cdn\.jsdelivr\.net.(?:npm|gh.chartjs).chart\.js@([\d.]+(?:-[^.]+)?|latest).dist.Chart.*\.js/  }
]
end