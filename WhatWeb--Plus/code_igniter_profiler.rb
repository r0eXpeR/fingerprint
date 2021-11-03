Plugin.define do
name "CodeIgniterProfiler"
authors [
  "Caleb Anderson",

]
version "0.1"
description "Find codeigniter profiler debug divs"
passive do
	m=[]
	if @body =~ /URI STRING/ and @body =~ /Total Execution Time/ and @body =~ /Controller Execution Time/ and @body =~ /Loading Time Base Classes/
		m << {:name=>'Found 4 strings'}
	end
	m
end
end
