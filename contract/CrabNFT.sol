// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Crab is ERC721("Crab", "CRB"), Ownable {

    /// @dev Events of the contract
    event Minted(
        uint256 tokenId,
        address beneficiary,
        string tokenUri,
        address minter
    );

    /// @notice Structure for the attribute of crab
    struct CrabAttribute {
        uint256 armour,
        uint256 damage,
        string class,
    }
    
    /// @dev current max tokenId
    uint256 public tokenIdPointer;

    /// @notice crab attribute store
    CrabAttribute[] public crabAttribute;

    /// @dev TokenID -> Creator address
    mapping(uint256 => address) public creators;

    /// @dev TokenID -> Index of the crab's attribute storage
    mapping(uint256 => uint256) public tokenIdToCrabIndex;

    /// @notice Contract constructor
    constructor(address payable _feeRecipient, uint256 _platformFee) public {
        /// body code
    }

    /**
     @notice Mints a Crab NFT
     @param _beneficiary Recipient of the NFT
     @param _crabAttribute all of the battle attribute and class of the crab
     @param _tokenUri URI for the token being minted
     @return uint256 The token ID of the token that was minted
     */
    function mint(address _beneficiary, CrabAttribute _crabAttribute, string calldata _tokenUri) external payable returns (uint256) {
        /// body code
    }

    /**
     @notice Burns 
     @dev Only the owner or an approved sender can call this method
     @param _tokenId the token ID to burn
     */
    function burn(uint256 _tokenId) external onlyOwner {
        /// body code
    }


    /////////////////
    // View Methods /
    /////////////////

    /**
     @notice View method for checking whether a token has been minted
     @param _tokenId ID of the token being checked
     */
    function exists(uint256 _tokenId) external view returns (bool) {
        ///body code
    }


    /**
     * @dev checks the given token ID is approved either for all or the single token ID
     */
    function isApproved(uint256 _tokenId, address _operator) public view returns (bool) {
        /// bodycode
    }

    /////////////////////////
    // Internal and Private /
    /////////////////////////

    /**
     @notice Checks that the URI is not empty and the designer is a real address
     @param _tokenUri URI supplied on minting
     @param _designer Address supplied on minting
     */
    function _assertMintingParamsValid(string calldata _tokenUri, address _designer) pure internal {
        /// body code
    }
}