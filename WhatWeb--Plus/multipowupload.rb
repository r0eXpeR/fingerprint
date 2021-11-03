Plugin.define do
name "MultiPowUpload"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MultiPowUpload is a Flash movie that has been created to replace the classic file uploading via Form in a browser. MultiPowUpload works in a >95% browsers and can also be placed on a web site easily. It offers lots of new possibilities that are not available during the usual upload via Form."
website "http://www.element-it.com/multiple-file-upload/flash-uploader.aspx"
dorks [
'"Visit MultiPowUpload web site for new release and support information." intitle:"Element-It MultiPowUpload"'
]
matches [
{ :text=>'Upload result:<br><pre>No files sent. Script is OK!Here is some more debugging info:Array' },
{ :version=>/		<title>Element-It MultiPowUpload ([\d\.]+) Examples<\/title>/ },
{ :version=>/		<h2>Element-<font color="#de0000">It<\/font> MultiPowUpload ([\d\.]+) Examples<\/h2>/ },
{ :text=>'		Visit <a href="http://www.element-it.com/MultiPowUpload.aspx">MultiPowUpload</a> web site for new release and support information.' },
{ :text=>'		Visit <a href="http://www.element-it.com/multiple-file-upload/flash-uploader.aspx">MultiPowUpload</a> web site for new release and support information.' },
{ :text=>'<PARAM NAME="FlashVars" VALUE="uploadUrl=FileProcessingScripts/PHP/uploadfiles.php' },
{ :text=>'<embed bgcolor=[^>]+src="ElementITMultiPowUpload.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"' },
{ :version=>/<embed bgcolor=[^>]+src="ElementITMultiPowUpload([\d\.]{1,5}).swf" quality="high" pluginspage="http:\/\/www.macromedia.com\/shockwave\/download\/index.cgi\?P1_Prod_Version=ShockwaveFlash"/ },
]
end
