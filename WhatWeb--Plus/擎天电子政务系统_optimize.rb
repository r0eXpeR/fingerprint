Plugin.define do
    name "擎天电子政务" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:text=>'App_Themes/1/Style.css'},
    {:text=>'homepages/content_page.aspx'},
    {:text=>'window.location = "homepages/index.aspx'},
    {:url=>'/App_Themes/theme1/images/main-panel-h3_bg.gif', :md5=>'c551ede265d39b01c446b1ab4cdd924e'},
    {:url=>'/App_Themes/theme1/images/rightContent-header_bg.gif', :md5=>'3b4a5a98f9a95d79e7f780afa2ded34c'},
    {:url=>'/App_Themes/theme1/images/ui-btn_yellow.gif', :md5=>'862df2aafc3bae92bc4c61db931706cd'}
]
end