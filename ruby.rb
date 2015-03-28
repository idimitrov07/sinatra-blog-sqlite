# start the file

puts "ello ruby "

x =  5 
name = "MIchealer"
puts "#{name} #{x}"

myList = [1,2,3,4,5]
puts myList[0]

dict = {
	"name" => "MIchealer",
	eeme: "ivass"

}

puts dict["name"]
puts dict[:eeme]

#symbols
#like strings but not string
dict2 = {
	:name => "johns",
	eee: "asdas"
}

puts dict2[:name]
puts dict2[:eee]

if dict2[:name] == "johns"
	puts "yes"
else
	puts "no"
end

def add_three(n)
	n + 3
end

puts add_three(5)

w = [1,2,3,4,5,6]
w.each do |el|
	puts el + 44
end

name = "max"
puts "my name is: #{name}"

















