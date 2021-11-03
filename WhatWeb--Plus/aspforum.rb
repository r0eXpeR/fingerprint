Plugin.define do
name "ASPForum"
authors [
  "Mateusz Golewski",

]
version "0.1"
description "Kind of ASP forum."
matches [
{:version=>/<div[^>]+id="FORUMS_FORUM_GROUP_V([\d_]+)/,  :name=>"version" },
]
end
