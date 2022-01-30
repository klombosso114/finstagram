def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end
get '/' do
    finstagram_post_eva = {
    username: "eva_apio",
    avatar_url: "https://media1.popsugar-assets.com/files/thumbor/yQIcw_Wzut216ASfRnUem-TejcM/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2020/02/18/760/n/2589280/b6c38d991ec80746_GettyImages-1201687835/i/Eva-Apio-on-2020-BRIT-Awards-Red-Carpet.jpg",
    photo_url: "https://pbs.twimg.com/media/ELXLULgXkAoGSxS.jpg",
    humanized_time_ago: humanized_time_ago(15),
    like_count: 10000,
    comment_count: 8,
    comments: [{
        username: "eva_apio",
        text: "eva_apio: At the Brit awards 2020 😍🥰🥶"
    }]
}

finstagram_post_kylie = {
    username: "kylie_jenner",
    avatar_url: "http://cdn.shopify.com/s/files/1/0067/4555/5015/collections/Kylie-intro_1200x1200.jpg?v=1569807555",
    photo_url: "https://static.onecms.io/wp-content/uploads/sites/20/2020/04/29/kylie-jenner-5.jpg",
    humanized_time_ago: humanized_time_ago(65),
    like_count: 146962,
    comment_count: 3489,
    comments: [{
        username: "kylie_jenner",
        text: " #weekendvibes Beach on my mind ♡"
    }]
}

    finstagram_post_foodie = {
        username: "foodie_life",
        avatar_url: "https://images.unsplash.com/photo-1572095755909-4c3302539985?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGluc3RhZ3JhbSUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80",
        photo_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimagesvc.meredithcorp.io%2Fv3%2Fmm%2Fimage%3Furl%3Dhttps%253A%252F%252Fstatic.onecms.io%252Fwp-content%252Fuploads%252Fsites%252F35%252F2019%252F05%252F21181957%252Fwomen-eating-food-hashtag.jpg&q=85",
        humanized_time_ago: humanized_time_ago(190),
        like_count: 1200,
        comment_count: 83,
        comments: [{
            username: "foodie_life",
            text: "lunchtime! ;)"
        }]
    }
[finstagram_post_eva, finstagram_post_kylie, finstagram_post_foodie].to_s
end