Plugin.define do
    name "xeora" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /._bi_sps_v.+\.js/, :search => 'body'  },
    { :regexp => /<input type="hidden" name="_sys_bind_\d+" id="_sys_bind_\d+" .>/  },
    { :regexp => /XeoraCube/, :search => 'headers[x-powered-by]'  },
    { :search => 'headers[server]', :regexp => /XeoraEngine/  }
]
end