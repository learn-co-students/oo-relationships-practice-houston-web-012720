# create files for your ruby classes in this directory

FIRST = ["Helen", "Montgomery", "Ginger", "Dana", "Beth", "Dale", "Isaac", "Orville", "Brenda", "Marlene"]
LAST = ["Pena", "Mckinney", "Burns", "Banks", "Cole", "Stephens", "Owens", "James", "Mckenzie", "Kim"]
ADJ = ["tiresome", "fearless", "woozy", "crowded", "parallel", "terrible", "orange", "paltry", "flimsy", "unaccountable", "unequaled", "gaping"]
NOUN = ["scarf", "camp", "governor", "pin", "current", "crook", "bag", "lettuce", "thumb", "texture", "development", "riddle", ]


def rand_instance_name
  "#{ADJ.sample.capitalize} #{NOUN.sample.capitalize}"
end

def rand_name
  "#{FIRST.sample.capitalize} #{LAST.sample.capitalize}"
end