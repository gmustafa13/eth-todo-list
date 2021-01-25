pragma solidity >=0.4.22 <0.9.0;

contract todoList{
    uint public taskCount = 0;

    struct task{
        uint id;
        string content;
        bool complete;
    }
    mapping(uint => task) public tasks;

    constructor() public{
      createTask("hi gulam");
    }

    function createTask(string memory _content)public{
        taskCount ++;
        tasks[taskCount] = task(taskCount,_content,false);

    }
}