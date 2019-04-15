class Array
def quicksort
	return [] if empty?
	pivot = delete_at(rand(length))
	left, right = partition{|n| n< pivot} //partition(&pivot.method(:<))
	return *left.quicksort, pivot, *right.quicksort

end
end


def binarysearch(array,value)
	low = 0
	high = array.length - 1

	while low <= high
		mid = low + ((high - low) / 2)

		if array[mid] == value
			return mid
		elsif array[mid] < value
			low = mid+1
		else 
			high = mid-1
			
		end
	end
	return "not found"
end


def myquicksort(arr, left, right)
	return if left >= right
	pivot = arr[(left + right)/2]
	idx = partition(arr,left, right, pivot)
	myquicksort(arr,left, idx -1)
	myquicksort(arr,idx, right)
	return arr

end

def partition(arr,left, right, pivot)
	while left < right
		while arr[left] < pivot
			left+=1
		end
		while arr[right] > pivot
			right-=1
			
		end
		if left < right
			arr[left], arr[right] =  arr[right], arr[left]	
			left+=1
			right-=1
		end
	end
	left

end



a = [8,45,3,6,2,0,12,5]
p a.quicksort
a = a.quicksort
b = %w(hello you esdd ihhf international zeta)
b= b.quicksort

p b
p binarysearch(b,"you")
#p binary_search(b, "you")
p binarysearch(a,6)
#p myquicksort(a,0,a.length-1)
