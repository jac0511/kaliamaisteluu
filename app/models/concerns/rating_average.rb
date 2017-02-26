module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    if ratings.any?
      ratings.map(&:score).inject(&:+)/ratings.count.to_f
    end
  end  
end