# frozen_string_literal: true

roles = %w[admin other]
roles.each do |role_name|
  Role.find_or_create_by(name: role_name)
end
