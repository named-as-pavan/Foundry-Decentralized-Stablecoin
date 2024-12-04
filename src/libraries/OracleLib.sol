// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {AggregatorV3Interface} from
    "../../lib/chainlink-brownie-contracts/contracts/src/v0.5/interfaces/AggregatorV3Interface.sol";

/// @title OracleLib
/// @author Pavan Kumar
/// @notice The library is used to check the Chainlink Oracle for stable data.
/// If a price is stale, the function will revert, and render the DSCEngine unusable this is by design.
/// We want the DscEngine to freeze if prices become stable.
/// So if the Chainlink network expodes and you have a lot of money loked in the protocol... too bad.
/// @dev Explain to a developer any extra details

library OracleLib {

    error OracleLib__PriceNotStale();
    uint256 private constant TIMEOUT = 3 hours;

    function staleCheckLatestRoundData(AggregatorV3Interface priceFeed)
        external
        view
        returns (uint80, int256, uint256, uint256, uint80)
    {
        (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) =
            priceFeed.latestRoundData();

        uint256 secondsSince = block.timestamp - updatedAt;
        if(secondsSince > TIMEOUT) revert OracleLib__PriceNotStale();

        return (roundId, answer, startedAt, updatedAt, answeredInRound);
    }
}
