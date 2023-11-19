# Student Grade Recording Smart Contract

## Overview

This Solidity smart contract, named `student`, is designed to record and manage student marks on the Ethereum blockchain. It provides functions to record student marks, retrieve grades based on marks, and check whether a student has passed or failed.

## Smart Contract Details

### 1. Mapping for Student Marks

The contract utilizes a private mapping (`studentMarks`) to associate Ethereum addresses with corresponding student marks. This ensures that each student's data is securely stored.

### 2. Record Student Marks

The `recordMarks` function allows students to record their marks. It employs an `assert` statement to ensure that the provided marks are within the valid range of 0 to 100.

### 3. Get Grade

The `getGrade` function takes a mark as input and returns the corresponding grade. It uses the `require` statement to validate that the input marks are within the acceptable range.

### 4. Check Pass or Fail

The `checkPassOrFail` function retrieves the marks of the calling student and checks whether they have passed or failed. It uses the `require` statement for input validation and the `revert` statement to handle failure conditions.

## Usage

1. Deploy the smart contract to the Ethereum blockchain.
2. Students can use the `recordMarks` function to submit their marks.
3. The `getGrade` function allows anyone to retrieve the corresponding grade based on provided marks.
4. The `checkPassOrFail` function can be used to verify if a student has passed or failed.

## Author

Aravind

aravind.p866@gmail.com
