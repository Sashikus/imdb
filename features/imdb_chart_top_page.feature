Feature: IMDB chart top page
  Loading top chart page
  Sorting by imdb, release date, number of ratings, your rating, ranking

  Scenario: The top chart page returns at least 1 movie in the list
    Given the user open imdb top page
    When they check that table is exists
    Then page should return at least one movie in the table

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by IMDB
    Given the user open imdb top page
    When they select imdb sort
    Then page should return at least one movie in the table

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by release date
    Given the user open imdb top page
    When they select release date sort
    Then page should return at least one movie in the table

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by number of ratings
    Given the user open imdb top page
    When they select number of ratings sort
    Then page should return at least one movie in the table

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by your rating
    Given the user open imdb top page
    When they select your rating sort
    Then page should return at least one movie in the table

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by ranking
    Given the user open imdb top page
    When they select ranking sort
    Then page should return at least one movie in the table