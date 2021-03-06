class Book < ApplicationRecord
  attribute :price, :float

  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :authors
  has_many :users, through: :reviews
  has_many :memos, as: :memoable

  scope :gihyo, -> { where(publish: '技術評論社') }
  scope :newer, -> { order(published: :desc) }
  scope :top10, -> { newer.limit(10) }

  after_destroy :history_book

=begin
  validates :isbn,
            presence:   true,
            uniqueness: true,
            length:     { is: 17 },
            format:     { with: /\A[0-9]{3}-[0-9]-[0-9]{3, 5}-[0-9]{4}-[0-9X]\z/ }
  validates :title,
            presence: true,
            length:   { minimum: 1, maximum: 100 }
  validates :price,
            numericality: { only_integer: true, less_than: 1000 }
  validates :publish,
            inclusion: { in: %w(技術評論社 翔泳社 秀和システム 日経BP社 ソシム) }
=end

  validates :isbn,
            presence:   { message: 'は必須です' },
            uniqueness: { allow_blank: true,
                          message:     '%{value}は一意でなければなりません' },
            length:     { is:          17,
                          allow_blank: true,
                          message:     '%{value}は%{count}桁でなければなりません' }
  validate :isbn_valid?
  validates :title, uniqueness: { scope: :publish }

  private
  def isbn_valid?
    errors.add(:isbn, 'は正しい形式ではありません。') unless isbn =~ /\A([0-9]{3}-)?[0-9]-[0-9]{3,5}-[0-9]{4}-[0-9X]\z/
  end

  def history_book
    logger.info('delete:' + self.inspect)
  end
end
