Given(/^the user open imdb top page$/) do
  @imdb_top_page = ImdbChartTopPage.new(@browser)
  @imdb_top_page.open_imdb_top_page
end

When(/^they check that table is exists$/) do
  @imdb_top_page.check_table
end

When(/^they select (.*?) sort$/) do |sort|
  @imdb_top_page.select_sorting_option(sort)
end

When(/^they navigate to rated western page$/) do
  @imdb_top_page.click_on_sort_by_genre
end

When(/^they change sorting type to (.*?)$/) do |sort|
  @imdb_top_page.select_list_sorting_option(sort)
end
