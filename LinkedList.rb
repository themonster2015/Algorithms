class Node
	attr_accessor :value, :next_node
	def initialize(value)
		@value = value
		@next_node = nil
	end
	def tail?
		@next_node.nil?
	end
end

class LinkedList
	attr_accessor :head
	def initialize
		@head = nil
	end

	def add_to_list(value)
		node = @head
		 if @head.nil?
		 	@head = Node.new value 
		 else
		 	while node.next_node
		 		node = node.next_node	
		 	end
		 	node.next_node = Node.new value

		 end
		  
	end

	def find(value)
		node = @head
		if @head == nil
			return false
		end
		if @head.value == value
			return @head
		end

		while node = node.next_node
			if node.value == value
				return node
			end	
			
		end

		return false

	end

	def reverset
		previous = nil
		next_node = nil
		current = @head
		while current
# save the ref to next node to move forward later
			next_node = current.next_node
	# break current link, and set it to node before
			current.next_node = previous
	#keep traversing the list by moving pointers forward
			previous = current
			current = next_node
			
		end
		@head = previous

	

	end

	def prependd(value)
		node = Node.new value
		 old = @head
		 @head = node
		 @head.next_node= old

	end

	def deleteat(value)
		node = @head
		if @head == nil
			return
		end
		if @head.value == value
			@head = @head.next_node
			return
		end
			
		
		while node.next_node
			if node.next_node.value == value
				node.next_node = node.next_node.next_node
				return
			end
			
		end
	end

	def insert_after(value, target)
		node = @head
		if @head.value == target
			old = node.next_node
			node.next_node = Node.new value
			node.next_node.next_node = old
			return
		end
		while node.next_node
			if node.value == target
				old = node.next_node
				node.next_node = Node.new value
				node.next_node.next_node = old
				return
			end
		end
	end

	def count
		node = @head
		if @head == nil
			return 0
		else
			count = 1
			while node.next_node
				count+=1
				
			end
		end
			count
			
		

	end

	def to_string
		node = @head
		return "" if @head.nil?
		while node.next_node
			p "The #{head.value} family"			
		end
	end
	def last_node(node)
		return node if node.tail?
		last_node(node.next_node)
	end

end



linkedlist =  LinkedList.new()
 linkedlist.add_to_list(100)
linkedlist.add_to_list(4)
 linkedlist.add_to_list(6)
 linkedlist.add_to_list(8)

p linkedlist

 linkedlist.find(4)
linkedlist.prependd(0)
# p linkedlist

# linkedlist.deleteat(100)
# p linkedlist
# linkedlist.insert_after(250,4)
#linkedlist.insert_after(500,0)
p linkedlist
p "reverse"
#p reverse_list(linkedlist)
p linkedlist.reverset

# p linkedlist.find_value(5)
# p linkedlist.find_value(6)
# p linkedlist.find_value(8)





