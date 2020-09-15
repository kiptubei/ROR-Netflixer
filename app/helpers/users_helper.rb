module UsersHelper
  def render_user(user)
    if user[:photo].nil?
      # image_tag(@opinion.author.photo.thumb.url)
      gravatar_for(user, size: 50)
    else
      # image_tag(user.photo.thumb.url, class: 'photo')
    end
  end

  def user_img(_user)
    if @user[:photo].nil?
      image_tag(@opinion.Author.photo.thumb.url)
      gravatar_for(@user, size: 100)
    else
      image_tag(@user.photo.medium.url, class: 'rounded-circle ml-3 mr-3')
    end
  end

  def same_user(_user)
    if current_user[:photo].nil?
      gravatar_for(current_user, size: 50)
    else
      # image_tag(current_user.photo.thumb.url)
      # image_tag(Cloudinary::Uploader.upload(current_user.photo.thumb.url))
    end
  end

  def hero(_user)
    if @user[:CoverImage].nil?
      '<img src="https://via.placeholder.com/150" alt="">'.html_safe
    else
      image_tag(@user.CoverImage.standard.url, class: 'photo-hero shadow-lg p-3')
    end
  end
end
