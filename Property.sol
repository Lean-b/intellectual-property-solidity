// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;


import "@openzeppelin/contracts/access/Ownable.sol";

contract Property is  Ownable{
    
    struct Project{
        string author;
        string title;
        string description;
        uint timestamp;
    }
        
    mapping (uint=> Project) private  projects;

    uint private projectCounts;


    function register(string memory _author,string memory _title,string memory _description) public onlyOwner {
        projects[projectCounts] = Project(_author,_title,_description,block.timestamp);
        projectCounts++;
    }

    function get_project(uint showProject)public  view returns(string memory author, string memory title, string memory description, uint timestamp){
        author = projects[showProject].author;
        title = projects[showProject].title;
        description = projects[showProject].description;
        timestamp = projects[showProject].timestamp;
    }
}