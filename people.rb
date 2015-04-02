

class Person
	attr_accessor:name
	def initialize(name)
	end	

	def greeting		
		puts "Hi, my name is #{name}"
	end
end

class Student < Person
	def learn
		puts "I get it!"	
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"	
	end
end
 
instructor_one = Instructor.new("Chris")
student_one = Student.new("Cristina")
instructor_one.teach
student_one.learn



