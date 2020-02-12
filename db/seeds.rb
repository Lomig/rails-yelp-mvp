# frozen_string_literal: true

restaurants = [
  {
    name: "La Brigade",
    address: "1, rue Le Wagon",
    phone_number: "01 01 01 01",
    category: "french"
  },
  {
    name: "Léon",
    address: "2, rue Le Wagon",
    phone_number: "02 02 02 02",
    category: "belgian"
  },
  {
    name: "Le Canard Laqué",
    address: "3, rue Le Wagon",
    phone_number: "03 03 03 03",
    category: "chinese"
  },
  {
    name: "Le Weeb",
    address: "4, rue Le Wagon",
    phone_number: "04 04 04 04",
    category: "japanese"
  },
  {
    name: "Mamma Mia",
    address: "5, rue Le Wagon",
    phone_number: "05 05 05 05",
    category: "italian"
  }
]

restaurants.each { |r| Restaurant.create(r) }
