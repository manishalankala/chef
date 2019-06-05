name "starter"
description "An example Chef role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "manish kumar alankala",
})
