class Show < ActiveRecord::Base

  def self.highest_rating
    group("rating").order("rating DESC").limit(1)[0].rating
  end

  def self.most_popular_show
    self.find_by(rating: self.highest_rating)
  end

  def self.lowest_rating
    group("rating").limit(1)[0].rating
  end

  def self.least_popular_show
    self.find_by(rating: self.lowest_rating)
  end

  def self.ratings_sum
    sum("rating")
  end

  def self.popular_shows
    where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    group("name")
  end
end
