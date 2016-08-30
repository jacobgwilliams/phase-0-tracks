designer_application = {
  name: "Jacob Williams",
  address: "710 W 173rd Street, NYC 10032",
  email: "2jacobwilliams@gmail.com",
  phone: 9194820038,
  fave_blue: "aqua",
  wallpaper: "Paisley",
  ombre: "Fierce"
}

p designer_application.keys
p designer_application.values

designer_application[:fave_blue] = "turquoise"
designer_application[:hired] = TRUE

p designer_application

var_key = :hired
p designer_application[var_key]

p designer_application[:fave_blue] + designer_application[:address]
p designer_application
