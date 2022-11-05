class Post < ApplicationRecord
  def generate_permalink(count = 0)
    new_permalink = title
                      .gsub(/((?!\p{Alnum}|\p{So}).)+/, "-")
                      .delete_prefix("-")
                      .delete_suffix("-")
                      .downcase[0..49]

    if count > 0
      new_permalink += "-#{count}"
    end

    if self.class.find_by(permalink: new_permalink)
      new_permalink = generate_permalink(count + 1)
    end

    new_permalink
  end
end
