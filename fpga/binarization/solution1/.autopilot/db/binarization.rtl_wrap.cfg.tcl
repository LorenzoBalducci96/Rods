set lang "C++"
set moduleName "binarization"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "INPUT_STREAM"
set BitWidth0 "56"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "2"
set Reference0 "1"
set Dims0 [list 0]
set Interface0 [list AP_STREAM 0] 
set structMem0 ""
set PortName00 "data"
set BitWidth00 "8"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list 0]
set Interface00 "wire"
set DataType00 "[list ap_uint 8 ]"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set PortName01 "keep"
set BitWidth01 "8"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set DataType01 "[list ap_uint 1 ]"
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set PortName02 "strb"
set BitWidth02 "8"
set ArrayOpt02 ""
set Const02 "0"
set Volatile02 "0"
set Pointer02 "0"
set Reference02 "0"
set Dims02 [list 0]
set Interface02 "wire"
set DataType02 "[list ap_uint 1 ]"
set Port02 [list $PortName02 $Interface02 $DataType02 $Pointer02 $Dims02 $Const02 $Volatile02 $ArrayOpt02]
lappend structMem0 $Port02
set PortName03 "user"
set BitWidth03 "8"
set ArrayOpt03 ""
set Const03 "0"
set Volatile03 "0"
set Pointer03 "0"
set Reference03 "0"
set Dims03 [list 0]
set Interface03 "wire"
set DataType03 "[list ap_uint 1 ]"
set Port03 [list $PortName03 $Interface03 $DataType03 $Pointer03 $Dims03 $Const03 $Volatile03 $ArrayOpt03]
lappend structMem0 $Port03
set PortName04 "last"
set BitWidth04 "8"
set ArrayOpt04 ""
set Const04 "0"
set Volatile04 "0"
set Pointer04 "0"
set Reference04 "0"
set Dims04 [list 0]
set Interface04 "wire"
set DataType04 "[list ap_uint 1 ]"
set Port04 [list $PortName04 $Interface04 $DataType04 $Pointer04 $Dims04 $Const04 $Volatile04 $ArrayOpt04]
lappend structMem0 $Port04
set PortName05 "id"
set BitWidth05 "8"
set ArrayOpt05 ""
set Const05 "0"
set Volatile05 "0"
set Pointer05 "0"
set Reference05 "0"
set Dims05 [list 0]
set Interface05 "wire"
set DataType05 "[list ap_uint 1 ]"
set Port05 [list $PortName05 $Interface05 $DataType05 $Pointer05 $Dims05 $Const05 $Volatile05 $ArrayOpt05]
lappend structMem0 $Port05
set PortName06 "dest"
set BitWidth06 "8"
set ArrayOpt06 ""
set Const06 "0"
set Volatile06 "0"
set Pointer06 "0"
set Reference06 "0"
set Dims06 [list 0]
set Interface06 "wire"
set DataType06 "[list ap_uint 1 ]"
set Port06 [list $PortName06 $Interface06 $DataType06 $Pointer06 $Dims06 $Const06 $Volatile06 $ArrayOpt06]
lappend structMem0 $Port06
set DataType0tp0 "int"
set DataType0tp1 "int"
set DataType0tp2 "int"
set DataType0tp3 "int"
set structParameter0 [list [list $DataType0tp0 D] [list $DataType0tp1 U] [list $DataType0tp2 TI] [list $DataType0tp3 TD] ]
set structArgument0 [list 8 1 1 1 ]
set NameSpace0 [list ]
set structIsPacked0 "1"
set DataType0 [list "ap_axiu<8, 1, 1, 1>" "struct ap_axiu" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "threshold"
set BitWidth1 "8"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 0]
set Interface1 "wire"
set DataType1 "unsigned char"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "update_threshold"
set BitWidth2 "8"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "[list ap_uint 1 ]"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "inverted"
set BitWidth3 "8"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set DataType3 "[list ap_uint 1 ]"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "OUTPUT_STREAM"
set BitWidth4 "56"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "2"
set Reference4 "1"
set Dims4 [list 0]
set Interface4 [list AP_STREAM 0] 
set structMem4 ""
set PortName40 "data"
set BitWidth40 "8"
set ArrayOpt40 ""
set Const40 "0"
set Volatile40 "0"
set Pointer40 "0"
set Reference40 "0"
set Dims40 [list 0]
set Interface40 "wire"
set DataType40 "[list ap_uint 8 ]"
set Port40 [list $PortName40 $Interface40 $DataType40 $Pointer40 $Dims40 $Const40 $Volatile40 $ArrayOpt40]
lappend structMem4 $Port40
set PortName41 "keep"
set BitWidth41 "8"
set ArrayOpt41 ""
set Const41 "0"
set Volatile41 "0"
set Pointer41 "0"
set Reference41 "0"
set Dims41 [list 0]
set Interface41 "wire"
set DataType41 "[list ap_uint 1 ]"
set Port41 [list $PortName41 $Interface41 $DataType41 $Pointer41 $Dims41 $Const41 $Volatile41 $ArrayOpt41]
lappend structMem4 $Port41
set PortName42 "strb"
set BitWidth42 "8"
set ArrayOpt42 ""
set Const42 "0"
set Volatile42 "0"
set Pointer42 "0"
set Reference42 "0"
set Dims42 [list 0]
set Interface42 "wire"
set DataType42 "[list ap_uint 1 ]"
set Port42 [list $PortName42 $Interface42 $DataType42 $Pointer42 $Dims42 $Const42 $Volatile42 $ArrayOpt42]
lappend structMem4 $Port42
set PortName43 "user"
set BitWidth43 "8"
set ArrayOpt43 ""
set Const43 "0"
set Volatile43 "0"
set Pointer43 "0"
set Reference43 "0"
set Dims43 [list 0]
set Interface43 "wire"
set DataType43 "[list ap_uint 1 ]"
set Port43 [list $PortName43 $Interface43 $DataType43 $Pointer43 $Dims43 $Const43 $Volatile43 $ArrayOpt43]
lappend structMem4 $Port43
set PortName44 "last"
set BitWidth44 "8"
set ArrayOpt44 ""
set Const44 "0"
set Volatile44 "0"
set Pointer44 "0"
set Reference44 "0"
set Dims44 [list 0]
set Interface44 "wire"
set DataType44 "[list ap_uint 1 ]"
set Port44 [list $PortName44 $Interface44 $DataType44 $Pointer44 $Dims44 $Const44 $Volatile44 $ArrayOpt44]
lappend structMem4 $Port44
set PortName45 "id"
set BitWidth45 "8"
set ArrayOpt45 ""
set Const45 "0"
set Volatile45 "0"
set Pointer45 "0"
set Reference45 "0"
set Dims45 [list 0]
set Interface45 "wire"
set DataType45 "[list ap_uint 1 ]"
set Port45 [list $PortName45 $Interface45 $DataType45 $Pointer45 $Dims45 $Const45 $Volatile45 $ArrayOpt45]
lappend structMem4 $Port45
set PortName46 "dest"
set BitWidth46 "8"
set ArrayOpt46 ""
set Const46 "0"
set Volatile46 "0"
set Pointer46 "0"
set Reference46 "0"
set Dims46 [list 0]
set Interface46 "wire"
set DataType46 "[list ap_uint 1 ]"
set Port46 [list $PortName46 $Interface46 $DataType46 $Pointer46 $Dims46 $Const46 $Volatile46 $ArrayOpt46]
lappend structMem4 $Port46
set DataType4tp0 "int"
set DataType4tp1 "int"
set DataType4tp2 "int"
set DataType4tp3 "int"
set structParameter4 [list [list $DataType4tp0 D] [list $DataType4tp1 U] [list $DataType4tp2 TI] [list $DataType4tp3 TD] ]
set structArgument4 [list 8 1 1 1 ]
set NameSpace4 [list ]
set structIsPacked4 "1"
set DataType4 [list "ap_axiu<8, 1, 1, 1>" "struct ap_axiu" $structMem4 1 0 $structParameter4 $structArgument4 $NameSpace4 $structIsPacked4]
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
