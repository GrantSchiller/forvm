file = File.new("db/schools.txt", "r")
while (name = file.gets)
  array = name.chomp.split(" : ")
  
  unless name.empty?
    s = School.create(name: array[0])
    
    city = City.find_or_create_by(name: array[1])
      
    s.city = city
    s.save
  end
end
