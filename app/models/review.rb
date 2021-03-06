class Review < ActiveRecord::Base
  extend EnumerateIt
  #has_enumeration_for :rating
  belongs_to :user
  belongs_to :manufacturer


  def get_all_ratings
    #total = Rating.where('provider_id = ?', self.id)
    #return total
  end

  def get_average_rating
    #total = Rating.select('avg(stars) as avgstar').where('provider_id = ?', self.id).first
    #return total
  end

  def get_count_rating
    #total = Rating.select('count(stars) as countstar').where('provider_id = ?', self.id).first
    #return total
  end

  def showstars(rating)
    tag = ''

    if rating < 0.25
      tag1= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 0.25 and rating < 0.75
      tag1= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag1= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag = tag + tag1

    if rating < 1.25
      tag2= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 1.25 and rating < 1.75
      tag2= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag2= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag = tag + tag2

    if rating < 2.25
      tag3= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 2.25 and rating < 2.75
      tag3= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag3= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag = tag + tag3

    if rating < 3.25
      tag4= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 3.25 and rating < 3.75
      tag4= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag4= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag = tag + tag4

    if rating < 4.25
      tag5= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 4.25 and rating < 4.75
      tag5= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag5= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag= tag + tag5
    return tag
  end


end