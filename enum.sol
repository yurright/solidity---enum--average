// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ENUM {
    enum Status {
        TurnedOff,
        Stop,
        Moving
    }

    Status CarStatus;

    function getStatus() public view returns(Status) {
        return CarStatus;
    }

    function turnOn() public {
        CarStatus = Status.Stop;
    }

    function moving() public {
        CarStatus = Status.Moving;
    }
}

contract ENUM2 {
    enum Color {
        white,
        red,
        yellow,
        green
    }

    Color c;

    function getColor() public view returns(Color) {
        return c;
    }

    function red() public {
        c = Color.red;
    }

    function yellow() public {
        c =Color.yellow;
    }

    function green() public {
        c = Color.green;
    }

    function white() public {
        c = Color.white;
    }

    function setColor(uint _n) public {
        c = Color(_n);
    }


}