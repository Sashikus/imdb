require 'test/unit'
require 'hashie'
require 'hashie/hash'
include Test::Unit::Assertions

class ImdbChartTopPage

ELEMENTS = Hashie::Mash.new(
    table_top_movie:         'table.chart',
    table_row:               'table tr',
    title_column:            'table tr td.titleColumn',
    top_page_address:        'http://www.imdb.com/chart/top',
    sort_by_dropdown:        'select.lister-sort-by',
    ranking_sort:            "option[value='rk:ascending']",
    imdb_sort:               "option[value='ir:descending']",
    release_date_sort:       "option[value='us:descending']",
    number_of_ratings_sort:  "option[value='nv:descending']",
    your_rating_sort:        "option[value='ur:descending']",
    quicklinks:              'ul.quicklinks  li.subnav_item_main a[href]',
    popularity_sort:         'div.sorting a.moviemeter',
    alpha_sort:              'div.sorting a.alpha',
    user_rating_sort:        'div.sorting a.user_rating',
    num_votes_sort:          'div.sorting a.num_votes',
    boxoffice_us_sort:       'div.sorting a.boxoffice_gross_us',
    runtime_sort:            'div.sorting a.runtime',
    year_sort:               'div.sorting a.year',
    release_date_sort:       'div.sorting a.release_date',
    advanced_list:           'div.lister-list',
    list_item:               'div.lister-list div.lister-item',
    list_sorting_options:    'div.sorting a[href]'
)

  def initialize(driver)
    @driver = driver
  end

  #this method is responsible to open imdb top page
  def open_imdb_top_page
    @driver.navigate.to ELEMENTS.top_page_address
  end

  def check_table
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    table = wait.until {
      element = @driver.find_element(:css, ELEMENTS.table_top_movie)
      element if element.displayed?
    }
    puts "Chart table found" if table
  end

  # Iterate through all cells of the table and count them
  def count_table_rows
    rows = @driver.all(:css, ELEMENTS.table_row).size
    puts rows
  end

  # print all movie names(columnTitles)
  def print_all_titles
    @driver.find_elements(:css, ELEMENTS.title_column).each do |title|
      puts "Cell Value is: " + title.text
    end
  end

  # this method is intended to check if at least one element(first table item) is exists
  def verify_table_search_results
    assert_not_nil(
        @driver.find_elements(:css, ELEMENTS.title_column)[0])
  end

  def click_on_sort_by
    @sort_by = @driver.find_element(:css, ELEMENTS.sort_by_dropdown)
    @sort_by.click
  end

  def select_sorting_option(sort)
    click_on_sort_by
    case sort
      when 'ranking'
        option = @sort_by.find_element(:css, ELEMENTS.ranking_sort)
      when 'imdb'
        option = @sort_by.find_element(:css, ELEMENTS.imdb_sort)
      when 'release date'
        option = @sort_by.find_element(:css, ELEMENTS.release_date_sort)
      when 'number of ratings'
        option = @sort_by.find_element(:css, ELEMENTS.number_of_ratings_sort)
      when 'your rating'
        option = @sort_by.find_element(:css, ELEMENTS.your_rating_sort)
    end

    option.click
  end

  # navigate to Western genre
  def click_on_sort_by_genre
    @driver.find_elements(:css, ELEMENTS.quicklinks).each do |title|
      if title.text == 'Western'
        title.click
      end
    end
  end

  # Iterate through all list items and count them
  def count_list_items
    number_of_items_= @driver.all(:css, ELEMENTS.list_item).size
    puts number_of_items
  end

  # this method is intended to check if at least one element(first list item) is exists
  def verify_list_search_results
    assert_not_nil(
        @driver.find_elements(:css, ELEMENTS.list_item)[0])
  end

  def select_list_sorting_option(sort)
    case sort
      when 'alpha'
        option = @driver.find_element(:css, ELEMENTS.alpha_sort)
      when 'popularity'
        option = @driver.find_element(:css, ELEMENTS.popularity_sort)
      when 'user rating'
        option = @driver.find_element(:css, ELEMENTS.user_rating_sort)
      when 'num votes'
        option = @driver.find_element(:css, ELEMENTS.num_votes_sort)
      when 'boxoffice us'
        option = @driver.find_element(:css, ELEMENTS.boxoffice_us_sort)
      when 'runtime'
        option = @driver.find_element(:css, ELEMENTS.runtime_sort)
      when 'year'
        option = @driver.find_element(:css, ELEMENTS.year_sort)
      when 'release date'
        option = @driver.find_element(:css, ELEMENTS.release_date_sort)
    end

    option.click
  end
end
