#faithbook
ga-dc wdi6 project 2. christian social networking site.

FAItHBOOK!

Faithbo#faithbook
ga-dc wdi6 project 2. christian social networking site.

FAItHBOOK!

Faithbook is a Christian social networking app. Kinda like Christian Mingle, but also like Facebook. Faithbook users
will be able to sign up, create profiles, add a photo, education history, and information about themselves. Users
will also have a "prayers" counter on their profile, the number of which fellow users can affect by sending prayers, kinda
like a measurement of popularity. Users will be able to leave comments on fellow users' profiles. Users can comment on their
own profiles as well, if they want to reply to a comment someone else left, or if they're crazy.

USER STORIES

As a user, I should be able to:
1. Sign up, sign in, and sign out, so I can create a profile, make changes to my profile, and make sure no one else is messin'
   with my profile info, respectively.
2. Add information to a profile, so people can see what my name is, what I look like, where I was educated, and more about me.
3. Add comments to all users' profiles, including my own, so I can keep in touch with all of my buddies.
4. Send and recieve "prayers" that increase the number of the prayer counters, so I know how many people are praying for me,
   and so I can let others know that they are being prayed for.
5. Edit the information I entered in my profile, so I can change typos and other mistakes.
6. See all users' profiles from the homepage, so I can navigate to them easily.
7. Have the option to delete my profile, so I can overcome my social networking addiction.

UNFINISHED

I would like to add localStorage to my JS file so that the counter remembers the number it's at even when
I navigate away from the page. I was having an issue with localStorage affecting all profiles instead of
just one, which is what I wanted. I was also having an issue where, on heroku, the counter number was
displayed as "NaN". In the local view, this was not the case.

I would also like to look into using authentication so that users can only edit their own profiles/comments.

TO INSTALL

Fork and clone this GitHub repository. Navigate to the Faithbook directory in Terminal and enter "rails s". Once
this has been done, open your browser and navigate to localhost:3000

Wireframes
faithbook/planning/wireframes contains an outline of the home view and the profile view.
