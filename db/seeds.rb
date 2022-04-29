Budget.create!(user_id: 1, name: "Actual Budget")
Budget.create!(user_id: 1, name: "What-If Budget")
Budget.create!(user_id: 1, name: "Dream Budget")

Finance.create!(budget_id: 1, name: "rent payments", amount: 1200, category: "housing", frequency: "monthly", tracking: false, transaction_type: "spending")
Finance.create!(budget_id: 1, name: "parking & pet fees", amount: 200, category: "housing", frequency: "monthly", tracking: false, transaction_type: "spending")
Finance.create!(budget_id: 1, name: "restaurants and coffee", amount: 250, category: "dining out", frequency: "monthly", tracking: true, transaction_type: "spending")
Finance.create!(budget_id: 1, name: "day job", amount: 65000, category: "salary", frequency: "annual", tracking: false, taxes: "income", transaction_type: "income")

Purchase.create!(finance_id: 3, name: "Coffee", price: 2.50, category: "Dining Out", frequency: "one time")
Purchase.create!(finance_id: 3, name: "Coffee & a bagel", price: 6, category: "Dining Out", frequency: "one time")
Purchase.create!(finance_id: 3, name: "Lunch", price: 11, category: "Dining Out", frequency: "one time")
