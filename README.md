# Cards

This project is a simple Elixir implementation of a deck of cards. It demonstrates how to create, shuffle, check for specific cards, and deal cards from a deck. The code is based on lessons from the Udemy course **"The Complete Elixir and Phoenix Bootcamp"**.

---

## Functions

The following functions are implemented in the `Cards` module:

### 1. `create_deck/0`

- **Description**: Creates a deck of cards by combining a list of values (e.g., `"Ace"`, `"Two"`, etc.) with a list of suits (e.g., `"Hearts"`, `"Diamonds"`).
- **Returns**: A list of strings representing the cards.

### 2. `shuffle/1`

- **Description**: Takes a deck (list of cards) as input and returns a shuffled version of the deck using `Enum.shuffle/1`.

### 3. `contains?/2`

- **Description**: Checks if a specific card is present in the deck.
- **Implementation**: Uses `Enum.member?/2` to perform the check.
- **Returns**: `true` if the card exists, otherwise `false`.

### 4. `deal/2`

- **Description**: Splits the deck into two parts: the first `hand_size` cards and the remaining cards.
- **Implementation**: Uses `Enum.split/2` to perform the split.
- **Returns**: A tuple `{hand, remaining_deck}`.

---

## Purpose

This project is a simple demonstration of functional programming concepts in Elixir, including:

- **List comprehensions**
- **Enum module functions**
- **Pattern matching**
- **Immutability**

It is a great starting point for understanding how to work with collections and functional paradigms in Elixir.

---

## How to Run

1. **Clone the repository**:

```bash
git clone <repository-url>
cd cards
```

2. **Open an interactive Elixir shell**:

```bash
iex -S mix
```

3. **Use the functions in the `Cards` module**:

```elixir
deck = Cards.create_deck()
shuffled_deck = Cards.shuffle(deck)
{hand, remaining_deck} = Cards.deal(shuffled_deck, 5)
```

---

## Dependencies

- **Elixir** 1.14 or higher

---

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

---

## License

This project is licensed under the **MIT License**. See the `LICENSE` file for details.

---

## Course Reference

This project is part of the Udemy course:  
**"The Complete Elixir and Phoenix Bootcamp"**  
Master Functional Programming techniques with Elixir and Phoenix while learning to build compelling web applications.

