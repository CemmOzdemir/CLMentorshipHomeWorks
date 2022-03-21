// SPDX-License-Identifier: MIT
//homework2.week
//CopyRight owner: akifhan Ilgaz 
pragma solidity >=0.6.0 <0.9.0;

contract HomeWork{

    uint32 counter ;

    struct student {
        uint256 chainLinkNumber;
        string name;
    }
   
   
   student[25] public Students;

    
    
    mapping( address => bool) public registered;


    function enroll(string memory _name, uint256 number) public  {
        require(registered[msg.sender] == false ,"Already enrolled");
        registered[msg.sender] = true;
        Students[counter] = student({chainLinkNumber: number, name: _name});
        counter++;
    }


    function getListOfStudents() public view returns (student[25] memory) {
        return Students;
    }

}
