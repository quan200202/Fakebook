module ApplicationHelper
  def gravatar_for(users, options = { size: 200})
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest
  end
end
