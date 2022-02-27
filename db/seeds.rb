users = [
  { username: "eva_apio", avatar_url: "https://media1.popsugar-assets.com/files/thumbor/yQIcw_Wzut216ASfRnUem-TejcM/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2020/02/18/760/n/2589280/b6c38d991ec80746_GettyImages-1201687835/i/Eva-Apio-on-2020-BRIT-Awards-Red-Carpet.jpg", email: "eva_apio@yahoo.com", password: "123456" },
  { username: "kylie_jenner", avatar_url: "http://cdn.shopify.com/s/files/1/0067/4555/5015/collections/Kylie-intro_1200x1200.jpg?v=1569807555", email: "kylie_jenner@yahoo.com", password: "123456" },
  { username: "foodie_life", avatar_url: "https://images.unsplash.com/photo-1572095755909-4c3302539985?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGluc3RhZ3JhbSUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80", email: "foodie_life@yahoo.com", password: "123456" },
  { username: "jordyn_woods", avatar_url: "https://images.toofab.com/image/5d/1by1/2020/08/08/5d709f4b2f0f4afc91852e28188cdbb9_xl.jpg", email: "jordynw@gmail.com", password: "123456" },
  { username: "nava_rose", avatar_url: "https://i2.wp.com/wikifamouspeople.com/wp-content/uploads/2020/08/Nava-Rose.jpg?fit=1080%2C919&ssl=1", email: "navarose@yahoo.com", password: "123456" },
  { username: "sports_center", avatar_url: "https://pbs.twimg.com/profile_images/1062155885911425024/EMf90GZI_400x400.jpg", email: "sportscenter@yahoo.com", password: "123456" },
]

finstagram_posts = [
  { photo_url: "https://pbs.twimg.com/media/ELXLULgXkAoGSxS.jpg"},
  { photo_url: "https://static.onecms.io/wp-content/uploads/sites/20/2020/04/29/kylie-jenner-5.jpg"},
  { photo_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimagesvc.meredithcorp.io%2Fv3%2Fmm%2Fimage%3Furl%3Dhttps%253A%252F%252Fstatic.onecms.io%252Fwp-content%252Fuploads%252Fsites%252F35%252F2019%252F05%252F21181957%252Fwomen-eating-food-hashtag.jpg&q=85"},
  { photo_url: "https://iglives.tv/wp-content/uploads/2019/11/jordynwoods_nov3.jpg"},
  { photo_url: "https://pbs.twimg.com/media/ESxxG3YU0AAD6EF.jpg"},
  { photo_url: "https://i.pinimg.com/736x/65/65/a5/6565a541d794d8d99a317d49117fbfb6.jpg"},
]

puts "=== Seeding database... ==="

# create Users and FinstagramPosts
users.each_with_index do |user, index|
  # create new User
  user_record = User.create(user)
  puts "-- Created User: #{user_record.username}"
  # get a finstagram_post
  finstagram_post = finstagram_posts[index]
  # modify finstagram_post's user_id from created record
  finstagram_post[:user_id] = user_record.id
  # create new FinstagramPost
  FinstagramPost.create(finstagram_post)
  puts "-- Created a FinstagramPost for User: #{user_record.username}"
end

puts "=== Seeding complete. ==="