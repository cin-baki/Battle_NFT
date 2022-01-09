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



    /// @notice player deploy crab: BattleGround ID -> Player address -> Slot to deploy crab -> crab token ID 
    mapping(uint256 => mapping(address => mapping(uint256 => uint256)))  public BattlePlayerSlotTokenid;
    /// @notice add player to battle ground: BattleGround ID to Player
    mapping(uint256 => address[2]) public BattleGround;

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

    /// @notice Method for adding player to battle ground, call by system
    /// @param _battleGroundID in game battle scence ID that want to add player
    /// @param _player Player address be added 
    function Add_Player(uint256 _battleGroundID, address[2] payable _player) external ValidBattleSlot {
        /// body code
    }

    /// @notice Method for deploy crab in battle ground, call by system after add_player, this function also verify if player is added or not
    /// @param _battleGroundID in game battle scence ID that player want deploy crab
    /// @param _player Player address that want deploy crab
    /// @param _slot_index slot that want to deploy crab
    /// @param _crabTokenID which crabID that want to deploy in selected slot
    function deploy_crab(uint256 _battleGroundID, address  _player, uint256 _slot_index, uint256 _crabTokenID) external ValidPlayer ValidPlayerSlot {
        /// body code
    }

    /// @notice Method to calculate player battle point base on their deployed crab, call in choose_winner function
    /// @param _player Player address to calculate point
    function Calculate_Player_Point(address _player) internal returns (uint256) {
        ///body code
    }

    /// @notice Method to choose winner base on their battle point and transfer 100 shell to winner, call by system
    /// @param _battleGroundID in game battle scence ID that want to choose winner
    function Choose_Winner(uint256 _battleGroundID) external payable nonReentrant{
        /// body code
    }

    /// @notice Method to free battle ground and crab slot after winner was choosen, call by system
    /// @param _battleGroundID in game battle scence ID that want to free
    function FreeBattleGround(uint256 _battleGroundID, address  _player, uint256 _slot_index) external{
        /// body code
    }