// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Average {
    uint[] numbers;

    function pushNumber(uint _n) public {
        numbers.push(_n);
    }

    function getArray() public view returns(uint[] memory) {
        return numbers;
    }

    function getN(uint _n) public view returns(uint) {
        return numbers[_n -1];
    }

    function getAverage() public view returns(uint) {

        uint sum = 0;

        for(uint i = 0; i < numbers.length; i++) {

           sum = sum + numbers[i]; //sum += numbers[i]
        }

        return sum/numbers.length;
    }

    function getAverage2()  public view returns(uint) {
       
       uint sum = 0;

       for(uint i = 1; i < numbers.length + 1; i++) {
            sum += numbers[1];
       }

       return sum/numbers.length;
    }

    function getEvenCount() public view returns(uint) {
        uint index;

        for(uint i=0; i<numbers.length; i++) {
            if(numbers[i] % 2 == 0) {
                index ++;
            }
        }

        return index;
    }

    function getNmultiple() public view returns(uint[] memory) { // 지역 변수로 array 만들 때. 
 
        uint[] memory temp = new uint[](getEvenCount()); //push는 길이 변경, 근데 로컬어레이는 길이 변경 안 됨 // 길이 10짜리인어레이 새로 ㄴ만들겟다. 선언은 uint[]로 해서 returns에도 uiint[]만 넣어줌 [10]말고!
         // uint[10] memory temp; 이 경우 returns 도 uint[10]으로 고쳐줘야 함

        uint index;


        for(uint i = 0; i < numbers.length; i++) {
            


           if(numbers[i] % 2 == 0) {
            temp[index] = numbers[i];
            index++;
           }
        }

        return temp;
    }

}