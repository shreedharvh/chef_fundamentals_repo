name "web"
description "Web Server"
run_list "role[base]", "recipe[apache]"
default_attributes({
  "pci" => {
    "in_scope" => true    
    },
  "apache" => {
    "sites" => {
      "admin" => {
        "port" => 8000
      },
      "bears" => {
        "port" => 8081
      }
    }
  }
})
