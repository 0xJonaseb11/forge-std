// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import {CheatsSafe, console, console2, StdMath, StdStorageSafeLib, StdStorage, Utils, VmSafe} from "./Components.sol";

abstract contract ScriptBase {
  address internal constant VM_ADDRESS =
    address(uint160(uint256(keccak256("hevm cheat code"))));

  StdStorage internal stdStorage;
  VmSafe internal constant vm = VmSafe(VM_ADDRESS);
}

abstract contract Script is ScriptBase, CheatsSafe, Utils {
  bool public IS_SCRIPT = true;
}
