class MyArray 
  def initialize(str)
    @str = str
  end
  
  def operation
    par_open = /\(/
    par_close = /\)/
    par_both = /\(*(\(*\d+\s((\+|\-){0,2}|\*|\/)\s\d+\)*((\+|\-){0,2}|\*|\/){0,1})+\)*/ 
    letras = /[A-z]/
    unless letras.match(@str) 
      if !par_open.match(@str).nil? && !par_close.match(@str).nil?
        if par_open.match(@str).size == par_open.match(@str).size && par_both.match(@str) 
          true
        else
          false   
        end
      elsif par_open.match(@str).nil? && par_close.match(@str).nil? && par_both.match(@str)
        true
      else
        false
      end
    else
      false
    end
  end

  def compute
    if operation
      eval(@str)
    else
      false
    end
  end
end

arrays = ["Hello world","2 + 10 / 2 - 20"  , "(2 + 10) / 2 - 20" , "(2 + 10 / 2 - 20"]


arrays.each do |ar|
  o = MyArray.new(ar)
  puts o.operation
  puts o.compute
end