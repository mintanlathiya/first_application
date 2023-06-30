class PatternAllList {
  static List<Map<String, dynamic>> pattendata = [
    {
      'function': (int n) => pattern1(n),
    },
    {
      'function': (int n) => pattern2(n),
    },
    {
      'function': (int n) => pattern3(n),
    },
    {
      'function': (int n) => pattern4(n),
    },
    {
      'function': (int n) => pattern5(n),
    },
    {
      'function': (int n) => pattern6(n),
    },
    {
      'function': (int n) => pattern7(n),
    },
    {
      'function': (int n) => pattern8(n),
    },
    {
      'function': (int n) => pattern9(n),
    },
    {
      'function': (int n) => pattern10(n),
    },
    {
      'function': (int n) => pattern11(n),
    },
    {
      'function': (int n) => pattern12(n),
    },
    {
      'function': (int n) => pattern13(n),
    },
    {
      'function': (int n) => pattern14(n),
    },
    {
      'function': (int n) => pattern15(n),
    },
    {
      'function': (int n) => pattern16(n),
    },
    {
      'function': (int n) => pattern17(n),
    },
    {
      'function': (int n) => pattern18(n),
    },
    {
      'function': (int n) => pattern19(n),
    },
    {
      'function': (int n) => pattern20(n),
    },
    {
      'function': (int n) => pattern21(n),
    },
    {
      'function': (int n) => pattern22(n),
    },
    {
      'function': (int n) => pattern23(n),
    },
    {
      'function': (int n) => pattern24(n),
    }
  ];

  static String pattern1(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= i; j++) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern2(int n) {
    String result = '';
    for (int i = n; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern3(int n) {
    String result = '';
    for (int i = n; i >= 1; i--) {
      for (int j = 5; j >= i; j--) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern4(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      for (int j = i; j >= 1; j--) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern5(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      for (int j = 5; j >= i; j--) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern6(int n) {
    String result = '';
    for (int i = n; i >= 1; i--) {
      for (int j = i; j >= 1; j--) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern7(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      for (int j = i; j <= n; j++) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern8(int n) {
    String result = '';
    for (int i = 45; i <= n; i++) {
      for (int j = 45; j <= i; j++) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern9(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      for (int j = i; j >= 1; j--) {
        result += i.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern10(int n) {
    String result = '';
    for (int i = n; i >= 1; i--) {
      for (int j = i; j <= n; j++) {
        result += i.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern11(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      result += '  ' * (n - i);
      for (int j = 1; j <= i; j++) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern12(int n) {
    String result = '';
    for (int i = n; i >= 1; i--) {
      result += '  ' * (n - i);
      for (int j = 1; j <= i; j++) {
        result += j.toString();
      }

      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern13(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      result += '  ' * (n + i - n);
      for (int j = i; j <= n; j++) {
        result += j.toString();
      }
      result += ' ' * (i);
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern14(int n) {
    String result = '';
    for (int i = n; i >= 1; i--) {
      result += '  ' * (i - 1);
      for (int j = i; j <= n; j++) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern15(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      result += '  ' * (n - i);
      for (int j = i; j >= 1; j--) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern16(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      for (int j = i; j >= 1; j--) {
        result += j.toString();
      }
      result += '\n';
    }

    for (int i = n - 1; i >= 1; i--) {
      for (int j = i; j >= 1; j--) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern17(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      result += '  ' * (n - i);
      for (int j = 1; j <= i; j++) {
        result += j.toString();
      }
      result += '\n';
    }

    for (int i = 2; i <= n; i++) {
      result += '  ' * (i - 1);
      for (int j = i; j <= n; j++) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern18(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= i; j++) {
        result += j.toString();
      }

      result += '    ' * (n - i);

      for (int j = i; j >= 1; j--) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);

    return result;
  }

  static String pattern19(int n) {
    String result = '';
    for (int i = n; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        result += j.toString();
      }

      result += '    ' * (n - i);

      for (int j = i; j >= 1; j--) {
        result += j.toString();
      }
      result += '\n';
    }

    for (int i = 2; i <= n; i++) {
      for (int j = 1; j <= i; j++) {
        result += j.toString();
      }

      result += '    ' * (n - i);

      for (int j = i; j >= 1; j--) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);

    return result;
  }

  static String pattern20(int n) {
    String result = '';
    for (int i = n; i >= 1; i--) {
      result += '  ' * (i);
      for (int j = n; j >= i; j--) {
        if (j == 5) {
          result += '*';
        }
      }

      result += '    ' * (n - i);

      for (int j = i + 1; j <= n; j++) {
        if (j == 5) {
          result += '*';
        }
      }
      result += '\n';
    }
    return result;
  }

  static String pattern21(int n) {
    int b = 1;
    String result = '';
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= i; j++) {
        result += b.toString();
        b++;
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern22(int n) {
    String result = '';
    for (int i = 65; i <= n; i++) {
      for (int j = 65; j <= i; j++) {
        result += String.fromCharCode(i);
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern23(int n) {
    String result = '';
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= i; j++) {
        result += (j % 2).toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }

  static String pattern24(int n) {
    String result = '';
    for (int i = n; i >= 1; i--) {
      result += '  ' * (i - 1);
      for (int j = 5; j >= i; j--) {
        result += j.toString();
      }

      for (int j = i + 1; j <= n; j++) {
        result += j.toString();
      }
      result += '\n';
    }
    print(result);
    return result;
  }
}
