Then(/^page should return at least one movie in the table$/) do
  @imdb_top_page.verify_table_search_results
end

Then(/^page should return at least one movie in the list$/) do
  @imdb_top_page.verify_list_search_results
end