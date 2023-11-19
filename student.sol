// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract student {
    // Mapping to store student marks
    mapping(address => uint) private studentMarks;

    // Function to record student marks
    function recordMarks(uint _marks) public {
        // Use assert to ensure marks are between 0 and 100
        assert(_marks >= 0 && _marks <= 100);
        studentMarks[msg.sender] = _marks;
    }

    // Function to get grade based on provided marks
    function getGrade(uint marks) public pure returns (string memory) {
        require(marks >= 0 && marks <= 100, "Marks must be between 0 and 100");

        if (marks >= 90) {
            return "A";
        } else if (marks >= 80) {
            return "B";
        } else if (marks >= 60) {
            return "C";
        } else {
            return "D";
        }
    }

    // Function using revert statement to check whether the student has passed
    function checkPassOrFail() public view returns (string memory) {
        uint marks = studentMarks[msg.sender];
        require(marks >= 0 && marks <= 100, "Marks should be in between 0 and 100");

        if (marks >= 35) {
            return "Pass";
        } else {
            revert("Fail: minimum marks to pass is 35");
        }
    }
}
