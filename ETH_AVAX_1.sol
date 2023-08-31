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
        require(!students[_id].enrolled, "Student is already enrolled");
        
        // assert statement
        assert(bytes(_name).length > 0);
        
        students[_id] = Student(_id, _name, true);
        studentCount++;
    }
    
    function graduateStudent(uint _id) public {
        // require statement
        require(students[_id].enrolled, "Student is not enrolled");
        
        students[_id].enrolled = false;
        studentCount--;
    }
    
    function updateStudentName(uint _id, string memory _name) public {
        // require statement
        require(bytes(_name).length > 0, "Name cannot be empty");
        
        students[_id].name = _name;
    }
    function revertExample(uint256 a, uint256 b) public pure returns (uint256) {
        if (b == 0) {
            revert("Division by zero");
        }
        return a / b;
    }
    function assertExample(uint256 a, uint256 b) public pure returns (uint256) {
        assert(b != 0); // Assert that b is not zero
        return a / b;
    }

}
