class Node
	attr_accessor :value, :left, :right
	def initialize(value =nil)
		@value = value
		@left = nil
		@right = nil
	end

end

class BinarySearchTree
	attr_accessor :root_node
	def initialize(value = nil)
		@root_node = Node.new(value)
	end

	def insert_node(val)
		node = @root_node
		while node != nil
			if (val < node.value) && (node.left == nil)
				node.left = Node.new(val)
			elsif (val > node.value) && (node.right == nil)
				node.right = Node.new(val)
			elsif (val < node.value)
				node = node.left
			elsif (val > node.value)
				node = node.right
			else
				return
				
			end
		end
	end
	def printout(node =@root_node)
		list = []
		return if node == nil
			
		printout(node.left)
		list.push(node.value)
		puts node.value.to_s
		printout(node.right)

	end

	def search(v)
		node = @root_node
		while node != nil
			if node.value == v
				return node
			elsif node.value < v
				node = node.right
			elsif node.value > v
				node = node.left
			else
				return false
				
						
			end
		end
	end
	def delete(v)
		node = search(v)
		return false if node == nil
		if (node.left == nil) && (node.right == nil)
			node = nil
		elsif (node.left != nil) && (node.right == nil)
			node = node.left
			node.left = nil
		elsif (node.left == nil) && (node.right != nil)
			node = node.right
			node.right = nil
		else
			p "this is the most difficult case and I'm still thinking"
			return
			
			
		end



	end


	

	
end

binary = BinarySearchTree.new(10)
binary.insert_node(11)
binary.insert_node(9)
binary.insert_node(8)
binary.insert_node(5)
binary.insert_node(2)
binary.insert_node(7)

binary.printout
p binary.search(9)
p binary.search(6)
p binary.delete(5)
p "a print otu of the tree: "
binary.printout
binary = binary.delete(7)
p "after delete 7: "
binary.printout

