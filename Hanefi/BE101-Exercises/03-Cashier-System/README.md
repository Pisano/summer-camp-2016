# Specs

Write a **cashier** system that will take an array `basket` of **articles** and return the correct price of the entire basket. Articles in `basket` are in random order. The cashier can _scan_ one article at a time, it can't evaluate the entire basket at once.

There are 3 articles in the **Shop**:

| name      | code | price    |
|-----------|------|----------|
| Fruit tea | FR1  | 3.11 TL  |
| Apple     | AP1  | 5.00 TL  |
| Coffee    | CF1  | 11.23 TL |

The Shop is offering some discounts:

- Fruit tea: you get 1 free for one bought
- Apple: if you buy 3 or more: the first 2 are normal price, the next ones 50% reduction

Write a program in `lib/cashier.rb` that works and returns the correct price:

```ruby
basket = [AP1, FR1, AP1, CF1, FR1, AP1] # (AP1: 5.0 + 5.0 + 2.50, FR1: 3.11 + 0, CF1: 11.23)
puts cashier(basket) # => 26.84
```

#### Hint

Look at the highlighted words in the description, they are here to help you.

# Test

when you think you are good, type `rake` in your terminal, all tests must be green. Ideally you should not have any style offense.
