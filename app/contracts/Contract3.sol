pragma solidity ^0.4.17;
contract test {
    int cnt = 0;

    event yay(int value);

    function ping() {
        cnt = cnt + 1;
        yay(cnt);
    }
}
