// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enum2 {

    enum Status {
        A,
        B,
        C,
        D,
        F
    }

    Status grade;

    function getGrade() public view returns(Status) { //enum은 숫자로 반환되서 memroy 안 붙음
        return grade;
    }

    function setGrade(uint _score) public {
        if(_score >=  90) {
            grade = Status.A;
        } else if(_score >=  80) {
            grade = Status.B;
        } else if(_score >=  70) {
            grade = Status.C;
        } else if(_score >=  60) {
            grade = Status.D;
        } else {
            grade = Status.F;
        }
    }
}