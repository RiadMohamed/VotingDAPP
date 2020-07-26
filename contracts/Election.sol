pragma solidity >=0.4.22 <0.6.2;

contract Election {
    string public candidate;


    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    
    mapping(uint => Candidate) public candidates;
    
    uint public candidatesCount;

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }


}