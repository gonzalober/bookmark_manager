def clear_database
  test_connection = PG.connect(dbname: "bookmark_manager_test")
  result = test_connection.exec("TRUNCATE TABLE bookmarks RESTART IDENTITY;")
end
