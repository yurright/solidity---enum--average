// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract test {

    struct Student {
        string name;
        uint number;
        uint score;
        string grade;
        string[] classes;
    }

    mapping (string => Student) studentsByName;

    Student[] students;
    Student[] Fstudents;

    function setGrade(uint _n) public pure returns(string memory) {
        if(_n >= 90) {
            return "A";
        } else if(_n >= 80) {
            return "B";
        } else if(_n >= 70) {
            return "C";
        } else if(_n >= 60) {
            return "D";
        } else {
            return "F";
        }
    }

    function addStudent(string memory _name, uint _score, string[] memory _classes) public {
        students.push(Student(_name, students.length + 1, _score, setGrade(_score), _classes));

        studentsByName[_name] = Student(_name, students.length + 1, _score, setGrade(_score), _classes);

        if( _score < 60) {
            Fstudents.push(Student(_name, students.length + 1, _score, setGrade(_score), _classes));
        }
    }

    function getStudents() public view returns(Student[] memory) {
        return students;
    }

    function getStudentByNumber(uint _n) public view returns(Student memory) {
        return students[_n - 1];
    }

    function getStudentByName(string memory _name) public view returns(Student memory) {
        return studentsByName[_name];
    }

    function getScoreByName(string memory _name) public view returns(uint) {
        return studentsByName[_name].score;
    }

    function getNumberofStudents() public view returns(uint) {
        return students.length;
    }

    function getAverageScore() public view returns(uint) {
        uint sum = 0;

       for(uint i = 0; i < students.length; i++) {
           sum += students[i].score;
       }

       return sum/students.length;
    }

    function isTeacherGood() public view returns(bool) {
       if(getAverageScore() >= 70) {
        return true;
       } else {
        return false;
       }
    }



    function FClassInfo() public view returns(uint, Student[] memory) {
        return(Fstudents.length, Fstudents);
    }

}