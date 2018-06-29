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


places =
    [ Place.create!(category: 'Market',
          title: 'Plantage Middenlaan',
          address: 'Plantage Middenlaan 2c, 1018 DD Amsterdam',
          indoor: true,
          min_age: 0,
          max_age: 100,
          photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk8SQzkNNoDYF_xg-PCnlQtdy8bRRpC83PEo5_omjR_51wqKcE8Q'
        ),


        Place.create!(
              category: 'Market',
              title: 'Nieuwmarkt',
              address: 'Nieuwmarkt, 1012, Amsterdam',
              indoor: false,
              min_age: 0,
              max_age: 100,
              photo: 'data:image/jpeg;base64,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',

          ),

          Place.create!(
              category: 'Venue',
              title: 'Bostheater',
              address: 'De Duizendmeterweg 7, 1182 DC te Amstelveen',
              indoor: false,
              min_age: 0,
              max_age: 100,
              photo: 'http://bostheater.nl/app/uploads/2017/03/Bostheater-2018-Headerbeeld.jpg'

          ),

          Place.create!(
              category: 'Venue',
              title: 'Kidsproof',
              address: 'Zuiderzeeweg 1,1095 KG Amsterdam',
              indoor: true,
              min_age: 0,
              max_age: 100,
              photo: 'http://www.bijstorm.nl/wp-content/uploads/2018/05/Bij-Storm26-600x335.jpg'

          ),

          Place.create!(
              category: 'Outdoors',
              title: 'Zeilclub',
              address: 'Valentijnkade 131,1095 KH Amsterdam',
              description: 'Learn how to sail, to go windsurfing, to build your own raft, to go kayaking, to leqr; and use survival skills, to use gps, to light a fire, archery, and many more outdoor & aquatic activities at Sport4kidz. On our location at Outdoor & Aquatics Jeugdland, we organize a range of activities for children!',
              indoor: true,
              min_age: 5,
              max_age: 100,
              link:  "https://sport4kidz.nl/nl/watersport/?utm_source=kidsproof.nl&utm_medium=referral",
              photo: 'https://www.kidsproof.nl/images/image/Sport4Kidz_sport4kidzzeilclubzeilenactiefua_2.jpg'
          ),

        Place.create!(
            category: 'Playground',
            title: 'UJ Klaren speeltuin',
            address: 'Tweede Weteringplantsoen 10-X, 1017 ZD Amsterdam',
            description: 'The oldest playground in the Netherlands at the Weteringsplantsoen in the heart of Amsterdam. A place where children meet and can play carefree. The playground has the  mission to be a nice playground for children between 2 and 12 and a nice place to stay for those children and their parents. You have access to toilet during the week, and the playground is open mostly everyday.',
            indoor: false,
            min_age: 0,
            max_age: 10,
            link:  "https://www.ujklaren.nl/",
            photo: 'https://s3-media4.fl.yelpcdn.com/bphoto/qeYGN5DqP3wkbdTCgmKMkA/o.jpg'
        ),

        Place.create!(
            category: 'Playground',
            title: 'De Ruige Speelplek',
            address: 'Willem de Zwijgerlaan 173, 1056 JM Amsterdam',
            description: 'A rugged playground. Sling ropes, shelters, pirate ships, tunnels, mountains of sand. Children can spend their energy here.',
            indoor: false,
            min_age: 3,
            max_age: 15,
            link:  nil,
            photo: 'https://farm5.static.flickr.com/4063/4638506440_61d7b62977_b.jpg'
        ),

        Place.create!(
            category: 'Playground',
            title: 'Het Woeste Westen',
            address: 'Overbrakerpad 3, Westerpark, 1014 AZ Amsterdam',
            description: 'Would you like to play with sand and water, go on a raft, catch water animals, play in a flowing stream, stroll through reeds and bushes or simply enjoy nature? It can all be here! Children up to and including 13 can play for free with us. The area is always accessible. Playground managers are present every day. There is then the possibility to buy coffee, tea, juices and snacks in our building and to be able to shelter in bad weather. There is a terrace for parents. Het Woeste Westen is also an ideal place for birthday parties , nature and environmental education , BSO (out-of-school care) and school trips .',
            indoor: false,
            min_age: 3,
            max_age: 15,
            link:  'https://www.woestewesten.nl/',
            photo: 'https://www.woestewesten.nl/img_fotorotate/mei2010%20135.jpg'
        ),

        Place.create!(
            category: 'Playground',
            title: 'Playground Henrick de Keijser',
            address: 'Overbrakerpad 3, Westerpark, 1014 AZ Amsterdam',
            description: 'The Krajicek Playground consists of a large multicourt of asphalt where there is enough space to play tennis, football and basketball together. There is also a mini tennis court and there are of course many separate play and play facilities in the play area. There is daily management of Combiwel who also provides the sports and games lending. The management also carries out the weekly activities. There is also space for small children, toilets and first aid kits in the administration.',
            indoor: false,
            min_age: 2,
            max_age: 15,
            link:  'nil',
            photo: 'https://krajicek.nl/wp-content/uploads/2015/06/Henrick_de_Keijser.jpg'
        ),

        Place.create!(
            category: 'Farm',
            title: 'Geitenboerderij Ridammerhoeve, Goat Farm',
            address: 'Nieuwe Meerlaan 4, 1182 DB Amstelveen',
            description: 'The organic Goatfarm Ridammerhoeve is situated in the middle of the Amsterdam Forest. A farm where visitors can meet with the goats, lambs, chickens, pigs, cows and horses. Charming, but above all there is a lot to do and to discover! Enjoy a biological lunch, and pancakes with us!',
            indoor: false,
            min_age: 2,
            max_age: 15,
            link:  'http://www.geitenboerderij.nl/en/',
            photo: 'https://media.iamsterdam.com/ndtrc/Images/20101119/9a25917e-95a3-40b1-9758-c15e8f3c7f96.jpg'
        ),

        Place.create!(
            category: 'Playground',
            title: 'Robbeburg International Playgroup',
            address: 'Jekerstraat 84, 1078 MG Amsterdam',
            description: 'This is non-profit playgroup run by volunteers. It is a friendly place to escape to with your little one and meet up with other international parents.',
            indoor: true,
            min_age: 0,
            max_age: 4,
            link:  "http://robbeburg.com",
            photo: 'http://robbeburg.com/wp-content/uploads/2012/04/houses.jpg'

        ),
        Place.create!(
            category: 'Playground',
            title: ' Octopus International Playgroup',
            address: 'Arent Janszoon Ernststraat 132, 1082 LP Amsterdam',
            description: 'Just opposite the Gelderlandplein shopping centre in Buitenvelder, this is again a parent-run playgroup for international parents. The beautiful Amstel Park is a walking distance from the playgroup if you choose to plan a whole day out.',
            indoor: true,
            min_age: 0,
            max_age: 4,
            link: "https://www.facebook.com/groups/Octopusplaygroup/?fref=ts",
            photo: 'https://amsterdam-mamas.nl/sites/default/files/styles/story_page_big_image/public/Ball%20pool%203%20kids.jpeg?itok=a9p7JYWY'

        ),

        Place.create!(
            category: 'Zoo',
            title: 'Natura Artis Magistra',
            address: 'Plantage Kerklaan 38-40, 1018 CZ Amsterdam',
            indoor: false,
            min_age: 2,
            max_age: 100,
            photo: 'https://thumbs.dreamstime.com/b/artis-zoo-amsterdam-27371162.jpg'

        ),

        Place.create!(
            category: 'Park',
            title: 'Vondelpark',
            address: '1071 AA Amsterdam',
            description: 'The park to end all parks! This place is just awesome, for children of all ages (and adults too). Beautiful parkland, wonderful wooden play equipment, rope bridges, zip wires, an open-air theatre, huge paddling pool, skate hire, a Picasso sculpture and a cracking café, too. Grab coffee and pancakes from the Groot Melkhuis, kick off your shoes and let your kids run wild. ',
            indoor: false,
            min_age: 3,
            max_age: 15,
            link: "http://www.hetvondelpark.net",
            photo: 'https://cdn.babyccinokids.com/wp-content/uploads/2016/07/Vondelpark-paddle-pool.jpg'
        ),

        Place.create!(
            category: 'Park',
            title: 'Vereniging Kippen',
            address: 'Madelievenstraat 2d, 1015 NV Amsterdam ',
            description: 'Also known as the Chicken and Rabbit Playground, this children’s play area in the Jordaan district (not far from Anne Frank’s House) is a bit of a locals’ secret. Small, but quieter than the touristy parks, this bijou playspace has chickens, rabbits, an array of ride-on toys, a sandpit and even a table-tennis table (take your own bat and balls). You might be lucky enough to get yourself some fresh eggs too.',
            indoor: false,
            min_age: 3,
            max_age: 15,
            link:  "http://www.konippen.nl",
            photo: "http://www.konippen.nl/img/3luik.JPG"
        ),

        Place.create!(
            category: 'Park',
            title: 'Amstelpark',
            address: 'Arent Jan Ernststraat 1, Amsterdam',
            description: 'A little further away, on the outskirts of the city, this beautiful park offers everything from bumper cars to a petting zoo (just don’t get those two mixed up!). The playground is enormous, the gardens are beautiful, there are two galleries for the culturally-minded and a fantastic hedge labyrinth to lose your children in. Kids can get a train ride through the park, offering a glimpse of a restored windmill, or a pony ride at the petting zoo.',
            indoor: false,
            min_age: 0,
            max_age: 100,
            link: "http://www.amstelpark.info",
            photo: "http://www.amstelpark.info/amsterdam/wp-content/uploads/Amstelpark_0004_IMG_9947.jpg"
        ),

        Place.create!(
            category: 'Park',
            title: 'Speeltuin Amstelpark',
            address: 'Arent Jan Ernststraat 1, Amsterdam',
            description: 'Fun every day! The playground in the Amstelpark is open 365 days a year. It is the perfect location for a casual children’s or family celebration. There are easy picnic benches, but you can also sit on the lawn. Finish your visit with a walk through the beautiful Amstelpark.Free admission!',
            indoor: false,
            min_age: 3,
            max_age: 15,
            link: "http://www.speeltuin-amstelpark.nl",
            photo: "https://www.speeltuin-amstelpark.nl/wp-content/uploads/Speeltuin-Amstelpark_8_00_Speeltuin.jpg"
        ),

        Place.create!(
            category: 'Park',
            title: 'Rembrandtpark',
            address: 'Postjesweg, 1058 EP Amsterdam, Amsterdam',
            description: 'Rembrandtpark, a lovely quiet spot in West Amsterdam, offers both a wonderful little playground and the oldest petting zoo (‘kinderboerderij’) in the city, De Uylenburg. A highlight of the playground is a wonderful fire engine play area, while the large petting zoo will allow you to mingle with peacocks, pigs, chickens, horses, ducks and other animal friends.',
            indoor: false,
            min_age: 5,
            max_age: 18,
            link: "http://www.rembrandtpark.org",
            photo: "http://www.cotesaintluc.org/files/u1/parks_and_recreation/images/Rembrandt%20mosaic.jpg"
)

    ]


# add migration for min age and max age


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



# def scrape_iamsterdam(date)
#   genre = "vOyUMmkD0Ey0tqp6GBZyLg"
#   day_range = "1" # 5
#   take = "100" # 12
#   date_filter = date.strftime("%d%m%Y")



#   raw_results = `curl 'https://www.iamsterdam.com/api/AgendaApi/' \
#        -H 'origin: https://www.iamsterdam.com'  \
#        -H 'accept-language: nl-NL,nl;q=0.9,en-US;q=0.8,en;q=0.7'\
#        -H 'x-requested-with: XMLHttpRequest' \
#        -H 'cookie: __cfduid=de5570905768f01816429dd599e886de51529411166; website#lang=en; __css=335e99cb-779e-45c4-af72-90515bde20cd; enqueteModalTreshold=3; announcementModalThreshold=3' \
#        -H 'pragma: no-cache' \
#        -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36' \
#        -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
#        -H 'accept: application/json, text/javascript, */*; q=0.01' \
#        -H 'cache-control: no-cache' -H 'authority: www.iamsterdam.com' \
#        -H 'referer: https://www.iamsterdam.com/en/see-and-do/whats-on/search-agenda' \
#        --data 'Genre=#{genre}&DateFilter=#{date_filter}&DayPart=&SearchTerm=&Neighbourhoud=&DayRange=#{day_range}&ViewMode=2&LastMinuteTickets=&PageId=136c1ef0-50fb-4783-8c0c-277059bf59c3&Skip=0&Take=#{take}&RequestPromotedItems=true'`

#   results = JSON.parse(raw_results)
#   agenda_items = results["AgendaItemsHtml"]
#   puts "Found #{agenda_items.length} items"
#   agenda_items.each do |agenda_item|
#     doc = Nokogiri::HTML(agenda_item)
#     agenda_link = doc.search('a').to_a.map {|a| a.attribute('href').to_s}.first

#     event = Event.new
#     data = open(agenda_link).read
#     data_doc = Nokogiri::HTML(data)

#       address = data_doc.search('span.location-info__text').to_a.map(&:text).join(' ')

#     title = data_doc.search('a.location-info__highlight').text


#       unless place = Place.where(address: address).last
#         place = Place.new
#         place.title = title
#         place.address = data_doc.search('span.location-info__text').to_a.map(&:text).join(' ')
#         place.category = data_doc.search('a.tag').to_a.map(&:text).join(', ')

#       place.indoor = true
#       place.min_age = 0
#       place.max_age = 100
#       place.photo = data_doc.search('.slider-image').to_a.first.to_s.match(/url\('(.*)'\)/)[1]
#       place.save!
#     end


#       event.photo = data_doc.search('.slider-image').to_a.first.to_s.match(/url\('(.*)'\)/)[1]
#       event.title = data_doc.search('h1','a.location-info__highlight').text
#       event.description = data_doc.search('page-introduction__text').text
#       info = data_doc.search('span.location-info__text', 'span.location-info__align-icon')
#       event.link = data_doc.search('.btn.btn-block.btn-outlined-green').map {|a| a.attribute('href').to_s}.first


#     event.address = data_doc.search('span.location-info__text').map(&:text).join(" ")


#       event.price = data_doc.search('span.location-info__highlight').map(&:text).join(", ")
#       day = data_doc.search('.date-day').map(&:text).first
#       end_day = data_doc.search('.date-day').map(&:text).last
#       start_month = data_doc.search('.date-month').map(&:text).first
#       end_month = data_doc.search('.date-month').map(&:text).last
#       year = Time.now.year
#       event.start_date = Date.parse("#{day}-#{start_month}-#{year}")
#       event.end_date = Date.parse("#{end_day}-#{end_month}-#{year}")
#       if event.end_date < event.start_date
#         event.end_date = event.end_date + 1.years
#       end
#       event.description = data_doc.search('.tag').text

#       event.place = place
#       event.start_time = data_doc.search('date-serie').text
#       #event_link = data_doc.search('btn btn-block btn-outlined-green').text
#       existing_event = Event.where(start_date: event.start_date, end_date: event.end_date, title: event.title).first
#       if !existing_event
#         event.save!
#       end



#     # puts start_time

#   end
# end

# 31.times do |i|
#   day = i.days.from_now
#   scrape_iamsterdam(day)
# end


events =
    [
      {
        title: 'ModderDag 2018',
        photo: 'https://www.kidsproof.nl/images/image/Modderdag_ModderDag2015_2_23.jpg',
        address: 'Plantage Middenlaan 2c, 1018 DD Amsterdam',
        price: 'Free',
        start_date: "2018-06-29",
        end_date: "2018-7-15",
        description: 'Spelen met water en zand, contact met natuur en aarde: wat is er nou leuker dan dat? Op 29 juni 2018 is het weer ModderDag! Vorig jaar speelden 160.000 kinderen tijdens ModderDag in de Modder. Doen jouw kinderen ook mee op hun school, BSO of andere locatie? Er zijn al meer dan 2.000 plekken in Nederland die meedoen! Buitenspelen in een natuurrijke omgeving en spelen met modder is behalve leuk, ook goed voor de ontwikkeling van kinderen. In Amsterdam kun je op Modderdag op veel plekken terecht waar een leuke modderactiviteit voor jou wordt georganiseerd.',
        min_age: 0,
        max_age: 100,
        link: "https://www.ivn.nl/modderdag",
        place: places[0]
      },

      {
        title: 'New Market',
        photo: 'https://www.kidsproof.nl/images/image/KidsproofAmsterdam_nieuwmarktmeiwinkelenkindvriendelijk_2.jpg',
        address: 'Nieuwmarkt, 1012, Amsterdam',
        price: 'Free',
        start_date: "2018-06-29",
        end_date: "2018-07-30",
        description: 'New Market is de plek voor mooie handgemaakte producten en andere leuke en aparte items. Handgemaakte sieraden, accessoires, fashion, vintage, kids items, betaalbare kunst en interieur items worden aangeboden door de creatieve deelnemers van de New Market. Daarnaast staan er verschillende stands met delicatessen uit alle windstreken én voor de acute trek is er voldoende keus aan zoete of hartige hapjes bij een van de foodstands of foodtrucks.',
        min_age: 0,
        max_age: 100,
        link: "https://www.facebook.com/events/177883902871025",
        place: places[1]
      },


      {
        title: 'Knutselen Bij Storm',
        photo: 'https://www.kidsproof.nl/images/image/BijStorm_ZomervakantieBijStormknutselen_3_14_58_34.jpg',
        address: 'Zuiderzeeweg 1,1095 KG Amsterdam',
        price: 'Free',
        start_date: "2018-06-29",
        end_date: "2018-07-15",
        description: 'Terwijl jij lekker creatief bezig bent kunnen je ouders koffie drinken, lunchen en even relaxen.',
        min_age: 0,
        max_age: 100,
        link: "http://www.bijstorm.nl/kidsagenda/?utm_source=kidsproof.nl&utm_medium=referral",
        place: places[2]
      },

       {
         title: 'Bobslag',
         photo: 'https://www.kidsproof.nl/images/image/AmsterdamseBos_boslabamsterdamseboskids_2.jpg',
         address: 'De Duizendmeterweg 7, 1182 DC te Amstelveen',
         price: 'Free',
         start_date: "2018-06-25",
         end_date: "2018-07-30",
         description: 'Jonge talenten werken een maand lang op verschillende plekken in en rondom het Bostheater aan korte producties.',
         min_age: 0,
         max_age: 100,
         link: "http://bostheater.nl/",
         place: places[3]
       },

       {
         title: 'Het Kleine Teater',
         photo: 'http://bostheater.nl/app/uploads/2018/04/Rapunzel.jpg',
         address: 'De Duizendmeterweg 7, 1182 DC te Amstelveen',
         price: 'Free',
         start_date: "2018-07-01",
         end_date: "2018-08-30",
         description: 'Rapunzel is een mooi en eenzaam meisje. Ze zit al haar hele leven lang opgesloten in een toren. Ze heeft nog nooit een mens gezien, behalve Petemoei, die haar heeft opgesloten, maar met veel liefde voor haar zorgt. Op een dag echter ontdekt Rapunzel, dat er een deurtje in haar toren zit.. ze kan eruit! Ze verzamelt al haar moed en gaat de grote onbekende wereld in.',
         min_age: 0,
         max_age: 100,
         link: "http://bostheater.nl/",
         place: places[3]
       },

       {
         title: 'Zeilclub',
         photo: 'https://www.kidsproof.nl/images/image/Sport4Kidz_sport4kidzzeilclubzeilenactiefua_2.jpg',
         address: 'Valentijnkade 131,1095 KH Amsterdam',
         price: '20',
         start_date: "2018-06-01",
         end_date: "2018-09-30",
         description: 'Leer zeilen, windsurfen, boogschieten, vlottenbouwen, kajakken, gps & survival activiteiten, vuurmaken en vele andere outdoor & watersport-activiteiten bij Sport4kidz. Op het terrein van Jeugdland Amsterdam organiseren wij een spetterend outdoor & watersport aanbod voor kinderen.',
         min_age: 5,
         max_age: 100,
         link: "https://sport4kidz.nl/nl/watersport/?utm_source=kidsproof.nl&utm_medium=referral",
         place: places[4]
       }

    ]


events.each do |event|
  Event.create!(event)
end
