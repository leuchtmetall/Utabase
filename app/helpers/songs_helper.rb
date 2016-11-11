# encoding: utf-8
module SongsHelper
  def rating_stars(rating)
    if !rating || rating == 0
      ''
    elsif rating < 11
      '⭐️' * (rating / 2) + '✨' * (rating % 2)
    else
      '🌟' * 5
    end
  end
end
