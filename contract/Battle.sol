// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";


contract Battle is ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    /// @notice Structure for the attribute of crab
    struct CrabAttribute {
        uint256 armour,
        uint256 damage,
        string class,
    }



    /// @notice player deploy crab Player address -> Slot to deploy crab -> crab token ID 
    mapping(address => mapping(uint256 => uint256))  public PlayerSlotTokenid;

    /// @notice Player in battle ground
    address[0] payable public Player;
    address public sc_crab


    modifier CrabOwner() {
        /// body code
    }

    modifier ValidPlayer() {
        /// body code
    }

    modifier ValidBattleSlot() {
        /// body code
    }

    modifier ValidPlayerSlot() {
        /// body code
    }

    /// @notice Constructor
    constructor (address _sc_crab) public {
    }

    /// @notice Method for adding player to battle ground
    /// @param _player Player address be added 
    function Add_Player(address _player) external ValidPlayer ValidBattleSlot {
        /// body code
    }

    /// @notice Method for deploy crab in battle ground
    /// @param _player Player address that want deploy crab
    /// @param _slot_index slot that want to deploy crab
    /// @param _crabTokenID which crabID that want to deploy in selected slot
    function deploy_crab(address _player, uint256 _slot_index, uint256 _crabTokenID) external ValidPlayerSlot {
        /// body code
    }

    /// @notice Method for player to confirm when they are ready
    /// @param _player Player address who confirm ready
    function Confirm(address _player) external returns (bool) {
        /// body code
    }

    /// @notice Method to calculate player battle point base on their deplot crab
    /// @param _player Player address who confirm ready
    function Calculate_Player_Point(address _player) internal returns (uint256) {
        ///body code
    }

    /// @notice Method to choose winner base on their battle point
    function Choose_Winner() external payable nonReentrant{
        /// body code
    }