# Dart OOP Assignment: Kigali Bus Card

**Name:** Mohammed Hammed  
**Student ID:** 27267

## My numbers
- D = 67
- L = 7
- Starting balance = 1670 RWF
- Bus fare = 267 RWF
- Student discount = 17%

## Part 1: Why no setter for balance?

We don't use a setter for the balance because we want to protect it from invalid changes. Instead, we use `topUp()` and `pay()` to control how the balance increases and decreases.

## Part 2: What does ~/ do?

The `~/` operator performs integer division. It returns an integer and removes the decimal part of the result, while `/` returns a double.

## Part 3: Testing the BusCard and StudentCard

### Output of main.dart
ERROR!
Error: name too short
Owner: Mohammed | Balance: 1670 RWF
Owner: Mohammed Hammed | Balance: 1670 RWF
Your amount triying to deposit is less or equal to 500
You have Successfully deposit 2000 in your wallet
Paid 267 RWF
Paid 267 RWF
Owner: Mohammed Hammed | Balance: 3136 RWF
Student discount: 45 RWF
Paid 222 RWF
Owner: Mohammed Hammed | Balance: 1448 RWF
Student card: 17% off



## Part 4: Bug Hunt

| Bug | The line | Why it is wrong (your words) | Your fix |
|---|---|---|---|
| 1 | `String _brand;` and `int _battery;` | These fields do not have initial values, but they are non-nullable. | Initialize them with `String _brand = '';` and `int _battery = 0;` |
| 2 | `SmartPhone(String brand, int battery, String system)` | The child constructor does not call the parent constructor. | Add `: super(brand, battery)` |
| 3 | `@override void restart()` | The parent class does not have a `restart()` method to override. | Add `void restart()` to the `Phone` class. |
| 4 | `p.battery = 100;` | The `Phone` class has no setter for battery. | Add a setter that accepts values from 0 to 100. |
| 5 | `print(p.battery());` | A getter is accessed like a property, not called like a method. | Change it to `print(p.battery);` |
| Not a bug | `Phone p = new Phone('Tecno', 50);` | Using `new` is valid Dart syntax. | No fix needed. |

## Part 5: Bag and BigBag

**My prediction:**

(Write your predicted output before running the program.)

**Real output:**

(Paste the actual output after running the program.)

**Was I right?**

(Explain whether your prediction matched the actual output.)
