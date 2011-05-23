# == Schema Information
#
# Table name: writers
#
#  id         :integer         not null, primary key
#  firstname  :string(255)
#  lastname   :string(255)
#  about      :text
#  www        :string(255)
#  twitter    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  sex        :string(255)
#  nickname   :string(255)
#  permalink  :string(255)
#  visible    :boolean         default(TRUE)
#  email      :string(255)
#  www_label  :string(255)
#  avatar     :string(255)
#  facebook   :string(255)
#

class Writer < ActiveRecord::Base
  has_and_belongs_to_many :articles
  #attr_accessible :fullname, :about, :www, :twitter
  
  SEXES = [['moški', 'male'], ['ženski', 'female'], ['srednji', 'nuteral']]
  
  def to_param
    "#{id}-#{permalink}"
  end
end
