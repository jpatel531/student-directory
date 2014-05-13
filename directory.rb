puts "The students of my cohort at Makers Academy"
puts "----------"
students = ["Jamie Patel",
"Faezrah Rizalman",
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"The Alien",
"Terminator",
"Freddy Kruger",
"The Joker"]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------"
end

def print(names)
names.each { |name| puts name}
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)