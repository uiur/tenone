# encoding: UTF-8
class Course < ActiveRecord::Base
  attr_accessible :enrollment, :faculty, :name, :pass, :teacher
  paginates_per 100

  def percentage
    (pass.to_f / enrollment).round(3)
  end

  def rate
    case percentage
    when 0.8..1.0
      '神'
    when 0.0..0.5
      '鬼'
    else
      ''
    end
  end
end
