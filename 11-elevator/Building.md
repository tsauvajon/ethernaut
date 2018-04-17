If you analyze the code of the Elevator contract, it checks is it `isLastFloor` twice.
In order to set top to `true`, the first call to `isLastFloor` has to return `false` and the second one, `true`.
