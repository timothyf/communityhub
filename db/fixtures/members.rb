Member.seed(:id,
  {
    :id => 1, :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password', :admin => true
  },
  {
    :id => 2, :email => 'testuser1@example.com', :password => 'password', :password_confirmation => 'password', :admin => false
  },
  {
    :id => 3, :email => 'timothyf@gmail.com', :password => 'password', :password_confirmation => 'password', :admin => true
  }
)
