bill_profile = Profile.create(full_name: "Bill Johnson", photo_url: "bill.jpg", birth_date: "November 22, 2011", education: "Sunday School", about_me: "Hi, I'm Bill! Praise the Lord!")

suzie_comment = Comment.create(full_name: "Suzie Bananas", photo_url: "suzie.jpg", date_time: "August 4, 2015 at 12:00pm", content: "I love you, Bill.", profile_id: 1)
