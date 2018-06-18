Event.destroy_all
Place.destroy_all
User.destroy_all

users =
[
  {
    first_name: 'Lucia',
    last_name: 'Espiga',
    email: 'lucia@gmail.com',
    password: '123456'

  },

  {
    first_name: 'Nathalia',
    last_name: 'Coutinho',
    email: 'nc@gmail.com',
    password: '123456'
  },

  {
    first_name: 'Darth',
    last_name: 'Vader',
    email: 'sw@gmail.com',
    password: '123456'
  }
]

users.each do |user|
  User.create!(user)
end

# t.string "category"
# t.string "title"
# t.text "address"
# t.boolean "indoor"
# t.integer "default_age"
# t.string "photo_url"

places =
[
  {
    category: 'Zoo',
    title: 'Natura Artis Magistra',
    address: 'Plantage Kerklaan 38-40, 1018 CZ Amsterdam',
    indoor: false,
    min_age: 0,
    max_age: 100,
    photo: 'https://thumbs.dreamstime.com/b/artis-zoo-amsterdam-27371162.jpg'

  },

  {
    category: 'Parks',
    title: 'Vondelpark',
    address: '1071 AA Amsterdam',
    indoor: false,
    min_age: nil,
    max_age: nil,
    photo: "https://cdn.babyccinokids.com/wp-content/uploads/2016/07/Vondelpark-paddle-pool.jpg"
  }
]

# add migration for min age and max age

places.each do |place|
  Place.create!(place)
end

 # t.string "title"
 # t.text "description"
 # t.time "start_time"
 # t.time "end_time"
 # t.date "start_date"
 # t.bigint "place_id"
 # migration min and max age for event


events = [
  {
    title: 'Poop Exhibition',
    description: "Faeces, excrement, poop – whatever you call it, we're taught not to talk about it in public from a early age. But Micropia, Amsterdam's museum dedicated to bacteria and microbes, thinks that faeces is an important part of our biology. So visitors now have the chance to take a deep dive into the brown stuff (not literally – don't worry); although, you can get up close and personal to compare different species' faeces, but that's not mandatory. You can even do a full body scan to learn more about your intestines, or have the on-site expert tell you all about faeces transplants. What a load of s**t!",
    start_time: nil,
    end_time: nil,
    start_date:  '2018-06-18',
    place: Place.first,
    photo: 'https://images.fatherly.com/wp-content/uploads/2017/07/babies-crawling-in-diapers.jpg?q=65&w=600'
  }
]

events.each do |event|
  Event.create!(event)
end

