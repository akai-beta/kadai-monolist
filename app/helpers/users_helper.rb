module UsersHelper
  def gravatar_url(user, opation = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]  
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=mp"
  end
end
