pragma solidity ^0.5.16;

/// @title Voting Timelock Storage Contract
/// @author blockplus (@blockplus), brightdev33 (@brightdev33)
contract VotingTimelockStorage {
    /// @notice Initialized flag - indicates that initialization was made once
    bool internal _initialized;

    uint256 public constant _gracePeriod = 14 days;
    uint256 public constant _minimumDelay = 2 days;
    uint256 public constant _maximumDelay = 30 days;

    address public _guardian;
    address public _authorizedNewGuardian;
    uint256 public _delay;

    mapping (bytes32 => bool) public _queuedTransactions;
}
