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
ChatMessage.destroy_all
User.destroy_all
Reflection.destroy_all
Journal.destroy_all

User.create([
  { username: 'user1', email: 'user1@example.com', password: 'password123' },
  { username: 'user2', email: 'user2@example.com', password: 'password123' },
  { username: 'user3', email: 'user3@example.com', password: 'password123' },
  { username: 'user4', email: 'user4@example.com', password: 'password123' },
  { username: 'user5', email: 'user5@example.com', password: 'password123' }
            ])
puts "Created #{User.count} users."

journals = Journal.create!([
  {  week_number: 1, week: "Week 1 Hello Strangers", prompt: "You are your biggest project. Serving you serves the world. But we are not made to do this life thing alone. So let us start small. Week 1 begins with saying hello to strangers. I know it feels akward but the exchange will leave you and them feeling strangely more connected."},
  {  week_number: 2, week: "Week 2 Joy Bringers", prompt: "Now that you are a little comfortable with chit-chat. Let’s crank it up a notch. What experiences brings you joy? Week 2 begins with listing every activity or experience that brings you joy. However big or small just jot them down throughout the week as they come to you."},
  {  week_number: 3, week: "Week 3 Sharing Your Joy  ", prompt: "Now that we have our joy-bringers it is time to share them with others. You decide who you would like to invite to do the activity with you. It can be a friend, an acquaintance, family member or your partner, potential or otherwise. There are no limits here, but I am guessing one is going to be hard enough so let us start with that. Write down who you chose. Reach out and invite them. If they say no ask someone else. I promise the no’s won’t kill you."},
  {  week_number: 4, week: "Week 4 The Messy Part of Human Connection", prompt: "Now that you are sharing your joy. Let us work on anything that is coming up for you as you engage with people on this human experience called life. Which experience from week 3 comes up and what about it feels so emotionally charged? Notice it and write it down.Getting triggered? It’s normal it just means your healing is still in progress just like the rest of us."},
  {  week_number: 5, week: "Week 5 Breathe & Let Go", prompt: "When it comes to anything, we can only control what we do and how people respond to it is external to us. Now that we have brushed up against people with all of their imperfections and ours, naturally frustration occurs. Often times they can fall short of our expectations that is why we meet them where they are, not where we expect them to be. Practice letting of your expectations here. What did you want your community to look like? How does it compare to what it is?"},
  {  week_number: 6, week: "Week 6 Hello Old Friend", prompt: "Sometimes to go forward, we need to go back. Very few things bring joy like conversations with old friends. Choose one old friend to intentionally re-connect with over the week. Someone you always could be yourself with. Call, text, or DM however you choose to reconnect but prioritize it this week, make a plan and if you can meet in person, all the better. Reconnect with old friends. It will bring so much unexpected joy to the both of you."},
  {  week_number: 7, week: "Week 7 Stillness", prompt: "Process, re-align and start over. Getting un-lonely is a process, like all good things. Sit still with yourself this week. Whatever practice helps you get grounded and centered. Show up for it whether it is in the morning or evening but be intentional and prioritize it. 5 minutes each day this week will do and we don’t do perfection here. Just remember to give yourself the same grace you give to everybody else.Write down what centers you. Lean into that for the whole week."},
  {  week_number: 8, week: "Week 8 Getting Comfortable with the Un-Comfortable", prompt: "Sometimes people surprise you. New friendships and connections can sometimes come from the unlikeliest of places. When you find yourself enjoying the company and conversations from an unexpected source. Go with the flow and the relationship will organically bloom. You never know where that encounter will take you. Trust your instincts and be open to the universe presenting you with some unfamiliar connections. Write down any new unlikely connections you have over this week."},
  {  week_number: 9, week: "Week 9 Goodbye Shame", prompt: "Our need to belong in this growing world of individualistic expression can lead us feeling shameful when we desire closeness, intimacy and connection. Yet since the beginning of time, that is what has kept us alive, kept us sane and helped us build nations. Our forefathers knew the danger of isolation all too well because they relied on it for survival. Since our isolation happens over time, it becomes easier for us to chalk it up to a changing world, getting older, social media and a busy schedule. Write down what connection feels and looks like to you. What steps can you take in the following week to intentionally plug yourself into community."},
  {  week_number: 10, week: "Week 10 The Undoing", prompt: "Now that you are experiencing all the highs and lows of doing life with imperfect people. Some days will feel like the undoing, and retreating back into the familiarity of being lonely feels exactly like what you should be doing. But you can look back without going backwards. Solitude, which means an “undisturbed place” maybe  exactly what you need from time to time. Take some time out for yourself this week. Examine where you are, what you are doing and what you want to leave behind that is disturbing that inner place. Take inventory and write down all of the habits & practices that fuel you when you are alone."},
  {  week_number: 11, week: "Week 11 The Integration", prompt: "You have found the magic in your solitude and the joy-bringer in community. This week is an invitation to design your life around both the practices that keep you grounded, alongside the activities, experiences and conversations that make you feel like you belong. This is what it means to be integrated. To be in your full authentic power and also in beautiful communities where you feel seen. Where your presence is treasured and your absence leaves a gap that only you can fill. Take time this week to intentionally craft out the habits and thoughts that bring you in alignment with the highest and truest expression of yourself. What does it look like for you to be grounded and in community?"},
  {  week_number: 12, week: "Week 12 The Blooming", prompt: "Your butterfly era begins. Your education ends here, because you are ready to be a part of communities that will allow you to experience the fullness of being alive. Where you can experience what it really means to be connected, both to yourself and others. This version of yourself has always been available and now you have access to it. You are officially un-lonely. Radically belonging to yourself and calling communities of meaningful connections home. The beautiful communities you are now in are only the beginning. Embrace this version of yourself. Let it lead you, now. What has been your most transformative connection since you started this journey? Which practices and thoughts in this workbook have most resonated with you and why?" }
                ])
puts "Created #{Journal.count} journal weeks."

puts "Creating reflections"
reflections_array = [
  {title:"Remember we are not seeking perfection here. If you didn’t say hello to any new person this week, you can try again next week before you move on to week 2. Someone you have seen but never talked to before also counts. The goal here is to get you to feel a small sense of “I am not living this human experience by myself.
    Jot down how the hellos and interations made you feel. What was your biggest takeaway? Stay in week 1 for as long as you need. "},
  {title:"Now that we know what brings you joy, notice I didn’t say happy. Seeing rainbows makes me happy, but we are talking contentment and a deeper sense of fulfilment here. If you mistook happiness for joy, you can re-do week 2. The pages are not going anywhere, they will be here when you are ready for week 3. If you got joy right then go ahead and examine them with the below prompt.
    Examine your 3 joy bringers. Do they truly fulfill and why?" },
  {title:"How was that? You’re feeling braver? It is okay if you aren’t. Keep reaching out one week at a time and before you know it you will be doing what brings you joy, alongside people that do too. Your community can be as beautiful as you allow it to be.
    Write down how the week went. What did the no’s bring up for you? Note any fears of rejection coming up to the surface, but don’t give in to them. " },
  {title:"Keep going. Building community can get hard because it involves people. And if we have been alive long enough we know just how complex we can be. But we are worth the risk. And so are you. You are worth knowing. Give people another chance. Please, it gets so much better.
     Stay here this week. Meditate on it, write it out, run it out. Whatever you’re in to. Just don’t quit." },
  {title:"How did letting go of your expectations turn out? Were you able to let people and experiences just BE? We are a complicated specie, the more we try to control outcomes the less we are able to control. Talk through your frustrations with people, let them know how their actions make you feel. But don’t retreat back into yourself. Take some time out if you need to. Week 6 will be ready when you are.
     Don’t forget to breathe. Give yourself permission to be in community, to be seen, heard and loved. " },
  {title:" How was that? Don’t worry if you couldn’t meet up in person or you couldn’t schedule a call for this week because of conflicting schedules. Stay in week 6 until you have that re-connection. It can be an illuminating exercise, seeing yourself through the lens of the people that you love and that love you back. (very key, here)
    People cannot love you through what they don’t know about. Tell your old friend(s) the truth of where you are and where you are going." },
  {title:"How was taking a step back and getting back to self? Community is beautiful but sometimes we need to check back in with ourselves. How does our life feel to us? Do we have peace? Why or why not? What is keeping us from having it and how can we get it back? Recharging & reseting was our focus for the week.
     Write down any AHA moments you had this week. What truths came up about where you are in space and time right now?. How do you feel about them?
      You are worthy of a calm and peaceful life. " },
  {title:"Let’s get personal. Some of my most consquential relationships and friendships have come from people I would have never expected. They were husbands of friends, into science-fiction, people twice my age and half my age. I am not saying go and befriend your married friend’s signifcant other. But I am saying be open to connections that can come from literally anywhere. They remind you that no matter how old you get, life can still be magical.
     How did the unlikely encounters make you feel? Are you open to more? Your ability to belong is only as limited as your ability to love." },
  {title:" Please forgive yourself for all of the relationships that never worked out. Every interaction changed you for the better. There is so much good in all the parts of yourself that bled, they only teach you to how to be a better seeker of all of the things that are more aligned to this you. Each experience brings you one step closer to home. Unpack the lessons, bid farewell to the pain and say hello to the adventure that awaits you in authentic communities where the whole you, belongs.
    Which community did you get into? Which experiences or conversations most resonated with you? You can always start over." },
  {title:"We are what we pay attention to. This week was focusing on all the unphysical parts such as your thoughts and beliefs that make you who you are. We certainly wouldn’t want you in community as anyone other than your most authentic self. Connect with all the parts of yourself that make you feel most alive. Lean into that, and let that guide the experiences, people and places you inhabit. You can give yourself permission to be in healthy and reciprocal relationships. Loving relationships are not just possible, they have your name written on it. Your squad is looking for you too, please let them find you.
     How was the week? What truths revealed themselves to you? Lean into everything that makes you feel glad to be alive. " },
  {title:"How has your life being shaped this week? What has it taken to bring together your most sacred parts of yourself face-to-face with the volatility of human emotions? What does it really mean for you to belong to yourself and to be part of something greater than you? The breadth of human experience is found in exploring all the different ways we can be connected to each other without losing ourselves in the process.
     Celebrate yourself now. Everything you have survived has led you here. And you never left you, no matter how hard it got. You were there for yourself when no one else was . If that is not victory, then I don’t know what it is.
     Manifesting main character energy." },
  {title:" Whenever you find yourself, going back to old past  behaviours that once kept you lonely. Come back to this workbook. Look at where you started, sit though the messiness of the middle and flip through until the end. Marvel at the journey you have had, the times you felt uncomfortable and challenged past what you believed was possible. Call home to the experiences, activities, people and spaces that made you feel the most connected. Drink that in, and keep intentionally surrounding yourself with authentic community. Please stay UN-LONELY. I love you.
    Write down new thought patterns you will say back to yourself when you need reinforcement or simply when you need a  reminder, of just how remarkable your life  can be when you are socially connected.
    “Veni, Vedi, Amavi.” - “We came, we saw, we loved." }
                ]

reflections_array.each_with_index do |reflection, index|
  Reflection.create!(
    journal_id: journals[index].id,
    title: reflection[:title]
  )
end
puts "Created #{Reflection.count} reflections."
