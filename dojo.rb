class Dojo
  def return_inmutable_array word
    return nil unless word
    return [] if word.empty?
    return _array_of_upcase_positions word, 0
  end

  def _array_of_upcase_positions word, index, result=[]
    return result if index > word.length
    if /[[:upper:]]/.match(word[index])
      return _array_of_upcase_positions(word, index + 1, (result + [index]))
    else
      return _array_of_upcase_positions(word, index + 1, result)
    end
  end
end
