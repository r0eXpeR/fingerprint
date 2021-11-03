Plugin.define do
    name "boldgrid" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.wp-content.plugins.post-and-page-builder/, :search => 'body'  },
    { :regexp => /<link rel=["']stylesheet["'] [^>]+boldgrid/  },
    { :regexp => /<link rel=["']stylesheet["'] [^>]+post-and-page-builder/  },
    { :regexp => /<link[^>]+s\d+\.boldgrid\.com/  }
]
end