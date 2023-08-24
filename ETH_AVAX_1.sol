// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CollegeManagement {
    struct Student {
        uint id;
        string name;
        bool enrolled;
    }
    
    mapping(uint => Student) public students;
    uint public studentCount;
    
    constructor() {
        studentCount = 0;
    }
    
    function enrollStudent(uint _id, string memory _name) public {
        // require statement
        require(!students[_uid].enrolled, "Student is already enrolled");
        
        // assert statement
        assert(bytes(_name).length > 0);
        
        students[_uid] = Student(_uid, _name, true);
        studentCount++;
    }
    
    function graduateStudent(uint _id) public {
        // require statement
        require(students[_uid].enrolled, "Student is not enrolled");
        
        students[_uid].enrolled = false;
        studentCount--;
    }
    
    function updateStudentName(uint _id, string memory _name) public {
        // revert statement
        if (bytes(_name).length == 0) {
            revert("Name cannot be empty");
        }
        
        students[_uid].name = _name;
    }
}
