Plugin.define do
name "Infomaster"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "InfoMaster ePlanning software - asset management and property development application tracking and planning"
website "http://www.infomaster.com.au/"
dorks [
'"Powered by Infomaster"',
'(inurl:"modules/applicationmaster/default.aspx"|inurl:"modules/propertymaster/default.aspx")'
]
matches [
    {:regexp=>/class="ackn">[\s]*Powered by InfoMaster/},
    {:string=>/<form name="frm(MasterView|MasterPlan)" method="post" action="default\.aspx/},
    {:text=>'/MasterView.css'},
    {:text=>'/MasterView/MPLeftNavStyle/PanelBar.MPIFMA.css'},
    {:text=>'/masterView.js'},
    {:text=>'<link href="../../App_Themes/MasterView/MPLeftNavStyle/PanelBar.MPIFMA.css" type="text/css" rel="stylesheet" />', :string=>"MasterView"},
    {:text=>'<link href="../../MasterView.css" type="text/css" rel="stylesheet"', :string=>"MasterView"},
    {:text=>'<script language="javascript" src="../../common/masterView.js"></script>', :string=>"MasterView"},
    {:version=>/<head><title>[\s]+MasterView ([\d\.]+) Property Master[\s]+<\/title>/, :string=>"MasterView"}
]
end
