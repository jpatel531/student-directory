
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------"
end

def print_students_list
@students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end


def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	@students = []
	name = gets.chomp
	while !name.empty? do
		@students << {:name => name, :cohort => :May}
		puts "Now we have #{@students.length} students"
		name = gets.chomp
	end
	return @students
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save student data"
	puts "9. Exit"
end


def show_students
	print_header
	print_students_list
	print_footer(@students)
end

def save_students
	file = File.open("students.csv", "w")
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
	puts "Data saved!"
end

def process(selection)
	case selection
	when "1" 
		input_students
	when "2" 
		show_students
	when "3"
		save_students
	when "9" 
		exit
	else puts "I don't know what you mean, try again"
	end 
end

def interactive_menu
	loop do
	print_menu
	selection = gets.chomp
	process(selection)
end
end

interactive_menu
