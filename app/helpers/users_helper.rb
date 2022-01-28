module UsersHelper 
  def user_gravatar(user)
      if user_signed_in?
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: user.name)
      end
    end
    def get_random_user_id
    User.ids.sample(3)
      end

  end
  