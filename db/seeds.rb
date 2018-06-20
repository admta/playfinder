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



# events = []

    # title: 'Poop Exhibition',
    # description: "Faeces, excrement, poop – whatever you call it, we're taught not to talk about it in public from a early age. But Micropia, Amsterdam's museum dedicated to bacteria and microbes, thinks that faeces is an important part of our biology. So visitors now have the chance to take a deep dive into the brown stuff (not literally – don't worry); although, you can get up close and personal to compare different species' faeces, but that's not mandatory. You can even do a full body scan to learn more about your intestines, or have the on-site expert tell you all about faeces transplants. What a load of s**t!",
    # start_time: nil,
    # end_time: nil,
    # start_date:  '2018-06-18',
    # place: Place.first,
    # photo: 'https://images.fatherly.com/wp-content/uploads/2017/07/babies-crawling-in-diapers.jpg?q=65&w=600'



require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'


def scrape_iamsterdam(date)
  genre = "vOyUMmkD0Ey0tqp6GBZyLg"
  day_range = "1" # 5
  take = "100" # 12
  date_filter = date.strftime("%d%m%Y")



  raw_results = `curl 'https://www.iamsterdam.com/api/AgendaApi/' \
       -H 'origin: https://www.iamsterdam.com'  \
       -H 'accept-language: nl-NL,nl;q=0.9,en-US;q=0.8,en;q=0.7'\
       -H 'x-requested-with: XMLHttpRequest' \
       -H 'cookie: __cfduid=de5570905768f01816429dd599e886de51529411166; website#lang=en; __css=335e99cb-779e-45c4-af72-90515bde20cd; enqueteModalTreshold=3; announcementModalThreshold=3' \
       -H 'pragma: no-cache' \
       -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36' \
       -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
       -H 'accept: application/json, text/javascript, */*; q=0.01' \
       -H 'cache-control: no-cache' -H 'authority: www.iamsterdam.com' \
       -H 'referer: https://www.iamsterdam.com/en/see-and-do/whats-on/search-agenda' \
       --data 'Genre=#{genre}&DateFilter=#{date_filter}&DayPart=&SearchTerm=&Neighbourhoud=&DayRange=#{day_range}&ViewMode=2&LastMinuteTickets=&PageId=136c1ef0-50fb-4783-8c0c-277059bf59c3&Skip=0&Take=#{take}&RequestPromotedItems=true'`

  results = JSON.parse(raw_results)
  agenda_items = results["AgendaItemsHtml"]
  puts "Found #{agenda_items.length} items"
  agenda_items.each do |agenda_item|
    doc = Nokogiri::HTML(agenda_item)
    agenda_link = doc.search('a').to_a.map {|a| a.attribute('href').to_s}.first

      event = Event.new
      data = open(agenda_link).read
      data_doc = Nokogiri::HTML(data)

      title = data_doc.search('a.location-info__highlight').text


      unless place = Place.where(title: title).first
        place = Place.new
        place.title = title
        place.address = data_doc.search('span.location-info__text').to_a.map(&:text).join(', ')
        place.category = data_doc.search('a.tag').to_a.map(&:text).join(', ')

        place.indoor = true
        place.min_age = 0
        place.max_age = 100
        place.photo = data_doc.search('.slider-image').to_a.first.to_s.match(/url\('(.*)'\)/)[1]
        place.save!
      end



      event.photo = data_doc.search('.slider-image').to_a.first.to_s.match(/url\('(.*)'\)/)[1]
      event.title = data_doc.search('h1').text
      event.description = data_doc.search('a.location-info__highlight').text
      info = data_doc.search('span.location-info__text', 'span.location-info__align-icon')
      link_address = data_doc.search('.btn.btn-block.btn-outlined-green').map {|a| a.attribute('href').to_s}.first


      event.address = data_doc.search('span.location-info__text').map(&:text).join(" ")

      event.price = data_doc.search('span.location-info__highlight').map(&:text).join(", ")
      day = data_doc.search('.date-day').map(&:text).first
      end_day = data_doc.search('.date-day').map(&:text).last
      start_month = data_doc.search('.date-month').map(&:text).first
      end_month = data_doc.search('.date-month').map(&:text).last
      year = Time.now.year
      event.start_date = Date.parse("#{day}-#{start_month}-#{year}")
      event.end_date = Date.parse("#{end_day}-#{end_month}-#{year}")
      event.description = data_doc.search('.btn.btn-block.btn-outlined-green').text

      event.place = place
      event.start_time = data_doc.search('date-serie').text
      #event_link = data_doc.search('btn btn-block btn-outlined-green').text
      event.save!


      # puts start_time

  end
end

31.times do |i|
  day = i.days.from_now
  scrape_iamsterdam(day)
end
# create_table "events", force: :cascade do |t|
#   t.string "title"
#   t.text "description"
#   t.time "start_time"
#   t.time "end_time"
#   t.date "start_date"
#   t.bigint "place_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "photo"
#   t.integer "min_age"
#   t.integer "max_age"
#   t.float "latitude"
#   t.float "longitude"
#   t.text "address"
#   t.index ["place_id"], name: "index_events_on_place_id"
# end

# events.each do |event|
#   Event.create!(event)
# end
