Plugin.define do
name "enVision"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Content Interface Corp enVision - interactive WYSIWYG layout editor"
website "http://www.contentinterface.com/index.php?option=com_content&task=view&id=14&Itemid=26"
matches [
    {:search=>"headers", :text=>'Content Interface Corp - enVision'},
    {:search=>"headers[server]", :version=>/^Content Interface Corp - enVision ([^\s]+)/}
]
end
