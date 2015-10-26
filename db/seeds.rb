# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# EInfos
EInfo.create(e_category_id: 7, title: 'Dell Inspiron X', description: 'An ordinary dell pc', image_name: 'product-2.jpg') #1
EInfo.create(e_category_id: 2, title: 'Playstation 4', description: 'A gaming console, better than xbox', image_name: 'product-4.jpg') #2
EInfo.create(e_category_id: 15, title: '3D Printer', description: 'A 3D Print-master Machine', image_name: '3dprinter.jpg') #3
EInfo.create(e_category_id: 13, title: 'Grey Backpack', description: 'One type of backpack', image_name: 'backpack1.jpg') #4
EInfo.create(e_category_id: 13, title: 'Tan Backpack', description: 'Another type of backpack', image_name: 'backpack2.jpg') #5
EInfo.create(e_category_id: 13, title: 'Disney Backpack', description: 'Yet another type of backpack', image_name: 'backpack3.jpg') #6
EInfo.create(e_category_id: 5, title: 'Battleship Movie', description: 'Starring Vin Diesel', image_name: 'battleship_movie.jpg') #7
EInfo.create(e_category_id: 11, title: 'Cenradis Headset', description: 'Used by Taylor Swift in her new video', image_name: 'cenradis_headset.jpg') #8
EInfo.create(e_category_id: 16, title: 'ATX Computer Case', description: 'Used by Vin Diesel to play WoW', image_name: 'computercase.jpg') #9
EInfo.create(e_category_id: 8, title: 'Dell Monitor', description: 'Used by no-one', image_name: 'dell_monitor.jpg') #10
EInfo.create(e_category_id: 5, title: 'Entourage', description: 'Starring Vin Diesel', image_name: 'entourage1.jpg') #11
EInfo.create(e_category_id: 11, title: 'Focal Speaker', description: "Comes with the hit album 'Turning it up', by Vin Diesel", image_name: 'focal_speaker.jpg') #12
EInfo.create(e_category_id: 12, title: 'German Sheperd', description: 'A german sheperd', image_name: 'german.JPG') #13
EInfo.create(e_category_id: 10, title: 'Invaders Keyboard', description: 'A keyboard', image_name: 'invaders_keyboard.jpg') #14
EInfo.create(e_category_id: 9, title: 'Genius Mouse', description: 'A mouse', image_name: 'mouse_genius.jpg') #15
EInfo.create(e_category_id: 18, title: 'Mug', description: 'A mug', image_name: 'mug.jpeg') #16
EInfo.create(e_category_id: 12, title: 'Puppy', description: 'A cute little puppy', image_name: 'puppy.jpg') #17
EInfo.create(e_category_id: 5, title: 'Puss in Boots', description: 'Starring Vin Diesel', image_name: 'puss_in_boots.jpg') #18
EInfo.create(e_category_id: 15, title: 'Las gafas de sol', description: 'Sunglasses', image_name: 'sunglasses.jpg') #19
EInfo.create(e_category_id: 6, title: 'Uno', description: 'A family-friendly game', image_name: 'uno.jpg') #20
EInfo.create(e_category_id: 3, title: 'Dog Costume', description: 'Make that pet sparkle', image_name: 'dog_costume.jpg') #21

# Items
Item.create(e_info_id: 1, quantity: 20, reserve_price: 799, auction: false)
Item.create(e_info_id: 2, quantity: 25, reserve_price: 299, auction: false)
Item.create(e_info_id: 3, quantity: 10, reserve_price: 999, auction: false)
Item.create(e_info_id: 4, quantity: 100, reserve_price: 49, auction: false)
Item.create(e_info_id: 5, quantity: 79, reserve_price: 59, auction: false)
Item.create(e_info_id: 6, quantity: 400, reserve_price: 29, auction: false)
Item.create(e_info_id: 7, quantity: 1, reserve_price: 99, auction: false)
Item.create(e_info_id: 8, quantity: 25, reserve_price: 29, auction: false)
Item.create(e_info_id: 9, quantity: 60, reserve_price: 79, auction: false)
Item.create(e_info_id: 10, quantity: 50, reserve_price: 99, auction: false)
Item.create(e_info_id: 11, quantity: 25, reserve_price: 9, auction: false)
Item.create(e_info_id: 12, quantity: 34, reserve_price: 64, auction: false)
Item.create(e_info_id: 13, quantity: 40, reserve_price: 499, auction: false)
Item.create(e_info_id: 14, quantity: 21, reserve_price: 49, auction: false)
Item.create(e_info_id: 15, quantity: 80, reserve_price: 19, auction: false)
Item.create(e_info_id: 16, quantity: 25, reserve_price: 5, auction: false)
Item.create(e_info_id: 17, quantity: 13, reserve_price: 299, auction: false)
Item.create(e_info_id: 18, quantity: 25, reserve_price: 19, auction: false)
Item.create(e_info_id: 19, quantity: 13, reserve_price: 19, auction: false)
Item.create(e_info_id: 20, quantity: 25, reserve_price: 14, auction: false)
Item.create(e_info_id: 21, quantity: 33, reserve_price: 49, auction: false)


# ECategories
ECategory.create(name: 'root', parent_cat_id: 0) #1
ECategory.create(name: 'Electronics', parent_cat_id: 1) #2
ECategory.create(name: 'Pets', parent_cat_id: 1) #3
ECategory.create(name: 'Clothes', parent_cat_id: 1) #4
ECategory.create(name: 'Movies', parent_cat_id: 1) #5
ECategory.create(name: 'Games', parent_cat_id: 1) #6
ECategory.create(name: 'Computers', parent_cat_id: 2) #7
ECategory.create(name: 'Monitors', parent_cat_id: 7) #8
ECategory.create(name: 'Mice', parent_cat_id: 7) #9
ECategory.create(name: 'Keyboards', parent_cat_id: 7) #10
ECategory.create(name: 'Speakers', parent_cat_id: 7) #11
ECategory.create(name: 'Dogs', parent_cat_id: 3) #12
ECategory.create(name: 'Backpacks', parent_cat_id: 4) #13
ECategory.create(name: 'Accessories', parent_cat_id: 4) #14
ECategory.create(name: 'Video Games', parent_cat_id: 2) #15
ECategory.create(name: 'Printers', parent_cat_id: 7) #15
ECategory.create(name: 'Cases', parent_cat_id: 7) #16
ECategory.create(name: 'Houseware', parent_cat_id: 1) #17
ECategory.create(name: 'Mugs', parent_cat_id: 17) #18

# EReviews
EReview.create(e_info_id: 1, rating: 2, comment: 'The touch screen broke and has been psuedo clicking all over the place')
EReview.create(e_info_id: 1, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 2, rating: 3, comment: "It's alright")
EReview.create(e_info_id: 3, rating: 2, comment: 'The broke')
EReview.create(e_info_id: 4, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 3, rating: 3, comment: "It's alright")
EReview.create(e_info_id: 5, rating: 2, comment: 'The broke')
EReview.create(e_info_id: 6, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 6, rating: 3, comment: "It's alright")
EReview.create(e_info_id: 8, rating: 2, comment: 'The broke')
EReview.create(e_info_id: 7, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 7, rating: 3, comment: "It's alright")
EReview.create(e_info_id: 9, rating: 2, comment: 'The broke')
EReview.create(e_info_id: 9, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 9, rating: 3, comment: "It's alright")
EReview.create(e_info_id: 10, rating: 2, comment: 'The broke')
EReview.create(e_info_id: 11, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 11, rating: 3, comment: "It's alright")
EReview.create(e_info_id: 12, rating: 2, comment: 'The broke')
EReview.create(e_info_id: 13, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 14, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 15, rating: 3, comment: "It's alright")
EReview.create(e_info_id: 15, rating: 2, comment: 'The broke')
EReview.create(e_info_id: 16, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 17, rating: 3, comment: "It's alright")
EReview.create(e_info_id: 19, rating: 2, comment: 'The broke')
EReview.create(e_info_id: 18, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 20, rating: 3, comment: "It's alright")
EReview.create(e_info_id: 21, rating: 2, comment: 'The broke')
EReview.create(e_info_id: 21, rating: 5, comment: "It's very good")
EReview.create(e_info_id: 21, rating: 3, comment: "It's alright")

# ETags
ETag.create(e_info_id: 2, name: 'games')
ETag.create(e_info_id: 2, name: 'console')
ETag.create(e_info_id: 2, name: 'cool')
ETag.create(e_info_id: 2, name: 'fast')
ETag.create(e_info_id: 2, name: 'not xbox')

ETag.create(e_info_id: 1, name: 'dell')
ETag.create(e_info_id: 1, name: 'touch screen')
ETag.create(e_info_id: 1, name: 'series')
ETag.create(e_info_id: 1, name: 'fast')
ETag.create(e_info_id: 1, name: 'windows 7')