require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
  	self.end_with?("?")
  end

  def exclamation?
  	self.end_with?("!")
  end

  def count_sentences
  	if !self.include?(".") && !self.include?("!") || !self.include?("?")
  		return 0
  	else
	  	count = 0
	  	num_periods = self.split(".")
	  	count += num_periods.length - 1
	  	num_ep = self.split("!")
	  	count += num_ep.length
	  	count
	  end
  end

end