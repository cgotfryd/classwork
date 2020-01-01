class Room
	def initialize(exits, desc, id)
		@exits = exits
		@desc = desc
		@id = id
	end

	def get_exits
		return @exits
	end

	def get_desc
		return @desc
	end

	def get_id
		return @id
	end

end

crExits = ["west","south"]
crDesc = "This is a large rectangular room with a couch, several computer desks, and a large window to the east."
crId = "classroom"
classroom = Room.new(crExits, crDesc, crId)

puts classroom.get_id
puts classroom.get_desc
puts classroom.get_exits