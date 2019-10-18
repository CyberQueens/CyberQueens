# Binary Operations

Binary operations are used to manipulate 1's and 0's

## AND

The _Binary AND_ (written as &) is very similar to the _Logical AND_ (written as &&). 
The difference is, instead of operating on two boolean values, the _Binary AND_ operates on 2 bits (a bit is either 1 or 0).

Here is the table describing the outcomes of the Binary AND operator

It helps to identify: 1 = True, 0 = False

| Input 1 | Input 2 | Output |
|---------|---------|--------|
| 1       | 1       | 1      |
| 1       | 0       | 0      |
| 0       | 1       | 0      |
| 0       | 0       | 0      |


## How To Apply To Numbers

If for example we want to apply the Binary AND to the numbers 107 and 166:

1. Write the numbers in binary format:
   We can use ```bin(107) and bin(166)``` in python to get their binary representation easily

   107 = 0110 1011
   166 = 1010 0110

2. Align the numbers in binary notation:

   | 107   | & | 166 | = |   |
   |-------|---|-----|---|---|
   | 0     | & | 1   | = |   |
   | 1     | & | 0   | = |   |
   | 1     | & | 1   | = |   |
   | 0     | & | 0   | = |   |
   | 1     | & | 0   | = |   |
   | 0     | & | 1   | = |   |
   | 1     | & | 1   | = |   |
   | 1     | & | 0   | = |   |
   |       |   |     |   |   |

3. Apply the Binary AND Operator to each bit:

   | 107:  | & | 166 | = |   |
   |-------|---|-----|---|---|
   | 0     | & | 1   | = | 0 |
   | 1     | & | 0   | = | 0 |
   | 1     | & | 1   | = | 1 |
   | 0     | & | 0   | = | 0 |
   | 1     | & | 0   | = | 0 |
   | 0     | & | 1   | = | 0 |
   | 1     | & | 1   | = | 1 |
   | 1     | & | 0   | = | 0 |
   |       |   |     |   |   |

4. Write out the binary number we got on the right column:
   0010 0010

5. Convert the binary number to decimal:
   We can use ```int("00100010", 2)``` in python to let python do the conversion for us. We get 34

6. Conclude 107 & 166 = 34

---

## OR

The _Binary OR_ (written as |) is very similar to the _Logical OR_ (written as ||). 
The difference is, instead of operating on two boolean values, the _Binary OR_ operates on 2 bits (a bit is either 1 or 0).

Here is the table describing the outcomes of the Binary OR operator

It helps to identify: 1 = True, 0 = False

| Input 1 | Input 2 | Output |
|---------|---------|--------|
| 1       | 1       | 1      |
| 1       | 0       | 1      |
| 0       | 1       | 1      |
| 0       | 0       | 0      |


## How To Apply To Numbers

If for example we want to apply the Binary OR to the numbers 107 OR 166:

1. Write the numbers in binary format:
   We can use ```bin(107) OR bin(166)``` in python to get their binary representation easily

   107 = 0110 1011
   166 = 1010 0110

2. Align the numbers in binary notation:

   | 107   | | | 166 | = |   |
   |-------|---|-----|---|---|
   | 0     | | | 1   | = |   |
   | 1     | | | 0   | = |   |
   | 1     | | | 1   | = |   |
   | 0     | | | 0   | = |   |
   | 1     | | | 0   | = |   |
   | 0     | | | 1   | = |   |
   | 1     | | | 1   | = |   |
   | 1     | | | 0   | = |   |
   |       |   |     |   |   |

3. Apply the Binary OR Operator to each bit:

   | 107   | | | 166 | = |   |
   |-------|---|-----|---|---|
   | 0     | | | 1   | = | 1 |
   | 1     | | | 0   | = | 1 |
   | 1     | | | 1   | = | 1 |
   | 0     | | | 0   | = | 0 |
   | 1     | | | 0   | = | 1 |
   | 0     | | | 1   | = | 1 |
   | 1     | | | 1   | = | 1 |
   | 1     | | | 0   | = | 1 |
   |       |   |     |   |   |

4. Write out the binary number we got on the right column:
   1110 1111

5. Convert the binary number to decimal:
   We can use ```int("11101111", 2)``` in python to let python do the conversion for us. We get 239

6. Conclude 107 | 166 = 239

---

## XOR

The _Binary XOR_ is written as ^. There is no simple logical equivalent like in other binary operations.
XOR is short for "Exclusive OR". Meaning, we're only looking for ONE of the bits to be 1 - but not both.

Here is the table describing the outcomes of the Binary XOR operator

It helps to identify: 1 = True, 0 = False

| Input 1 | Input 2 | Output |
|---------|---------|--------|
| 1       | 1       | 0      |
| 1       | 0       | 1      |
| 0       | 1       | 1      |
| 0       | 0       | 0      |


## How To Apply To Numbers

If for example we want to apply the Binary XOR to the numbers 107 XOR 166:

1. Write the numbers in binary fXORmat:
   We can use ```bin(107) XOR bin(166)``` in python to get their binary representation easily

   107 = 0110 1011
   166 = 1010 0110

2. Align the numbers in binary notation:

   | 107   | ^ | 166 | = |   |
   |-------|---|-----|---|---|
   | 0     | ^ | 1   | = |   |
   | 1     | ^ | 0   | = |   |
   | 1     | ^ | 1   | = |   |
   | 0     | ^ | 0   | = |   |
   | 1     | ^ | 0   | = |   |
   | 0     | ^ | 1   | = |   |
   | 1     | ^ | 1   | = |   |
   | 1     | ^ | 0   | = |   |
   |       |   |     |   |   |

3. Apply the Binary XOR Operator to each bit:

   | 107   | | | 166 | = |   |
   |-------|---|-----|---|---|
   | 0     | ^ | 1   | = | 1 |
   | 1     | ^ | 0   | = | 1 |
   | 1     | ^ | 1   | = | 0 |
   | 0     | ^ | 0   | = | 0 |
   | 1     | ^ | 0   | = | 1 |
   | 0     | ^ | 1   | = | 1 |
   | 1     | ^ | 1   | = | 0 |
   | 1     | ^ | 0   | = | 1 |
   |       |   |     |   |   |

4. Write out the binary number we got on the right column:
   1100 1101

5. Convert the binary number to decimal:
   We can use ```int("11001101", 2)``` in python to let python do the conversion for us. We get 205

6. Conclude 107 ^ 166 = 205

&nbsp;
&nbsp;

Copyright (C) Guy Levin 2019 All Rights Reserved
