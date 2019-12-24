class MyMatrix
  def initialize(matrix)
    @matrix = matrix
    @matrix_string = @matrix.to_s
    @matrix_size_char = @matrix_string.size
  end
  
  def dimension
    count = 0
    dimension = 0 
    while count < @matrix_size_char
        if @matrix_string[count] == "["
          dimension += 1
        end
        if @matrix_string[count] == "]"
          break
        end
        count += 1
      end
    dimension
  end

  def straight
    count = 1
    comparation = []
    marca = []
    while count < @matrix_size_char -1 
      if @matrix_string[count] == "]"
        if @matrix_string[count - 1] != "]"
          marca.push(1)
        else
          marca.push(0)
          comparation.push(marca)
          marca = []
        end
      end
      count += 1
    end
    vect = comparation.sort
    if vect[0] != vect[1] && vect[1].nil? == false
      false
    else
      true
    end
  end

  def compute
    count = 0
    sum = 0
    while count < @matrix_size_char
        if @matrix_string[count] != "[" && @matrix_string[count] != "]" && @matrix_string[count] != " " && @matrix_string[count] != ","
          sum += @matrix_string[count].to_i 
        end
        count += 1
      end
    sum
  end
end

a = [ [1,2] , [[1,2],[2,4]] , [[1,2],[2,4],[2,4]] , [[[3,4],[6,5]]] , [[[1, 2, 3]], [[5, 6, 7],
[5, 4, 3]], [[3, 5, 6], [4, 8, 3], [2, 3]]] , [[[1, 2, 3], [2, 3, 4]], [[5, 6, 7], [5, 4, 3]], [[3, 5, 6], [4, 8, 3]]]]

a.each do |matrix|
  o = MyMatrix.new(matrix)
  #puts o.matrix
  #puts o.dimension
  #puts o.straight
  puts o.compute
end

