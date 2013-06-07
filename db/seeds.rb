# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
s = Hero.find_or_initialize_by_name("Superman")
s.assign_attributes({
  secret_identity: 'Clark Kent',
  abilities: [
    "Superhuman strength", 
    "speed", "stamina", "invulnerability", "flight", "superhuman intelligence", 
    "freezing breath", "superhuman hearing", 
    "multiple extrasensory and vision powers", "longevity", "regeneration"
  ]
})
s.save

s = Hero.find_or_initialize_by_name("Batman")
s.assign_attributes({
  secret_identity: 'Bruce Wayne',
  abilities: [
    "Genius-level intellect",
    "Peak physical and mental conditioning",
    "Master martial artist, acrobat, detective, escapologist, strategist, tactician, and marksman",
    "Use of high-tech equipment, weapons, armors & gadgets",
    "Master of stealth",
    "Master of disguise",
    "Proficient with technology",
    "Access to vast wealth and criminal records",
    "Trained computer hacker",
    "Photographic memory"
  ]
})
s.save

s = Hero.find_or_initialize_by_name("Wonder Woman")
s.assign_attributes({
  secret_identity: 'Diana Prince',
  abilities: %w[super-strength speed agility reflexes stamina endurance]
})
s.save

s = Hero.find_or_initialize_by_name('Green Lantern')
s.assign_attributes({
  secret_identity: 'Harold "Hal" Jordan',
  abilities: ['Power ring']
})
