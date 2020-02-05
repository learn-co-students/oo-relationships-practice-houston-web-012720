require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

m1 = Movie.new("Lilo and Stitch")
m4 = Movie.new("Lilo and Stitch 2")

m2 = Movie.new("The Little Mermaid")
m3 = Movie.new("Mulan")

m4 = Movie.new("Hey Arnold The Movie")

s1 = Show.new("The Office")
s2 = Show.new("That 70s Show")
s3 = Show.new("Hey Arnold")

a1 = Actor.new("lilos voice") 
a2 = Actor.new("stitchs voice") 
a3 = Actor.new("mermaids voice")
a4 = Actor.new("mulans voice")
a5 = Actor.new("Jim guy")
a6 = Actor.new("Fez guy")
a7 = Actor.new("arnolds voice") 
a8 = Actor.new("helgas voice")


c1 = Character.new("Lilo", m1, a1)
c9 = Character.new("Lilo 2", m1, a1)
c10 = Character.new("Lilo", m4, a1)


c2 = Character.new("Stitch", m1, a2)
c3 = Character.new("Mermaid", m2, a3)
c4 = Character.new("mulan", m3, a4)
c5 = Character.new("Jim",s1, a5)
c6 = Character.new("Fez",s2, a6)
c7 = Character.new("Arnold", s3, a7)
c8 = Character.new("Helga",s3, a8)

c9 = Character.new("Stitch", m1, a8)
























binding.pry
0
