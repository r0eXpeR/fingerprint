Plugin.define do
name "FusionBB"
authors [
  "Claudio Salazar",

]
version "0.1"
description "FusionBB is a PHP forum."
matches [
{:version=>/FusionBB&trade; Version (\d+\.?\d+?)/,  :name=>"version" },
]
end
