Feature: IMDB rated western page
  Loading rated western page
  Sorting by alphabetical, popularity, user rating, num votes, boxoffice us, runtime, year, release date

  Scenario: The rated western page returns at least 1 movie in the list
    Given the user open imdb top page
    When they navigate to rated western page
    Then page should return at least one movie in the list

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by alpha
    Given the user open imdb top page
    When they navigate to rated western page
    And they change sorting type to alpha
    Then page should return at least one movie in the list

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by popularity
    Given the user open imdb top page
    When they navigate to rated western page
    And they change sorting type to popularity
    Then page should return at least one movie in the list

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by user rating
    Given the user open imdb top page
    When they navigate to rated western page
    And they change sorting type to user rating
    Then page should return at least one movie in the list

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by num votes
    Given the user open imdb top page
    When they navigate to rated western page
    And they change sorting type to num votes
    Then page should return at least one movie in the list

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by boxoffice us
    Given the user open imdb top page
    When they navigate to rated western page
    And they change sorting type to boxoffice us
    Then page should return at least one movie in the list

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by runtime
    Given the user open imdb top page
    When they navigate to rated western page
    And they change sorting type to runtime
    Then page should return at least one movie in the list

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by year
    Given the user open imdb top page
    When they navigate to rated western page
    And they change sorting type to year
    Then page should return at least one movie in the list

  Scenario: The top chart page returns at least 1 movie in the list while user sorting by release date
    Given the user open imdb top page
    When they navigate to rated western page
    And they change sorting type to release date
    Then page should return at least one movie in the list
