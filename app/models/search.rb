class Search < ActiveRecord::Base


  def reviews
    reviewsearchset ||= find_reviews

  end


  def find_reviews
    reviews = Review.all
    reviews = reviews.where(manufacturer_id: manufacturer_id) if manufacturer_id.present?
    reviews = reviews.where(car_year: car_year) if car_year.present?
    reviews = reviews.where("review_note ILIKE ?", "%#{search_text}%") if search_text.present?
    reviews = reviews.where("car_model ILIKE ?", "%#{car_model}%") if car_model.present?
    reviews = reviews.where("service_date <= ?", search_end) if search_end.present?
    reviews = reviews.where("service_date >= ?", search_start) if search_start.present?


    reviews
  end


  def star1(rating)
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


  private


end
