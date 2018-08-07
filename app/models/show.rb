class Show < ActiveRecord::Base

    def self.highest_rating
        best = Show.maximum(:rating)
        best
    end

    def self.most_popular_show
        rating = Show.highest_rating
        show = Show.find_by(:rating => rating)
        show
    end

    def self.lowest_rating
        best = Show.minimum(:rating)
        best
    end

    def self.least_popular_show
        rating = Show.lowest_rating
        show = Show.find_by(:rating => rating)
        show
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating >5")
    end

    def self.shows_by_alphabetical_order
        Show.all.order(:name)
    end

end
