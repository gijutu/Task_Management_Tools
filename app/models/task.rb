class Task < ApplicationRecord
  validates :title,presence: true
  enum status: {not_started_yet:1, started:2, complete:3}

  def self.search(search1, search2)
    if search1.present?
      Task.where(title: search1 ,status: search2)
    else
      Task.all
    end
  end
end
