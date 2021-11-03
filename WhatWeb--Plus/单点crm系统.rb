Plugin.define do
    name "单点crm系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'URL=general/ERP/LOGIN/'   },
    { :text => 'content="单点CRM系统'   },
    { :text => '客户关系管理-CRM'   }
]
end