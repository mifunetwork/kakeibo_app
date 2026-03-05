class Expense < ApplicationRecord
    validates :date, presence: true
    validates :amount, presence: true, numericality: { greater_than: 0 }
    validates :category, presence: true

    CATEGORIES = ["食費", "交通費", "日用品", "光熱費", "娯楽", "その他"].freeze
    PAYMENT_METHODS = ["PayPay", "現金", "クレジットカード", "その他"].freeze
end
