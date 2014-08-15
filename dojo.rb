class Dojo
  def return_inmutable_array word
    return nil unless word
    return [] if word.empty?
    return /[[:upper:]]/.match(word) ? [0] : []
    else
  end
end
