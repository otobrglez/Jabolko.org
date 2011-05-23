class String
  def to_permalink
    self.gsub(/[^a-z0-9]+/i, '-')
  end
end