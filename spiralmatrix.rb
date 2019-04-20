=begin
Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.

Example 1:

Input:
[
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
]
Output: [1,2,3,6,9,8,7,4,5]
Example 2:

Input:
[
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9,10,11,12]
]
Output: [1,2,3,4,8,12,11,10,9,5,6,7]
=end

def spiral_order(matrix)
    result = []
    top = 0
    n = matrix.length
    bottom = n -1
    left= 0
    m = matrix[0].length
    right = m -1
    dir = 1
    while(left <= right && top <= bottom)
        if dir == 1
            for i in (left).upto(right)
                result.push(matrix[top][i])
            end
            top+=1
            dir = 2
        elsif dir == 2
             for i in (top).upto(bottom)
                result.push(matrix[i][right])
            end
            right-=1
            dir = 3
        elsif dir == 3
             for i in (right).downto(left)
                result.push(matrix[bottom][i])
            end
            bottom-=1
            dir = 4
        else
            for i in (bottom).downto(top)
                result.push(matrix[i][left])
            end
            left+=1
            dir = 1
        end
    end
    return result
end
m= [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9,10,11,12]
]

p spiral_order(m)
