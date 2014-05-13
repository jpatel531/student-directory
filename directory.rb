
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------"
end

def print(students)
students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	students = []
	name = gets.chomp

	while !name.empty? {
		students << {:name => name, :cohort => :May}
		puts "Now we have #{students.length} students"
		name = gets.chomp
	}
	return students
end


students = input_students
print_header
print(students)
print_footer(students)