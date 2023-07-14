# frozen_string_literal: true

user = User.new
user.first_name = 'Admin'
user.last_name = 'User'
user.email = 'admin@shopapp.com'
user.password = '12345678'
user.password_confirmation = '12345678'
user.save
role = Role.find_by(name: Role::ADMIN)
UserRole.find_or_create_by(user_id: user.id, role_id: role.id)
