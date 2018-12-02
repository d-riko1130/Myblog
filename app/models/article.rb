class Article < ApplicationRecord
  enum article_status: {
    active: 1,
    archive: 2
  }
end
