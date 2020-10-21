class Connection
  def self.database_name
    if ENV['RACK_ENV'] == 'test'
      'bookmark_manager_test'
    else
      'bookmark_manager'
    end
  end
end
