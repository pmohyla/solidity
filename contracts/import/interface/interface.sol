interface IcontratoPai{
    function olaMundo() external pure returns(string memory);
}

interface Iformula{
    function calc_bascara(int32 a, int32 b, int32 c) external pure returns(int32);
}