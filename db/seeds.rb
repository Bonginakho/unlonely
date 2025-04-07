# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database"
User.destroy_all
Journal.destroy_all

User.create([
  { username: 'user1', email: 'user1@example.com', password: 'password123' },
  { username: 'user2', email: 'user2@example.com', password: 'password123' },
  { username: 'user3', email: 'user3@example.com', password: 'password123' },
  { username: 'user4', email: 'user4@example.com', password: 'password123' },
  { username: 'user5', email: 'user5@example.com', password: 'password123' }
            ])
puts "Created #{User.count} users."

Journal.create!([
  { prompt: "You are your biggest project. Serving you serves the world. But we are not made to do this life thing alone. So let us start small.Week 1 begins with saying hello to strangers. I know it feels akward but the exchange will leave you and them feeling strangely more connected."},
  { prompt: "Now that you are a little comfortable with chit-chat. Let’s crank it up a notch. What experiences brings you joy? Week 2 begins with listing every activity or experience that brings you joy. However big or small just jot them down throughout the week as they come to you."},
  { prompt: "Now that we have our joy-bringers it is time to share them with others. You decide who you would like to invite to do the activity with you. It can be a friend, an acquaintance, family member or your partner, potential or otherwise. There are no limits here, but I am guessing one is going to be hard enough so let us start with that. Write down who you chose. Reach out and invite them. If they say no ask someone else. I promise the no’s won’t kill you."},
  { prompt: "Now that you are sharing your joy. Let us work on anything that is coming up for you as you engage with people on this human experience called life. Which experience from week 3 comes up and what about it feels so emotionally charged? Notice it and write it down.Getting triggered? It’s normal it just means your healing is still in progress just like the rest of us."},
  { prompt: "When it comes to anything, we can only control what we do and how people respond to it is external to us. Now that we have brushed up against people with all of their imperfections and ours, naturally frustration occurs. Often times they can fall short of our expectations that is why we meet them where they are, not where we expect them to be. Practice letting of your expectations here. What did you want your community to look like? How does it compare to what it is?"},
  { prompt: "Sometimes to go forward, we need to go back. Very few things bring joy like conversations with old friends. Choose one old friend to intentionally re-connect with over the week. Someone you always could be yourself with. Call, text, or DM however you choose to reconnect but prioritize it this week, make a plan and if you can meet in person, all the better. Reconnect with old friends. It will bring so much unexpected joy to the both of you."},
  { prompt: "Process, re-align and start over. Getting un-lonely is a process, like all good things. Sit still with yourself this week. Whatever practice helps you get grounded and centered. Show up for it whether it is in the morning or evening but be intentional and prioritize it. 5 minutes each day this week will do and we don’t do perfection here. Just remember to give yourself the same grace you give to everybody else.Write down what centers you. Lean into that for the whole week."},
  { prompt: "Sometimes people surprise you. New friendships and connections can sometimes come from the unlikeliest of places. When you find yourself enjoying the company and conversations from an unexpected source. Go with the flow and the relationship will organically bloom. You never know where that encounter will take you. Trust your instincts and be open to the universe presenting you with some unfamiliar connections. Write down any new unlikely connections you have over this week."},
  { prompt: "Our need to belong in this growing world of individualistic expression can lead us feeling shameful when we desire closeness, intimacy and connection. Yet since the beginning of time, that is what has kept us alive, kept us sane and helped us build nations. Our forefathers knew the danger of isolation all too well because they relied on it for survival. Since our isolation happens over time, it becomes easier for us to chalk it up to a changing world, getting older, social media and a busy schedule. Write down what connection feels and looks like to you. What steps can you take in the following week to intentionally plug yourself into community."},
  { prompt: "Now that you are experiencing all the highs and lows of doing life with imperfect people. Some days will feel like the undoing, and retreating back into the familiarity of being lonely feels exactly like what you should be doing. But you can look back without going backwards. Solitude, which means an “undisturbed place” maybe  exactly what you need from time to time. Take some time out for yourself this week. Examine where you are, what you are doing and what you want to leave behind that is disturbing that inner place. Take inventory and write down all of the habits & practices that fuel you when you are alone."},
  { prompt: "You have found the magic in your solitude and the joy-bringer in community. This week is an invitation to design your life around both the practices that keep you grounded, alongside the activities, experiences and conversations that make you feel like you belong. This is what it means to be integrated. To be in your full authentic power and also in beautiful communities where you feel seen. Where your presence is treasured and your absence leaves a gap that only you can fill. Take time this week to intentionally craft out the habits and thoughts that bring you in alignment with the highest and truest expression of yourself. What does it look like for you to be grounded and in community?"},
  { prompt: "Your butterfly era begins. Your education ends here, because you are ready to be a part of communities that will allow you to experience the fullness of being alive. Where you can experience what it really means to be connected, both to yourself and others. This version of yourself has always been available and now you have access to it. You are officially un-lonely. Radically belonging to yourself and calling communities of meaningful connections home. The beautiful communities you are now in are only the beginning. Embrace this version of yourself. Let it lead you, now. What has been your most transformative connection since you started this journey? Which practices and thoughts in this workbook have most resonated with you and why?" }
])
puts "Created #{Journal.count} journal weeks."
