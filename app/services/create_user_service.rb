class CreateUserService
  def call
    user = User.find_or_create_by!(email: Rails.application.secrets.email) do |user|
      user.name = "tester"
      user.password = Rails.application.secrets.password
      user.password_confirmation = Rails.application.secrets.password
    end
    user.save!
  end
end
