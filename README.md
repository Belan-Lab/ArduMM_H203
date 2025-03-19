ArduMM Controller for H203 Lab
===================================

## ArduMM
Notes about the [Arduino](https://micro-manager.org/Arduino) edvice adatper for Micromanager.

### Digital IO

| PIN  | Bit  | Decimal Value ON | Use  |
| :--: | :--: | :--------------: | ---- |
|  8   |  0   |        1         | N/A  |
|  9   |  1   |        2         | N/A  |
|  10  |  2   |        4         | N/A  |
|  11  |  3   |        8         | S2   |
|  12  |  4   |        16        | S1   |
|  13  |  5   |        32        | S0   |



## PhotonMaker Control

PhotonMaker control with 3 ArduMM pins and  8-channel multiplexer ([74HC4051D](https://arduino.ua/prod6234-modyl-analogovogo-myltipleksora-74hc4051d?srsltid=AfmBOopynwxA2QRn2_hYkh429Qz9YPAdudDBhhF_F8vhxPwqT6g5fnpo)).

| IN S0 | IN S1 | IN S2 | ArduMM Switch-State | Channel ON | PhotonMaker Channel |
| :---: | :---: | :---: | :-----------------: | :--------: | :-----------------: |
|   L   |   L   |   L   |          0          |     Y0     |          -          |
|   H   |   L   |   L   |         32          |     Y1     |                     |
|   L   |   H   |   L   |         16          |     Y2     |                     |
|   H   |   H   |   L   |         48          |     Y3     |                     |
|   L   |   L   |   H   |          8          |     Y4     |                     |
|   H   |   L   |   H   |         40          |     Y5     |                     |
|   L   |   H   |   H   |         24          |     Y6     |                     |
|   H   |   H   |   H   |         56          |     Y7     |                     |

_Note: Y0 stay unused becouse it is HIGH when all arduino pins are LOW._