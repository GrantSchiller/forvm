file = File.new("db/schools.txt", "r")
while (name = file.gets)
  array = name.chomp.split(" : ")
  
  unless name.empty?
    s = School.find_or_create_by(name: array[0])
    
    city = City.find_or_create_by(name: array[1])
    
    s.city = city
    s.save
  end
end

skills = %w[ruby-on-rails ios html php django objective-c opengl]

skills.each do |s|
  Skill.find_or_create_by(name: s)
end
