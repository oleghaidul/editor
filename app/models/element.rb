class Element < ActiveRecord::Base
  attr_accessible :title, :name, :type_el

  validates :type_el,
      :presence => true,
      :format => {:with => /(radio|reset|text|checkbox)/}

end