Šč
ņ
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
+
Ceil
x"T
y"T"
Ttype:
2
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
7
Conj

input"T
output"T"
Ttype0:
2
8
Const
output"dtype"
valuetensor"
dtypetype
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	

)
Exit	
data"T
output"T"	
Ttype

FFT3D	
input

output
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	

Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	

IFFT3D	
input

output
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
!
LoopCond	
input


output

;
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0

	MirrorPad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	"&
modestring:
REFLECT	SYMMETRIC
=
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
S
Real

input"T
output"Tout"
Ttype0:
2"
Touttype0:
2
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.7.02v1.7.0-3-g024aecf414¸
F
niterPlaceholder*
dtype0*
_output_shapes
: *
shape: 
S
pad_mode/inputConst*
_output_shapes
: *
valueB
 Blog2*
dtype0
d
pad_modePlaceholderWithDefaultpad_mode/input*
dtype0*
_output_shapes
: *
shape: 
_
zeros/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
M
zeros/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
h
zerosFillzeros/shape_as_tensorzeros/Const*
T0*

index_type0*
_output_shapes
:
b
pad_minPlaceholderWithDefaultzeros*
dtype0*
_output_shapes
:*
shape:

dataPlaceholder*
dtype0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*2
shape):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

kernelPlaceholder*2
shape):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Z
ConstConst*!
valueB"          *
dtype0*
_output_shapes
:
W
SumSumkernelConst*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
g
truedivRealDivkernelSum*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
L
Equal/yConst*
valueB
 Blog2*
dtype0*
_output_shapes
: 
B
EqualEqualpad_modeEqual/y*
T0*
_output_shapes
: 
N
	Equal_1/yConst*
valueB
 Bnone*
dtype0*
_output_shapes
: 
F
Equal_1Equalpad_mode	Equal_1/y*
_output_shapes
: *
T0
W
stackPackEqualEqual_1*
T0
*

axis *
N*
_output_shapes
:
G
CastCaststack*

SrcT0
*
_output_shapes
:*

DstT0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Y
Sum_1SumCastConst_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
R
assert_greater/yConst*
_output_shapes
: *
value	B : *
dtype0
[
assert_greater/GreaterGreaterSum_1assert_greater/y*
T0*
_output_shapes
: 
W
assert_greater/ConstConst*
dtype0*
_output_shapes
: *
valueB 
|
assert_greater/AllAllassert_greater/Greaterassert_greater/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
a
assert_greater/Assert/AssertAssertassert_greater/Allpad_mode*

T
2*
	summarize
I
ShapeShapedata*
T0*
out_type0*
_output_shapes
:
N
Shape_1Shapetruediv*
T0*
out_type0*
_output_shapes
:
?
subSubShapeShape_1*
_output_shapes
:*
T0
Q
Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
X
Sum_2SumsubConst_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
K
Shape_2Shapedata*
T0*
out_type0*
_output_shapes
:
N
Shape_3Shapetruediv*
T0*
out_type0*
_output_shapes
:
X
assert_greater_equal/yConst*
value	B : *
dtype0*
_output_shapes
: 
q
!assert_greater_equal/GreaterEqualGreaterEqualSum_2assert_greater_equal/y*
T0*
_output_shapes
: 
]
assert_greater_equal/ConstConst*
valueB *
dtype0*
_output_shapes
: 

assert_greater_equal/AllAll!assert_greater_equal/GreaterEqualassert_greater_equal/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
v
"assert_greater_equal/Assert/AssertAssertassert_greater_equal/AllShape_2Shape_3*
T
2*
	summarize

Shape_4Shapedata^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
:*
T0*
out_type0
A
addAddShape_4pad_min*
_output_shapes
:*
T0

	Equal_2/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
dtype0*
_output_shapes
: *
valueB
 Blog2
F
Equal_2Equalpad_mode	Equal_2/y*
_output_shapes
: *
T0
J
cond/SwitchSwitchEqual_2Equal_2*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
_output_shapes
: *
T0

G
cond/switch_fIdentitycond/Switch*
_output_shapes
: *
T0

B
cond/pred_idIdentityEqual_2*
T0
*
_output_shapes
: 
Y
	cond/CastCastcond/Cast/Switch:1*

SrcT0*
_output_shapes
:*

DstT0
p
cond/Cast/SwitchSwitchaddcond/pred_id*
T0*
_class

loc:@add* 
_output_shapes
::
?
cond/LogLog	cond/Cast*
T0*
_output_shapes
:
Ĩ
cond/Log_1/xConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_t*
valueB
 *   @*
dtype0*
_output_shapes
: 
@

cond/Log_1Logcond/Log_1/x*
T0*
_output_shapes
: 
R
cond/truedivRealDivcond/Log
cond/Log_1*
T0*
_output_shapes
:
D
	cond/CeilCeilcond/truediv*
T0*
_output_shapes
:
Ŗ

cond/Pow/xConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_t*
valueB
 *   @*
dtype0*
_output_shapes
: 
K
cond/PowPow
cond/Pow/x	cond/Ceil*
_output_shapes
:*
T0
Q
cond/Cast_1Castcond/Pow*
_output_shapes
:*

DstT0*

SrcT0
Ą

cond/ShapeShapecond/Shape/Switch:1^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
:*
T0*
out_type0
š
cond/Shape/SwitchSwitchdatacond/pred_id*
T0*
_class
	loc:@data*f
_output_shapesT
R:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
M
cond/subSubcond/Cast_1
cond/Shape*
T0*
_output_shapes
:
 

cond/add/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_t*
value	B :*
dtype0*
_output_shapes
: 
J
cond/addAddcond/sub
cond/add/y*
_output_shapes
:*
T0
Ĩ
cond/floordiv/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Y
cond/floordivFloorDivcond/addcond/floordiv/y*
T0*
_output_shapes
:
O

cond/sub_1Subcond/Cast_1
cond/Shape*
_output_shapes
:*
T0
Q

cond/sub_2Sub
cond/sub_1cond/floordiv*
_output_shapes
:*
T0
k

cond/stackPackcond/floordiv
cond/sub_2*
T0*

axis*
N*
_output_shapes

:
¨
cond/MirrorPad	MirrorPadcond/Shape/Switch:1
cond/stack*
	Tpaddings0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
mode	REFLECT*
T0
Ŗ
cond/Shape_1Shapecond/Shape_1/Switch^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
T0*
out_type0*
_output_shapes
:
ģ
cond/Shape_1/SwitchSwitchdatacond/pred_id*
T0*
_class
	loc:@data*f
_output_shapesT
R:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
W

cond/sub_3Subcond/sub_3/Switchcond/Shape_1*
_output_shapes
:*
T0
q
cond/sub_3/SwitchSwitchaddcond/pred_id* 
_output_shapes
::*
T0*
_class

loc:@add
ĸ
cond/add_1/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
P

cond/add_1Add
cond/sub_3cond/add_1/y*
T0*
_output_shapes
:
§
cond/floordiv_1/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
_
cond/floordiv_1FloorDiv
cond/add_1cond/floordiv_1/y*
T0*
_output_shapes
:
W

cond/sub_4Subcond/sub_3/Switchcond/Shape_1*
T0*
_output_shapes
:
S

cond/sub_5Sub
cond/sub_4cond/floordiv_1*
T0*
_output_shapes
:
o
cond/stack_1Packcond/floordiv_1
cond/sub_5*
N*
_output_shapes

:*
T0*

axis
Ŧ
cond/MirrorPad_1	MirrorPadcond/Shape_1/Switchcond/stack_1*
T0*
	Tpaddings0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
mode	REFLECT


cond/MergeMergecond/MirrorPad_1cond/MirrorPad*?
_output_shapes-
+:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: *
T0*
N
Q
Shape_5Shape
cond/Merge*
T0*
out_type0*
_output_shapes
:

Shape_6Shapetruediv^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
out_type0*
_output_shapes
:*
T0
C
sub_1SubShape_5Shape_6*
T0*
_output_shapes
:

add_1/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
A
add_1Addsub_1add_1/y*
T0*
_output_shapes
:


floordiv/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
L
floordivFloorDivadd_1
floordiv/y*
T0*
_output_shapes
:
C
sub_2SubShape_5Shape_6*
T0*
_output_shapes
:
B
sub_3Subsub_2floordiv*
_output_shapes
:*
T0
^
stack_1Packfloordivsub_3*

axis*
N*
_output_shapes

:*
T0
u
PadPadtruedivstack_1*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
	Tpaddings0
J
Shape_7ShapePad*
_output_shapes
:*
T0*
out_type0
Ą
strided_slice/stackConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
valueB: *
dtype0*
_output_shapes
:
Ŗ
strided_slice/stack_1Const^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
:*
valueB:*
dtype0
Ŗ
strided_slice/stack_2Const^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
:*
valueB:*
dtype0
û
strided_sliceStridedSliceShape_7strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

add_2/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
dtype0*
_output_shapes
: *
value	B :
E
add_2Addstrided_sliceadd_2/y*
T0*
_output_shapes
: 

floordiv_1/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
L

floordiv_1FloorDivadd_2floordiv_1/y*
T0*
_output_shapes
: 
H
sub_4Substrided_slice
floordiv_1*
T0*
_output_shapes
: 

range/deltaConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
b
rangeRangesub_4strided_slicerange/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

range_1/startConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 

range_1/deltaConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
f
range_1Rangerange_1/startsub_4range_1/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

concat/axisConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 
r
concatConcatV2rangerange_1concat/axis*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0

GatherGatherPadconcat*
Tindices0*
Tparams0*
validate_indices(*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
J
Shape_8ShapePad*
out_type0*
_output_shapes
:*
T0
Ŗ
strided_slice_1/stackConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
valueB:*
dtype0*
_output_shapes
:
Ĩ
strided_slice_1/stack_1Const^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
valueB:*
dtype0*
_output_shapes
:
Ĩ
strided_slice_1/stack_2Const^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
valueB:*
dtype0*
_output_shapes
:

strided_slice_1StridedSliceShape_8strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

add_3/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
: *
value	B :*
dtype0
G
add_3Addstrided_slice_1add_3/y*
T0*
_output_shapes
: 

floordiv_2/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
L

floordiv_2FloorDivadd_3floordiv_2/y*
T0*
_output_shapes
: 
J
sub_5Substrided_slice_1
floordiv_2*
_output_shapes
: *
T0

range_2/deltaConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
h
range_2Rangesub_5strided_slice_1range_2/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

range_3/startConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
: *
value	B : *
dtype0

range_3/deltaConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
f
range_3Rangerange_3/startsub_5range_3/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

concat_1/axisConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 
x
concat_1ConcatV2range_2range_3concat_1/axis*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0*
N

GatherV2/axisConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
 
GatherV2GatherV2Gatherconcat_1GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
J
Shape_9ShapePad*
T0*
out_type0*
_output_shapes
:
Ŗ
strided_slice_2/stackConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
:*
valueB:*
dtype0
Ĩ
strided_slice_2/stack_1Const^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
dtype0*
_output_shapes
:*
valueB:
Ĩ
strided_slice_2/stack_2Const^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
:*
valueB:*
dtype0

strided_slice_2StridedSliceShape_9strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

add_4/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
G
add_4Addstrided_slice_2add_4/y*
_output_shapes
: *
T0

floordiv_3/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
L

floordiv_3FloorDivadd_4floordiv_3/y*
_output_shapes
: *
T0
J
sub_6Substrided_slice_2
floordiv_3*
T0*
_output_shapes
: 

range_4/deltaConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
h
range_4Rangesub_6strided_slice_2range_4/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

range_5/startConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 

range_5/deltaConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
f
range_5Rangerange_5/startsub_6range_5/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

concat_2/axisConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 
x
concat_2ConcatV2range_4range_5concat_2/axis*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0

GatherV2_1/axisConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
: *
value	B :*
dtype0
Ļ

GatherV2_1GatherV2GatherV2concat_2GatherV2_1/axis*
Tindices0*
Tparams0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
Taxis0
q
Cast_1Cast
GatherV2_1*

SrcT0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0
U
FFT3DFFT3DCast_1*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
[
ConjConjFFT3D*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Y
ones_like/ShapeShape
cond/Merge*
out_type0*
_output_shapes
:*
T0
T
ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

	ones_likeFillones_like/Shapeones_like/Const*
T0*

index_type0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
J
mul/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
d
mulMulmul/x	ones_like*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
f
deconvolutionIdentitymul*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
M
while/ConstConst*
value	B :*
dtype0*
_output_shapes
: 

while/EnterEnterwhile/Const*
T0*
is_constant( *
parallel_iterations*
_output_shapes
: *#

frame_namewhile/while_context
Ā
while/Enter_1Enterdeconvolution*
T0*
is_constant( *
parallel_iterations*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*#

frame_namewhile/while_context
b
while/MergeMergewhile/Enterwhile/NextIteration*
_output_shapes
: : *
T0*
N

while/Merge_1Mergewhile/Enter_1while/NextIteration_1*
T0*
N*?
_output_shapes-
+:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 
a
while/LessEqual	LessEqualwhile/Mergewhile/LessEqual/Enter*
T0*
_output_shapes
: 

while/LessEqual/EnterEnterniter*
parallel_iterations*
_output_shapes
: *#

frame_namewhile/while_context*
T0*
is_constant(
C
while/LoopCondLoopCondwhile/LessEqual*
_output_shapes
: 
v
while/SwitchSwitchwhile/Mergewhile/LoopCond*
T0*
_class
loc:@while/Merge*
_output_shapes
: : 
Ę
while/Switch_1Switchwhile/Merge_1while/LoopCond*
T0* 
_class
loc:@while/Merge_1*f
_output_shapesT
R:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
K
while/IdentityIdentitywhile/Switch:1*
T0*
_output_shapes
: 
v
while/Identity_1Identitywhile/Switch_1:1*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
{

while/CastCastwhile/Identity_1*

SrcT0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0
_
while/FFT3DFFT3D
while/Cast*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
v
	while/mulMulwhile/FFT3Dwhile/mul/Enter*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ē
while/mul/EnterEnterFFT3D*
T0*
is_constant(*
parallel_iterations*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*#

frame_namewhile/while_context
`
while/IFFT3DIFFT3D	while/mul*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
t

while/RealRealwhile/IFFT3D*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tout0*
T0
b
while/Less/yConst^while/Identity*
valueB
 *Ŋ75*
dtype0*
_output_shapes
: 
t

while/LessLess
while/Realwhile/Less/y*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

while/zeros_like	ZerosLikewhile/zeros_like/Enter^while/Identity*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Æ
while/zeros_like/EnterEnter
cond/Merge*
is_constant(*
parallel_iterations*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*#

frame_namewhile/while_context*
T0

while/truedivRealDivwhile/zeros_like/Enter
while/Real*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

while/blur1Select
while/Lesswhile/zeros_likewhile/truediv*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
x
while/Cast_1Castwhile/blur1*

SrcT0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0
c
while/FFT3D_1FFT3Dwhile/Cast_1*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
|
while/mul_1Mulwhile/FFT3D_1while/mul_1/Enter*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
ģ
while/mul_1/EnterEnterConj*
T0*
is_constant(*
parallel_iterations*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*#

frame_namewhile/while_context
d
while/IFFT3D_1IFFT3Dwhile/mul_1*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
x
while/Real_1Realwhile/IFFT3D_1*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tout0
z
while/mul_2Mulwhile/Identity_1while/Real_1*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
e
while/Maximum/yConst^while/Identity*
_output_shapes
: *
valueB
 *    *
dtype0
~
while/MaximumMaximumwhile/mul_2while/Maximum/y*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
^
while/add/yConst^while/Identity*
value	B :*
dtype0*
_output_shapes
: 
N
	while/addAddwhile/Identitywhile/add/y*
_output_shapes
: *
T0
P
while/NextIterationNextIteration	while/add*
T0*
_output_shapes
: 
}
while/NextIteration_1NextIterationwhile/Maximum*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
A

while/ExitExitwhile/Switch*
T0*
_output_shapes
: 
l
while/Exit_1Exitwhile/Switch_1*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
L
Shape_10Shapedata*
T0*
out_type0*
_output_shapes
:
T
Shape_11Shapewhile/Exit_1*
T0*
out_type0*
_output_shapes
:
E
sub_7SubShape_11Shape_10*
T0*
_output_shapes
:
I
add_5/yConst*
value	B :*
dtype0*
_output_shapes
: 
A
add_5Addsub_7add_5/y*
T0*
_output_shapes
:
N
floordiv_4/yConst*
value	B :*
dtype0*
_output_shapes
: 
P

floordiv_4FloorDivadd_5floordiv_4/y*
T0*
_output_shapes
:

SliceSlicewhile/Exit_1
floordiv_4Shape_10*
Index0*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
a
resultIdentitySlice*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
L
Shape_12Shapedata*
_output_shapes
:*
T0*
out_type0
O
Shape_13Shapetruediv*
_output_shapes
:*
T0*
out_type0""÷
cond_contextæã
ĸ
cond/cond_textcond/pred_id:0cond/switch_t:0 *ė
add:0
cond/Cast/Switch:1
cond/Cast:0
cond/Cast_1:0
cond/Ceil:0

cond/Log:0
cond/Log_1/x:0
cond/Log_1:0
cond/MirrorPad:0
cond/Pow/x:0

cond/Pow:0
cond/Shape/Switch:1
cond/Shape:0
cond/add/y:0

cond/add:0
cond/floordiv/y:0
cond/floordiv:0
cond/pred_id:0
cond/stack:0

cond/sub:0
cond/sub_1:0
cond/sub_2:0
cond/switch_t:0
cond/truediv:0
data:0 
cond/pred_id:0cond/pred_id:0
add:0cond/Cast/Switch:1
data:0cond/Shape/Switch:1"
cond/switch_t:0cond/switch_t:0
ģ
cond/cond_text_1cond/pred_id:0cond/switch_f:0*
add:0
cond/MirrorPad_1:0
cond/Shape_1/Switch:0
cond/Shape_1:0
cond/add_1/y:0
cond/add_1:0
cond/floordiv_1/y:0
cond/floordiv_1:0
cond/pred_id:0
cond/stack_1:0
cond/sub_3/Switch:0
cond/sub_3:0
cond/sub_4:0
cond/sub_5:0
cond/switch_f:0
data:0
add:0cond/sub_3/Switch:0
data:0cond/Shape_1/Switch:0"
cond/switch_f:0cond/switch_f:0 
cond/pred_id:0cond/pred_id:0"Ģ
while_context

while/while_context*while/LoopCond:02while/Merge:0:while/Identity:0Bwhile/Exit:0Bwhile/Exit_1:0J
Conj:0
FFT3D:0
cond/Merge:0
niter:0
while/Cast:0
while/Cast_1:0
while/Enter:0
while/Enter_1:0
while/Exit:0
while/Exit_1:0
while/FFT3D:0
while/FFT3D_1:0
while/IFFT3D:0
while/IFFT3D_1:0
while/Identity:0
while/Identity_1:0
while/Less/y:0
while/Less:0
while/LessEqual/Enter:0
while/LessEqual:0
while/LoopCond:0
while/Maximum/y:0
while/Maximum:0
while/Merge:0
while/Merge:1
while/Merge_1:0
while/Merge_1:1
while/NextIteration:0
while/NextIteration_1:0
while/Real:0
while/Real_1:0
while/Switch:0
while/Switch:1
while/Switch_1:0
while/Switch_1:1
while/add/y:0
while/add:0
while/blur1:0
while/mul/Enter:0
while/mul:0
while/mul_1/Enter:0
while/mul_1:0
while/mul_2:0
while/truediv:0
while/zeros_like/Enter:0
while/zeros_like:0(
cond/Merge:0while/zeros_like/Enter:0
FFT3D:0while/mul/Enter:0
Conj:0while/mul_1/Enter:0"
niter:0while/LessEqual/Enter:0Rwhile/Enter:0Rwhile/Enter_1:0*Î
serving_defaultē
@
kernel6
	truediv:0'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
;
data3
data:0'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

niter
niter:0 

pad_min
	pad_min:0

pad_mode

pad_mode:0 
pad_min
	pad_min:0?
result5
result:0'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
	pad_shape
add:0
pad_mode

pad_mode:0 "

data_shape

Shape_12:0"

kern_shape

Shape_13:0