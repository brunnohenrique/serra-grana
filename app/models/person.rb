class Person < ApplicationRecord
  enum :pronoun, { mr: 0, ms: 1, dr: 2 }
end
