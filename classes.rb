#a class is a way to make an "object" with specific characteristics

class Student 
  
  def initialize(name, age, school) 
    @name = name
    @age = age
    @school = school
  end
  
  #getter/ accessor (a way to ask for or 'get' information)
  def school 
    @school
  end
  
  #setter (a way to change/update information)
  def school=(new_school)
    @school = new_school
  end
  
  def name
    @name
  end
  
  def age
    @age
  end
  
  def age=(new_age)
    @age=new_age
  end
  
  def say_hello
    puts "What's up??"
  end
  
end

#create a student!

fatima = Student.new("Fatima", 17, "Hillsboro High")
fatima.school = "MTSU"
fatima.age = 18
jazzy = Student.new("Jazzy", 18, "MTSU")
ela = Student.new("Ela", 18, "USC")

#create an array 
kwk_scholars = []
kwk_scholars.push(fatima) 
kwk_scholars << jazzy
kwk_scholars << ela

#print kwk_scholars

#goal, print out student.name, student.school, student.age and make it look nice 

kwk_scholars.each do |student|
  puts student.name
  puts "This student's age is #{student.age}"
  puts "Student School: #{student.school}"
  student.say_hello
end

#Build your own class - pets(name, type, skin_type, food) : books(title, author, pages), actions(type, duration), bank_account(value, name, dob)
#make sure you build an initialize method 
#make a setter and getter for each
#initialize at least two instances of your class


