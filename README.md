ArduMM Controller for H203 Lab
===================================

## PhotonMaker
[Manual](https://www.nanotoolsbio.com/_files/ugd/c3bee4_bcea98b0b7ba4d2aa8f413fe1c6c36ac.pdf)

[DB15 color code](https://cdn.graftek.com/system/files/14147/original/785605-01.pdf)

__TTL trigger IN__
<img src="pic/DB-15M_trigger_IN.png" style="zoom:75%;" />


## ArduMM
Notes about the [Arduino](https://micro-manager.org/Arduino) edvice adatper for Micromanager.

### Digital IO

| PIN  | Bit  | Decimal Value ON | Use  |
| :--: | :--: | :--------------: | :--: |
|  8   |  0   |        1         | N/A  |
|  9   |  1   |        2         | BNC  |
|  10  |  2   |        4         | BNC  |
|  11  |  3   |        8         | S2   |
|  12  |  4   |        16        | S1   |
|  13  |  5   |        32        | S0   |



### PhotonMaker Control

PhotonMaker control with 3 ArduMM pins and  8-channel multiplexer ([74HC4051D](https://arduino.ua/prod6234-modyl-analogovogo-myltipleksora-74hc4051d?srsltid=AfmBOopynwxA2QRn2_hYkh429Qz9YPAdudDBhhF_F8vhxPwqT6g5fnpo)).

| IN S0 | IN S1 | IN S2 | ArduMM Switch-State | Channel ON | PhotonMaker Channel | PhotonMaker DB15 PIN |
| :---: | :---: | :---: | :-----------------: | :--------: | :-----------------: | :------------------: |
|   L   |   L   |   L   |          0          |     Y0     |          -          |          -           |
|   H   |   L   |   L   |         32          |     Y1     |     UV (398 nm)     |          7           |
|   L   |   H   |   L   |         16          |     Y2     |    Blue (452 nm)    |          3           |
|   H   |   H   |   L   |         48          |     Y3     |    Cyan (500 nm)    |          6           |
|   L   |   L   |   H   |          8          |     Y4     |   Green (515 nm)    |          2           |
|   H   |   L   |   H   |         40          |     Y5     |   Amber (601 nm)    |          4           |
|   L   |   H   |   H   |         24          |     Y6     |    Red (638 nm)     |          1           |
|   H   |   H   |   H   |         56          |     Y7     |        White        |          5           |

_Note: Y0 stay unused because it is HIGH when all arduino pins are LOW._