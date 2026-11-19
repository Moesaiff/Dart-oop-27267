class BusCard {
  String _owner = '';
  int _balance = 0;

  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  String get owner {
    return _owner;
  }

  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }
    int get balance{
      return _balance;
      }
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  void topUp(int amount) {
    if (amount < 500){
      print('Your amount triying to deposit is less or equal to 500');
    }else{
      _balance += amount;
      print('You have Successfully deposit $amount in your wallet');
  }
  }

    void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance -= fare;
      print('Paid $fare RWF');
    }
  }
    
  }

  


class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  @override
  void pay(int fare) {
    
  }
}

void main() {
  BusCard card = BusCard('Mohammed', 1670);

  card.owner = 'Al';
  card.showInfo();

  card.owner = 'Mohammed Hammed';
  card.showInfo();

  card.topUp(100);
  card.topUp(2000);

  card.pay(267);
  card.pay(267);

  card.showInfo();

  StudentCard studentCard = StudentCard('Mohammed Hammed', 1670, 17);

  studentCard.pay(267);
  studentCard.showInfo();
}
