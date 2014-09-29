class String
  def titleize
    self.gsub(/\s(\w)/) { |letter| letter.upcase }.gsub(/^\w/) do |letter|
      letter.upcase
    end
  end
end