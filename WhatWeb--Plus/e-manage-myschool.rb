Plugin.define do
name "E-Manage-MySchool"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "My School is an essential web-based school management system with an influential impact on schools' performance. It is a deliberate and comprehensive user-friendly system that offers numerous features to students, parents, teachers, and school management. It presents a well organized and effective collaboration tool between all parties."
website "http://em.com.eg/"
dorks [
'"2004 E-Manage All Rights Reserved MySchool Version * E-Manage"'
]
matches [
    {:certainty=>25, :text=>"<input  type='password' name='Sub_Password' "},
    {:certainty=>25, :text=>'<TD  height=36  class=text align=center  height=100%>Copyrights '},
    {:certainty=>75, :text=>"<td style='cursor:pointer' HEIGHT=25z>&nbsp;<img id='vfolder_1' src='styles/"},
    {:text=>'E-Manage All Rights Reserved MySchool Version'},
    {:version=>/2004 E-Manage All Rights Reserved MySchool Version ([\d\.]+) <A href='http:\/\/e-manage\.org\/'>E-Manage<\/A>/}
]
end
