Plugin.define do
name "Object"
authors [
  "Andrew Horton",

]
version "0.1"
description "HTML object tag. This can be audio, video, Flash, ActiveX, Python, etc. More info: http://www.w3schools.com/tags/tag_object.asp"
matches [
{:regexp=>/<object/i},
{:module=>/<object [^>]*classid\s*=\s*['"]([^"']+)['"]/i, :offset=>0, :name=>"classid" },
{:module=>/<object [^>]*classid\s*=\s*([^\s>'"]+)/i, :offset=>0, :name=>"classid" },
{:string=>/<object [^>]*(codebase|codetype|type)\s*=\s*['"]([^"']+)['"]/i, :offset=>1 },
{:string=>/<object [^>]*(codebase|codetype|type)\s*=\s*([^\s>'"]+)/i, :offset=>1 },
]
end
