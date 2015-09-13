name  "dev"
description "This is development environments"
cookbook "apache","= 0.1.5"
override_attributes({
       "author"=>{ 
        "name"=> "My new author name"
 }

   })
#default["author"]["name"]="My author name "

