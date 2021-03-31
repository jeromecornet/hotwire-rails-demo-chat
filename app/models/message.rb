class Message < ApplicationRecord
  belongs_to :room
  broadcasts_to :room, inserts_by: :append, replace_if_present: :itself
end
