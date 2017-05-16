class Pet < ApplicationRecord
  def is_found
    self.found = true
  end

  def is_unfound
    self.found = false
  end
end
