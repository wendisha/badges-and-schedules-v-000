attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker (name)
    badges = "Hello, my name is #{name}."
end

def batch_badge_creator (attendees)
  all_badges = []
  attendees.each do |speakers|
    badge = badge_maker (speakers)
    all_badges << badge
  end
  all_badges
end

def assign_rooms (attendees)
  rooms = []
  attendees.each_with_index do |speakers, index|
    assignment = "Hello, #{speakers}! You'll be assigned to room #{index+=1}!"
    rooms << assignment
  end  
  rooms
end

def printer (attendees)
  printbadges = batch_badge_creator (attendees)
  printbadges.each do |eachbadge|
    puts eachbadge
  end
  
  printrooms = assign_rooms (attendees)
  printrooms.each do |eachroom|
    puts eachroom
  end
end