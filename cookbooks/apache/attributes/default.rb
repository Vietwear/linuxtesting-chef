default["apache"]["sites"]["ishandwivedi6"]={"port"=>80,"domain"=> "ishandwivedi6.mylabserver.com "}
default["apache"]["sites"]["ishandwivedi6b"]={"port"=>80,"domain"=> "ishandwivedi6b.mylabserver.com "}
default["apache"]["sites"]["ishandwivedi3"]={"port"=>80,"domain"=> "ishandwivedi3.mylabserver.com "}
case node["platform"]
  when "centos"
         default["apache"]["package"]="httpd"
  when "ubuntu"
         default["apache"]["package"]="apache2"
end
