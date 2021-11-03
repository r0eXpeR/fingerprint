Plugin.define do
    name "angularjs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:div|html)[^>]+ng-app=/  },
    { :regexp => /<ng-app/  },
    { :regexp => /\bangular.{0,32}\.js/, :search => 'body'  },
    {:offset => 1, :regexp => /angular[.-]([\d.]*\d)[^.]*\.js/, :search => 'body'  },
    {:offset => 1, :search => 'body', :regexp => /.([\d.]+(?:-?rc[.\d]*)*).angular(?:\.min)?\.js/  }
]
end