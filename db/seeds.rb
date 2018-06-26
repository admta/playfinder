ListEvent.destroy_all
ListPlace.destroy_all
Event.destroy_all
Place.destroy_all
BucketList.destroy_all
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
  },

  {
    first_name: 'Play',
    last_name: 'Finder',
    email: 'Playfinderapp@gmail.com',
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
            category: 'Playground',
            title: 'UJ Klaren speeltuin',
            address: 'Tweede Weteringplantsoen 10-X, 1017 ZD Amsterdam',
            description: 'The oldest playground in the Netherlands at the Weteringsplantsoen in the heart of Amsterdam. A place where children meet and can play carefree. The playground has the  mission to be a nice playground for children between 2 and 12 and a nice place to stay for those children and their parents. You have access to toilet during the week, and the playground is open mostly everyday.',
            indoor: false,
            min_age: 2,
            max_age: 10,
            link:  "https://www.ujklaren.nl/",
            photo: 'https://s3-media4.fl.yelpcdn.com/bphoto/qeYGN5DqP3wkbdTCgmKMkA/o.jpg'
        },

        {
            category: 'Playground',
            title: 'De Ruige Speelplek',
            address: 'Willem de Zwijgerlaan 173, 1056 JM Amsterdam',
            description: 'A rugged playground. Sling ropes, shelters, pirate ships, tunnels, mountains of sand. Children can spend their energy here.',
            indoor: false,
            min_age: 2,
            max_age: 15,
            link:  nil,
            photo: 'https://farm5.static.flickr.com/4063/4638506440_61d7b62977_b.jpg'
        },

        {
            category: 'Playground',
            title: 'Het Woeste Westen',
            address: 'Overbrakerpad 3, Westerpark, 1014 AZ Amsterdam',
            description: 'Would you like to play with sand and water, go on a raft, catch water animals, play in a flowing stream, stroll through reeds and bushes or simply enjoy nature? It can all be here! Children up to and including 13 can play for free with us. The area is always accessible. Playground managers are present every day. There is then the possibility to buy coffee, tea, juices and snacks in our building and to be able to shelter in bad weather. There is a terrace for parents. Het Woeste Westen is also an ideal place for birthday parties , nature and environmental education , BSO (out-of-school care) and school trips .',
            indoor: false,
            min_age: 2,
            max_age: 18,
            link:  'https://www.woestewesten.nl/',
            photo: 'https://www.woestewesten.nl/img_fotorotate/mei2010%20135.jpg'
        },

        {
            category: 'Playground',
            title: 'Playground Henrick de Keijser',
            address: 'Overbrakerpad 3, Westerpark, 1014 AZ Amsterdam',
            description: 'The Krajicek Playground consists of a large multicourt of asphalt where there is enough space to play tennis, football and basketball together. There is also a mini tennis court and there are of course many separate play and play facilities in the play area. There is daily management of Combiwel who also provides the sports and games lending. The management also carries out the weekly activities. There is also space for small children, toilets and first aid kits in the administration.',
            indoor: false,
            min_age: 2,
            max_age: 18,
            link:  'nil',
            photo: 'https://krajicek.nl/wp-content/uploads/2015/06/Henrick_de_Keijser.jpg'
        },

        {
            category: 'Farm',
            title: 'Geitenboerderij Ridammerhoeve, Goat Farm',
            address: 'Nieuwe Meerlaan 4, 1182 DB Amstelveen',
            description: 'The organic Goatfarm Ridammerhoeve is situated in the middle of the Amsterdam Forest. A farm where visitors can meet with the goats, lambs, chickens, pigs, cows and horses. Charming, but above all there is a lot to do and to discover! Enjoy a biological lunch, and pancakes with us!',
            indoor: false,
            min_age: 2,
            max_age: 18,
            link:  'http://www.geitenboerderij.nl/en/',
            photo: 'https://media.iamsterdam.com/ndtrc/Images/20101119/9a25917e-95a3-40b1-9758-c15e8f3c7f96.jpg'
        },

        {
            category: 'Playground with Cafés',
            title: 'Robbeburg International Playgroup',
            address: 'Jekerstraat 84, 1078 MG Amsterdam',
            description: 'This is non-profit playgroup run by volunteers. It is a friendly place to escape to with your little one and meet up with other international parents.',
            indoor: true,
            min_age: 0,
            max_age: 4,
            link:  "http://robbeburg.com",
            photo: 'http://robbeburg.com/wp-content/uploads/2012/04/houses.jpg'

        },
        {
            category: 'Playground with Cafés',
            title: ' Octopus International Playgroup',
            address: 'Arent Janszoon Ernststraat 132, 1082 LP Amsterdam',
            description: 'Just opposite the Gelderlandplein shopping centre in Buitenvelder, this is again a parent-run playgroup for international parents. The beautiful Amstel Park is a walking distance from the playgroup if you choose to plan a whole day out.',
            indoor: true,
            min_age: 0,
            max_age: 4,
            link: "https://www.facebook.com/groups/Octopusplaygroup/?fref=ts",
            photo: 'https://amsterdam-mamas.nl/sites/default/files/styles/story_page_big_image/public/Ball%20pool%203%20kids.jpeg?itok=a9p7JYWY'

        },

        {
            category: 'Zoo',
            title: 'Natura Artis Magistra',
            address: 'Plantage Kerklaan 38-40, 1018 CZ Amsterdam',
            indoor: false,
            min_age: 2,
            max_age: 100,
            photo: 'https://thumbs.dreamstime.com/b/artis-zoo-amsterdam-27371162.jpg'

        },

        {
            category: 'Park',
            title: 'Vondelpark',
            address: '1071 AA Amsterdam',
            description: 'The park to end all parks! This place is just awesome, for children of all ages (and adults too). Beautiful parkland, wonderful wooden play equipment, rope bridges, zip wires, an open-air theatre, huge paddling pool, skate hire, a Picasso sculpture and a cracking café, too. Grab coffee and pancakes from the Groot Melkhuis, kick off your shoes and let your kids run wild. ',
            indoor: false,
            min_age: 5,
            max_age: 18,
            link: "http://www.hetvondelpark.net",
            photo: 'https://cdn.babyccinokids.com/wp-content/uploads/2016/07/Vondelpark-paddle-pool.jpg'
        },

        {
            category: 'Park',
            title: 'Vereniging Kippen',
            address: 'Madelievenstraat 2d, 1015 NV Amsterdam ',
            description: 'Also known as the Chicken and Rabbit Playground, this children’s play area in the Jordaan district (not far from Anne Frank’s House) is a bit of a locals’ secret. Small, but quieter than the touristy parks, this bijou playspace has chickens, rabbits, an array of ride-on toys, a sandpit and even a table-tennis table (take your own bat and balls). You might be lucky enough to get yourself some fresh eggs too.',
            indoor: false,
            min_age: 8,
            max_age: 18,
            link:  "http://www.konippen.nl",
            photo: "http://www.konippen.nl/img/3luik.JPG"
        },

        {
            category: 'Park',
            title: 'Amstelpark',
            address: 'Arent Jan Ernststraat 1, Amsterdam',
            description: 'A little further away, on the outskirts of the city, this beautiful park offers everything from bumper cars to a petting zoo (just don’t get those two mixed up!). The playground is enormous, the gardens are beautiful, there are two galleries for the culturally-minded and a fantastic hedge labyrinth to lose your children in. Kids can get a train ride through the park, offering a glimpse of a restored windmill, or a pony ride at the petting zoo.',
            indoor: false,
            min_age: 0,
            max_age: 100,
            link: "http://www.amstelpark.info",
            photo: "http://www.amstelpark.info/amsterdam/wp-content/uploads/Amstelpark_0004_IMG_9947.jpg"
        },

        {
            category: 'Park',
            title: 'Speeltuin Amstelpark',
            address: 'Arent Jan Ernststraat 1, Amsterdam',
            description: 'Fun every day! The playground in the Amstelpark is open 365 days a year. It is the perfect location for a casual children’s or family celebration. There are easy picnic benches, but you can also sit on the lawn. Finish your visit with a walk through the beautiful Amstelpark.Free admission!',
            indoor: false,
            min_age: 5,
            max_age: 12,
            link: "http://www.speeltuin-amstelpark.nl",
            photo: "https://www.speeltuin-amstelpark.nl/wp-content/uploads/Speeltuin-Amstelpark_8_00_Speeltuin.jpg"
        },

        {
            category: 'Park',
            title: 'Rembrandtpark',
            address: 'Postjesweg, 1058 EP Amsterdam, Amsterdam',
            description: 'Rembrandtpark, a lovely quiet spot in West Amsterdam, offers both a wonderful little playground and the oldest petting zoo (‘kinderboerderij’) in the city, De Uylenburg. A highlight of the playground is a wonderful fire engine play area, while the large petting zoo will allow you to mingle with peacocks, pigs, chickens, horses, ducks and other animal friends.',
            indoor: false,
            min_age: 8,
            max_age: 18,
            link: "http://www.rembrandtpark.org",
            photo: "http://www.cotesaintluc.org/files/u1/parks_and_recreation/images/Rembrandt%20mosaic.jpg"
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

      address = data_doc.search('span.location-info__text').to_a.map(&:text).join(' ')

    title = data_doc.search('a.location-info__highlight').text


      unless place = Place.where(address: address).last
        place = Place.new
        place.title = title
        place.address = data_doc.search('span.location-info__text').to_a.map(&:text).join(' ')
        place.category = data_doc.search('a.tag').to_a.map(&:text).join(', ')

      place.indoor = true
      place.min_age = 0
      place.max_age = 100
      place.photo = data_doc.search('.slider-image').to_a.first.to_s.match(/url\('(.*)'\)/)[1]
      place.save!
    end


      event.photo = data_doc.search('.slider-image').to_a.first.to_s.match(/url\('(.*)'\)/)[1]
      event.title = data_doc.search('h1','a.location-info__highlight').text
      event.description = data_doc.search('page-introduction__text').text
      info = data_doc.search('span.location-info__text', 'span.location-info__align-icon')
      event.link = data_doc.search('.btn.btn-block.btn-outlined-green').map {|a| a.attribute('href').to_s}.first


    event.address = data_doc.search('span.location-info__text').map(&:text).join(" ")


      event.price = data_doc.search('span.location-info__highlight').map(&:text).join(", ")
      day = data_doc.search('.date-day').map(&:text).first
      end_day = data_doc.search('.date-day').map(&:text).last
      start_month = data_doc.search('.date-month').map(&:text).first
      end_month = data_doc.search('.date-month').map(&:text).last
      year = Time.now.year
      event.start_date = Date.parse("#{day}-#{start_month}-#{year}")
      event.end_date = Date.parse("#{end_day}-#{end_month}-#{year}")
      if event.end_date < event.start_date
        event.end_date = event.end_date + 1.years
      end
      event.description = data_doc.search('.tag').text

      event.place = place
      event.start_time = data_doc.search('date-serie').text
      #event_link = data_doc.search('btn btn-block btn-outlined-green').text
      existing_event = Event.where(start_date: event.start_date, end_date: event.end_date, title: event.title).first
      if !existing_event
        event.save!
      end



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
