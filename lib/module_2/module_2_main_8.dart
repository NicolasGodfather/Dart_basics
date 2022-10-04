// 8. Создайте класс User, у которого есть поле email. Реализуйте два наследника данного класса AdminUser и GeneralUser. Реализуйте
// mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @.
// Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser.
// Далее реализуйте класс UserManager<T extends User>, у которого будет храниться список пользователей и будут методы добавления
// или удаления их. Также в UserManager реализуйте метод, который выведет почту всех пользователей, однако если пользователь admin,
// будет выведено значение после @. Проверьте реализованные методы на практике.

import 'package:flutter/cupertino.dart';

var listEmails = [
  "admin@asd.com",
  "asd123@asdf.com",
  "asd456@asdf.com",
  "asd@asd567.com",
  "asd@asd890.com"
];

void main() {
  var manager = UserManager();

  for (var i in listEmails) {
    if (i.contains("admin")) {
      manager.addItemToList(AdminUser(i));
    }   else {
      manager.addItemToList(GeneralUser(i));
    }
  }

  manager.printAllEmails();
}

class User {
  String email = "";
}
class AdminUser extends User with MixinUser {
  AdminUser(String s) {
    email = s;
  }
}

mixin MixinUser on User {
  String getMailSystem() {
    if (email.contains("@")) {
      var array = email.split("@");
      return array.length == 2 ? array[1] : "";
    }
    return "";
  }
}

class GeneralUser extends User {
  GeneralUser(String s) {
    email = s;
  }
}

class UserManager<T extends User> {
  List<User> list = [];

  addItemToList(User user) {
    list.add(user);
  }

  deleteItemToList(User user) {
    list.remove(user);
  }

  printAllEmails() {
    for (var i in list) {
      if (i is AdminUser) {
        debugPrint("***System mail is: ${i.getMailSystem()}");
      } else {
        debugPrint("***Mail is: ${i.email}");
      }
    }
  }
}
