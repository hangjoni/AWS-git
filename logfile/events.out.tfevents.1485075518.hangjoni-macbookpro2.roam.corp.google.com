       £K"	  !ÖAbrain.Event:2¬s²¢*B     ¬kŪ	mÉ!ÖA"
4
PlaceholderPlaceholder*
shape: *
dtype0
6
Placeholder_1Placeholder*
shape: *
dtype0
=
one_hot/on_valueConst*
valueB
 *  ?*
dtype0
>
one_hot/off_valueConst*
valueB
 *    *
dtype0
7
one_hot/depthConst*
value	B :+*
dtype0
|
one_hotOneHotPlaceholder_1one_hot/depthone_hot/on_valueone_hot/off_value*
axis’’’’’’’’’*
T0*
TI0
`
#Conv_Layer_1/truncated_normal/shapeConst*%
valueB"            *
dtype0
O
"Conv_Layer_1/truncated_normal/meanConst*
valueB
 *    *
dtype0
Q
$Conv_Layer_1/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

-Conv_Layer_1/truncated_normal/TruncatedNormalTruncatedNormal#Conv_Layer_1/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

!Conv_Layer_1/truncated_normal/mulMul-Conv_Layer_1/truncated_normal/TruncatedNormal$Conv_Layer_1/truncated_normal/stddev*
T0
t
Conv_Layer_1/truncated_normalAdd!Conv_Layer_1/truncated_normal/mul"Conv_Layer_1/truncated_normal/mean*
T0
o
Conv_Layer_1/VariableVariable*
shape:*
	container *
shared_name *
dtype0
ø
Conv_Layer_1/Variable/AssignAssignConv_Layer_1/VariableConv_Layer_1/truncated_normal*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
p
Conv_Layer_1/Variable/readIdentityConv_Layer_1/Variable*
T0*(
_class
loc:@Conv_Layer_1/Variable
C
Conv_Layer_1/zerosConst*
valueB*    *
dtype0
e
Conv_Layer_1/Variable_1Variable*
shape:*
	container *
shared_name *
dtype0
³
Conv_Layer_1/Variable_1/AssignAssignConv_Layer_1/Variable_1Conv_Layer_1/zeros*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1
v
Conv_Layer_1/Variable_1/readIdentityConv_Layer_1/Variable_1*
T0**
_class 
loc:@Conv_Layer_1/Variable_1
®
Conv_Layer_1/WX_b_1/Conv2DConv2DPlaceholderConv_Layer_1/Variable/read*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC
a
Conv_Layer_1/WX_b_1/addAddConv_Layer_1/WX_b_1/Conv2DConv_Layer_1/Variable_1/read*
T0
B
Conv_Layer_1/relu_1/ReluReluConv_Layer_1/WX_b_1/add*
T0

Conv_Layer_1/pooling_1/MaxPoolMaxPoolConv_Layer_1/relu_1/Relu*
T0*
ksize
*
paddingVALID*
strides
*
data_formatNHWC
`
#Conv_Layer_2/truncated_normal/shapeConst*%
valueB"            *
dtype0
O
"Conv_Layer_2/truncated_normal/meanConst*
valueB
 *    *
dtype0
Q
$Conv_Layer_2/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

-Conv_Layer_2/truncated_normal/TruncatedNormalTruncatedNormal#Conv_Layer_2/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

!Conv_Layer_2/truncated_normal/mulMul-Conv_Layer_2/truncated_normal/TruncatedNormal$Conv_Layer_2/truncated_normal/stddev*
T0
t
Conv_Layer_2/truncated_normalAdd!Conv_Layer_2/truncated_normal/mul"Conv_Layer_2/truncated_normal/mean*
T0
o
Conv_Layer_2/VariableVariable*
shape:*
	container *
shared_name *
dtype0
ø
Conv_Layer_2/Variable/AssignAssignConv_Layer_2/VariableConv_Layer_2/truncated_normal*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
p
Conv_Layer_2/Variable/readIdentityConv_Layer_2/Variable*
T0*(
_class
loc:@Conv_Layer_2/Variable
C
Conv_Layer_2/zerosConst*
valueB*    *
dtype0
e
Conv_Layer_2/Variable_1Variable*
shape:*
	container *
shared_name *
dtype0
³
Conv_Layer_2/Variable_1/AssignAssignConv_Layer_2/Variable_1Conv_Layer_2/zeros*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1
v
Conv_Layer_2/Variable_1/readIdentityConv_Layer_2/Variable_1*
T0**
_class 
loc:@Conv_Layer_2/Variable_1
Į
Conv_Layer_2/WX_b_2/Conv2DConv2DConv_Layer_1/pooling_1/MaxPoolConv_Layer_2/Variable/read*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC
a
Conv_Layer_2/WX_b_2/addAddConv_Layer_2/WX_b_2/Conv2DConv_Layer_2/Variable_1/read*
T0
B
Conv_Layer_2/relu_2/ReluReluConv_Layer_2/WX_b_2/add*
T0

Conv_Layer_2/pooling_2/MaxPoolMaxPoolConv_Layer_2/relu_2/Relu*
T0*
ksize
*
paddingVALID*
strides
*
data_formatNHWC
_
*Conv_Layer_2/flatten/Flatten/Reshape/shapeConst*
valueB"’’’’  *
dtype0

$Conv_Layer_2/flatten/Flatten/ReshapeReshapeConv_Layer_2/pooling_2/MaxPool*Conv_Layer_2/flatten/Flatten/Reshape/shape*
Tshape0*
T0
V
!FC_Layer_1/truncated_normal/shapeConst*
valueB"  x   *
dtype0
M
 FC_Layer_1/truncated_normal/meanConst*
valueB
 *    *
dtype0
O
"FC_Layer_1/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

+FC_Layer_1/truncated_normal/TruncatedNormalTruncatedNormal!FC_Layer_1/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

FC_Layer_1/truncated_normal/mulMul+FC_Layer_1/truncated_normal/TruncatedNormal"FC_Layer_1/truncated_normal/stddev*
T0
n
FC_Layer_1/truncated_normalAddFC_Layer_1/truncated_normal/mul FC_Layer_1/truncated_normal/mean*
T0
f
FC_Layer_1/VariableVariable*
shape:	x*
	container *
shared_name *
dtype0
°
FC_Layer_1/Variable/AssignAssignFC_Layer_1/VariableFC_Layer_1/truncated_normal*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
j
FC_Layer_1/Variable/readIdentityFC_Layer_1/Variable*
T0*&
_class
loc:@FC_Layer_1/Variable
A
FC_Layer_1/zerosConst*
valueBx*    *
dtype0
c
FC_Layer_1/Variable_1Variable*
shape:x*
	container *
shared_name *
dtype0
«
FC_Layer_1/Variable_1/AssignAssignFC_Layer_1/Variable_1FC_Layer_1/zeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
p
FC_Layer_1/Variable_1/readIdentityFC_Layer_1/Variable_1*
T0*(
_class
loc:@FC_Layer_1/Variable_1

FC_Layer_1/Wx_b_3/MatMulMatMul$Conv_Layer_2/flatten/Flatten/ReshapeFC_Layer_1/Variable/read*
T0*
transpose_b( *
transpose_a( 
[
FC_Layer_1/Wx_b_3/addAddFC_Layer_1/Wx_b_3/MatMulFC_Layer_1/Variable_1/read*
T0
>
FC_Layer_1/relu_3/ReluReluFC_Layer_1/Wx_b_3/add*
T0
P
#FC_Layer_1/relu_3/dropout/keep_probConst*
valueB
 *ĶĢL?*
dtype0
Y
FC_Layer_1/relu_3/dropout/ShapeShapeFC_Layer_1/relu_3/Relu*
out_type0*
T0
Y
,FC_Layer_1/relu_3/dropout/random_uniform/minConst*
valueB
 *    *
dtype0
Y
,FC_Layer_1/relu_3/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0

6FC_Layer_1/relu_3/dropout/random_uniform/RandomUniformRandomUniformFC_Layer_1/relu_3/dropout/Shape*

seed *
T0*
dtype0*
seed2 

,FC_Layer_1/relu_3/dropout/random_uniform/subSub,FC_Layer_1/relu_3/dropout/random_uniform/max,FC_Layer_1/relu_3/dropout/random_uniform/min*
T0
¢
,FC_Layer_1/relu_3/dropout/random_uniform/mulMul6FC_Layer_1/relu_3/dropout/random_uniform/RandomUniform,FC_Layer_1/relu_3/dropout/random_uniform/sub*
T0

(FC_Layer_1/relu_3/dropout/random_uniformAdd,FC_Layer_1/relu_3/dropout/random_uniform/mul,FC_Layer_1/relu_3/dropout/random_uniform/min*
T0
|
FC_Layer_1/relu_3/dropout/addAdd#FC_Layer_1/relu_3/dropout/keep_prob(FC_Layer_1/relu_3/dropout/random_uniform*
T0
P
FC_Layer_1/relu_3/dropout/FloorFloorFC_Layer_1/relu_3/dropout/add*
T0
j
FC_Layer_1/relu_3/dropout/DivDivFC_Layer_1/relu_3/Relu#FC_Layer_1/relu_3/dropout/keep_prob*
T0
m
FC_Layer_1/relu_3/dropout/mulMulFC_Layer_1/relu_3/dropout/DivFC_Layer_1/relu_3/dropout/Floor*
T0
V
!FC_Layer_2/truncated_normal/shapeConst*
valueB"x   T   *
dtype0
M
 FC_Layer_2/truncated_normal/meanConst*
valueB
 *    *
dtype0
O
"FC_Layer_2/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

+FC_Layer_2/truncated_normal/TruncatedNormalTruncatedNormal!FC_Layer_2/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

FC_Layer_2/truncated_normal/mulMul+FC_Layer_2/truncated_normal/TruncatedNormal"FC_Layer_2/truncated_normal/stddev*
T0
n
FC_Layer_2/truncated_normalAddFC_Layer_2/truncated_normal/mul FC_Layer_2/truncated_normal/mean*
T0
e
FC_Layer_2/VariableVariable*
shape
:xT*
	container *
shared_name *
dtype0
°
FC_Layer_2/Variable/AssignAssignFC_Layer_2/VariableFC_Layer_2/truncated_normal*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
j
FC_Layer_2/Variable/readIdentityFC_Layer_2/Variable*
T0*&
_class
loc:@FC_Layer_2/Variable
A
FC_Layer_2/zerosConst*
valueBT*    *
dtype0
c
FC_Layer_2/Variable_1Variable*
shape:T*
	container *
shared_name *
dtype0
«
FC_Layer_2/Variable_1/AssignAssignFC_Layer_2/Variable_1FC_Layer_2/zeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
p
FC_Layer_2/Variable_1/readIdentityFC_Layer_2/Variable_1*
T0*(
_class
loc:@FC_Layer_2/Variable_1

FC_Layer_2/Wx_b_4/MatMulMatMulFC_Layer_1/relu_3/dropout/mulFC_Layer_2/Variable/read*
T0*
transpose_b( *
transpose_a( 
[
FC_Layer_2/Wx_b_4/addAddFC_Layer_2/Wx_b_4/MatMulFC_Layer_2/Variable_1/read*
T0
>
FC_Layer_2/relu_4/ReluReluFC_Layer_2/Wx_b_4/add*
T0
P
#FC_Layer_2/relu_4/dropout/keep_probConst*
valueB
 *ĶĢL?*
dtype0
Y
FC_Layer_2/relu_4/dropout/ShapeShapeFC_Layer_2/relu_4/Relu*
out_type0*
T0
Y
,FC_Layer_2/relu_4/dropout/random_uniform/minConst*
valueB
 *    *
dtype0
Y
,FC_Layer_2/relu_4/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0

6FC_Layer_2/relu_4/dropout/random_uniform/RandomUniformRandomUniformFC_Layer_2/relu_4/dropout/Shape*

seed *
T0*
dtype0*
seed2 

,FC_Layer_2/relu_4/dropout/random_uniform/subSub,FC_Layer_2/relu_4/dropout/random_uniform/max,FC_Layer_2/relu_4/dropout/random_uniform/min*
T0
¢
,FC_Layer_2/relu_4/dropout/random_uniform/mulMul6FC_Layer_2/relu_4/dropout/random_uniform/RandomUniform,FC_Layer_2/relu_4/dropout/random_uniform/sub*
T0

(FC_Layer_2/relu_4/dropout/random_uniformAdd,FC_Layer_2/relu_4/dropout/random_uniform/mul,FC_Layer_2/relu_4/dropout/random_uniform/min*
T0
|
FC_Layer_2/relu_4/dropout/addAdd#FC_Layer_2/relu_4/dropout/keep_prob(FC_Layer_2/relu_4/dropout/random_uniform*
T0
P
FC_Layer_2/relu_4/dropout/FloorFloorFC_Layer_2/relu_4/dropout/add*
T0
j
FC_Layer_2/relu_4/dropout/DivDivFC_Layer_2/relu_4/Relu#FC_Layer_2/relu_4/dropout/keep_prob*
T0
m
FC_Layer_2/relu_4/dropout/mulMulFC_Layer_2/relu_4/dropout/DivFC_Layer_2/relu_4/dropout/Floor*
T0
V
!FC_Layer_3/truncated_normal/shapeConst*
valueB"T   +   *
dtype0
M
 FC_Layer_3/truncated_normal/meanConst*
valueB
 *    *
dtype0
O
"FC_Layer_3/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

+FC_Layer_3/truncated_normal/TruncatedNormalTruncatedNormal!FC_Layer_3/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

FC_Layer_3/truncated_normal/mulMul+FC_Layer_3/truncated_normal/TruncatedNormal"FC_Layer_3/truncated_normal/stddev*
T0
n
FC_Layer_3/truncated_normalAddFC_Layer_3/truncated_normal/mul FC_Layer_3/truncated_normal/mean*
T0
e
FC_Layer_3/VariableVariable*
shape
:T+*
	container *
shared_name *
dtype0
°
FC_Layer_3/Variable/AssignAssignFC_Layer_3/VariableFC_Layer_3/truncated_normal*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
j
FC_Layer_3/Variable/readIdentityFC_Layer_3/Variable*
T0*&
_class
loc:@FC_Layer_3/Variable
A
FC_Layer_3/zerosConst*
valueB+*    *
dtype0
c
FC_Layer_3/Variable_1Variable*
shape:+*
	container *
shared_name *
dtype0
«
FC_Layer_3/Variable_1/AssignAssignFC_Layer_3/Variable_1FC_Layer_3/zeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
p
FC_Layer_3/Variable_1/readIdentityFC_Layer_3/Variable_1*
T0*(
_class
loc:@FC_Layer_3/Variable_1

FC_Layer_3/Wx_b_5/MatMulMatMulFC_Layer_2/relu_4/dropout/mulFC_Layer_3/Variable/read*
T0*
transpose_b( *
transpose_a( 
[
FC_Layer_3/Wx_b_5/addAddFC_Layer_3/Wx_b_5/MatMulFC_Layer_3/Variable_1/read*
T0
.
RankConst*
value	B :*
dtype0
>
ShapeShapeFC_Layer_3/Wx_b_5/add*
out_type0*
T0
0
Rank_1Const*
value	B :*
dtype0
@
Shape_1ShapeFC_Layer_3/Wx_b_5/add*
out_type0*
T0
/
Sub/yConst*
value	B :*
dtype0
"
SubSubRank_1Sub/y*
T0
6
Slice/beginPackSub*

axis *
T0*
N
8

Slice/sizeConst*
valueB:*
dtype0
F
SliceSliceShape_1Slice/begin
Slice/size*
T0*
Index0
;
concat/concat_dimConst*
value	B : *
dtype0
F
concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
M
concatConcatconcat/concat_dimconcat/values_0Slice*
T0*
N
H
ReshapeReshapeFC_Layer_3/Wx_b_5/addconcat*
Tshape0*
T0
 
Rank_2Rankone_hot*
T0
2
Shape_2Shapeone_hot*
out_type0*
T0
1
Sub_1/yConst*
value	B :*
dtype0
&
Sub_1SubRank_2Sub_1/y*
T0
:
Slice_1/beginPackSub_1*

axis *
T0*
N
:
Slice_1/sizeConst*
valueB:*
dtype0
L
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
T0*
Index0
=
concat_1/concat_dimConst*
value	B : *
dtype0
H
concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
U
concat_1Concatconcat_1/concat_dimconcat_1/values_0Slice_1*
T0*
N
>
	Reshape_1Reshapeone_hotconcat_1*
Tshape0*
T0
[
SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsReshape	Reshape_1*
T0
1
Sub_2/yConst*
value	B :*
dtype0
$
Sub_2SubRankSub_2/y*
T0
;
Slice_2/beginConst*
valueB: *
dtype0
9
Slice_2/sizePackSub_2*

axis *
T0*
N
J
Slice_2SliceShapeSlice_2/beginSlice_2/size*
T0*
Index0
S
	Reshape_2ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
Tshape0*
T0
A
loss_function/ConstConst*
valueB: *
dtype0
`
loss_function/MeanMean	Reshape_2loss_function/Const*
	keep_dims( *
T0*

Tidx0
W
 loss_function/ScalarSummary/tagsConst*
valueB Bloss_operation*
dtype0
k
loss_function/ScalarSummaryScalarSummary loss_function/ScalarSummary/tagsloss_function/Mean*
T0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  ?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
]
/gradients/loss_function/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

)gradients/loss_function/Mean_grad/ReshapeReshapegradients/Fill/gradients/loss_function/Mean_grad/Reshape/shape*
Tshape0*
T0
T
'gradients/loss_function/Mean_grad/ShapeShape	Reshape_2*
out_type0*
T0

&gradients/loss_function/Mean_grad/TileTile)gradients/loss_function/Mean_grad/Reshape'gradients/loss_function/Mean_grad/Shape*
T0*

Tmultiples0
V
)gradients/loss_function/Mean_grad/Shape_1Shape	Reshape_2*
out_type0*
T0
R
)gradients/loss_function/Mean_grad/Shape_2Const*
valueB *
dtype0
U
'gradients/loss_function/Mean_grad/ConstConst*
valueB: *
dtype0
Ø
&gradients/loss_function/Mean_grad/ProdProd)gradients/loss_function/Mean_grad/Shape_1'gradients/loss_function/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0
W
)gradients/loss_function/Mean_grad/Const_1Const*
valueB: *
dtype0
¬
(gradients/loss_function/Mean_grad/Prod_1Prod)gradients/loss_function/Mean_grad/Shape_2)gradients/loss_function/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0
U
+gradients/loss_function/Mean_grad/Maximum/yConst*
value	B :*
dtype0

)gradients/loss_function/Mean_grad/MaximumMaximum(gradients/loss_function/Mean_grad/Prod_1+gradients/loss_function/Mean_grad/Maximum/y*
T0

*gradients/loss_function/Mean_grad/floordivDiv&gradients/loss_function/Mean_grad/Prod)gradients/loss_function/Mean_grad/Maximum*
T0
r
&gradients/loss_function/Mean_grad/CastCast*gradients/loss_function/Mean_grad/floordiv*

DstT0*

SrcT0

)gradients/loss_function/Mean_grad/truedivDiv&gradients/loss_function/Mean_grad/Tile&gradients/loss_function/Mean_grad/Cast*
T0
_
gradients/Reshape_2_grad/ShapeShapeSoftmaxCrossEntropyWithLogits*
out_type0*
T0

 gradients/Reshape_2_grad/ReshapeReshape)gradients/loss_function/Mean_grad/truedivgradients/Reshape_2_grad/Shape*
Tshape0*
T0
K
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0
n
;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
¹
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_2_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0

0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0
U
gradients/Reshape_grad/ShapeShapeFC_Layer_3/Wx_b_5/add*
out_type0*
T0

gradients/Reshape_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_grad/Shape*
Tshape0*
T0
f
*gradients/FC_Layer_3/Wx_b_5/add_grad/ShapeShapeFC_Layer_3/Wx_b_5/MatMul*
out_type0*
T0
Z
,gradients/FC_Layer_3/Wx_b_5/add_grad/Shape_1Const*
valueB:+*
dtype0
¶
:gradients/FC_Layer_3/Wx_b_5/add_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/FC_Layer_3/Wx_b_5/add_grad/Shape,gradients/FC_Layer_3/Wx_b_5/add_grad/Shape_1*
T0
±
(gradients/FC_Layer_3/Wx_b_5/add_grad/SumSumgradients/Reshape_grad/Reshape:gradients/FC_Layer_3/Wx_b_5/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/FC_Layer_3/Wx_b_5/add_grad/ReshapeReshape(gradients/FC_Layer_3/Wx_b_5/add_grad/Sum*gradients/FC_Layer_3/Wx_b_5/add_grad/Shape*
Tshape0*
T0
µ
*gradients/FC_Layer_3/Wx_b_5/add_grad/Sum_1Sumgradients/Reshape_grad/Reshape<gradients/FC_Layer_3/Wx_b_5/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape_1Reshape*gradients/FC_Layer_3/Wx_b_5/add_grad/Sum_1,gradients/FC_Layer_3/Wx_b_5/add_grad/Shape_1*
Tshape0*
T0

5gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/group_depsNoOp-^gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape/^gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape_1
ł
=gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependencyIdentity,gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape6^gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape
’
?gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependency_1Identity.gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape_16^gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape_1
Ą
.gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMulMatMul=gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependencyFC_Layer_3/Variable/read*
T0*
transpose_b(*
transpose_a( 
Ē
0gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul_1MatMulFC_Layer_2/relu_4/dropout/mul=gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(
¤
8gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/group_depsNoOp/^gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul1^gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul_1

@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependencyIdentity.gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul9^gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul

Bgradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependency_1Identity0gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul_19^gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul_1
s
2gradients/FC_Layer_2/relu_4/dropout/mul_grad/ShapeShapeFC_Layer_2/relu_4/dropout/Div*
out_type0*
T0
w
4gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape_1ShapeFC_Layer_2/relu_4/dropout/Floor*
out_type0*
T0
Ī
Bgradients/FC_Layer_2/relu_4/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape4gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape_1*
T0
£
0gradients/FC_Layer_2/relu_4/dropout/mul_grad/mulMul@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependencyFC_Layer_2/relu_4/dropout/Floor*
T0
Ó
0gradients/FC_Layer_2/relu_4/dropout/mul_grad/SumSum0gradients/FC_Layer_2/relu_4/dropout/mul_grad/mulBgradients/FC_Layer_2/relu_4/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4gradients/FC_Layer_2/relu_4/dropout/mul_grad/ReshapeReshape0gradients/FC_Layer_2/relu_4/dropout/mul_grad/Sum2gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape*
Tshape0*
T0
£
2gradients/FC_Layer_2/relu_4/dropout/mul_grad/mul_1MulFC_Layer_2/relu_4/dropout/Div@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependency*
T0
Ł
2gradients/FC_Layer_2/relu_4/dropout/mul_grad/Sum_1Sum2gradients/FC_Layer_2/relu_4/dropout/mul_grad/mul_1Dgradients/FC_Layer_2/relu_4/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ā
6gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape_1Reshape2gradients/FC_Layer_2/relu_4/dropout/mul_grad/Sum_14gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape_1*
Tshape0*
T0
µ
=gradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/group_depsNoOp5^gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape7^gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape_1

Egradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/control_dependencyIdentity4gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape>^gradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape

Ggradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/control_dependency_1Identity6gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape_1>^gradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape_1
l
2gradients/FC_Layer_2/relu_4/dropout/Div_grad/ShapeShapeFC_Layer_2/relu_4/Relu*
out_type0*
T0
]
4gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape_1Const*
valueB *
dtype0
Ī
Bgradients/FC_Layer_2/relu_4/dropout/Div_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape4gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape_1*
T0
°
4gradients/FC_Layer_2/relu_4/dropout/Div_grad/truedivDivEgradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/control_dependency#FC_Layer_2/relu_4/dropout/keep_prob*
T0
×
0gradients/FC_Layer_2/relu_4/dropout/Div_grad/SumSum4gradients/FC_Layer_2/relu_4/dropout/Div_grad/truedivBgradients/FC_Layer_2/relu_4/dropout/Div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4gradients/FC_Layer_2/relu_4/dropout/Div_grad/ReshapeReshape0gradients/FC_Layer_2/relu_4/dropout/Div_grad/Sum2gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape*
Tshape0*
T0
X
0gradients/FC_Layer_2/relu_4/dropout/Div_grad/NegNegFC_Layer_2/relu_4/Relu*
T0
k
3gradients/FC_Layer_2/relu_4/dropout/Div_grad/SquareSquare#FC_Layer_2/relu_4/dropout/keep_prob*
T0
­
6gradients/FC_Layer_2/relu_4/dropout/Div_grad/truediv_1Div0gradients/FC_Layer_2/relu_4/dropout/Div_grad/Neg3gradients/FC_Layer_2/relu_4/dropout/Div_grad/Square*
T0
æ
0gradients/FC_Layer_2/relu_4/dropout/Div_grad/mulMulEgradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/control_dependency6gradients/FC_Layer_2/relu_4/dropout/Div_grad/truediv_1*
T0
×
2gradients/FC_Layer_2/relu_4/dropout/Div_grad/Sum_1Sum0gradients/FC_Layer_2/relu_4/dropout/Div_grad/mulDgradients/FC_Layer_2/relu_4/dropout/Div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ā
6gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape_1Reshape2gradients/FC_Layer_2/relu_4/dropout/Div_grad/Sum_14gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape_1*
Tshape0*
T0
µ
=gradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/group_depsNoOp5^gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape7^gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape_1

Egradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/control_dependencyIdentity4gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape>^gradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape

Ggradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/control_dependency_1Identity6gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape_1>^gradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape_1
¢
.gradients/FC_Layer_2/relu_4/Relu_grad/ReluGradReluGradEgradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/control_dependencyFC_Layer_2/relu_4/Relu*
T0
f
*gradients/FC_Layer_2/Wx_b_4/add_grad/ShapeShapeFC_Layer_2/Wx_b_4/MatMul*
out_type0*
T0
Z
,gradients/FC_Layer_2/Wx_b_4/add_grad/Shape_1Const*
valueB:T*
dtype0
¶
:gradients/FC_Layer_2/Wx_b_4/add_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/FC_Layer_2/Wx_b_4/add_grad/Shape,gradients/FC_Layer_2/Wx_b_4/add_grad/Shape_1*
T0
Į
(gradients/FC_Layer_2/Wx_b_4/add_grad/SumSum.gradients/FC_Layer_2/relu_4/Relu_grad/ReluGrad:gradients/FC_Layer_2/Wx_b_4/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/FC_Layer_2/Wx_b_4/add_grad/ReshapeReshape(gradients/FC_Layer_2/Wx_b_4/add_grad/Sum*gradients/FC_Layer_2/Wx_b_4/add_grad/Shape*
Tshape0*
T0
Å
*gradients/FC_Layer_2/Wx_b_4/add_grad/Sum_1Sum.gradients/FC_Layer_2/relu_4/Relu_grad/ReluGrad<gradients/FC_Layer_2/Wx_b_4/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape_1Reshape*gradients/FC_Layer_2/Wx_b_4/add_grad/Sum_1,gradients/FC_Layer_2/Wx_b_4/add_grad/Shape_1*
Tshape0*
T0

5gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/group_depsNoOp-^gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape/^gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape_1
ł
=gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependencyIdentity,gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape6^gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape
’
?gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependency_1Identity.gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape_16^gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape_1
Ą
.gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMulMatMul=gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependencyFC_Layer_2/Variable/read*
T0*
transpose_b(*
transpose_a( 
Ē
0gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul_1MatMulFC_Layer_1/relu_3/dropout/mul=gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(
¤
8gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/group_depsNoOp/^gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul1^gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul_1

@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependencyIdentity.gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul9^gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul

Bgradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependency_1Identity0gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul_19^gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul_1
s
2gradients/FC_Layer_1/relu_3/dropout/mul_grad/ShapeShapeFC_Layer_1/relu_3/dropout/Div*
out_type0*
T0
w
4gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape_1ShapeFC_Layer_1/relu_3/dropout/Floor*
out_type0*
T0
Ī
Bgradients/FC_Layer_1/relu_3/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape4gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape_1*
T0
£
0gradients/FC_Layer_1/relu_3/dropout/mul_grad/mulMul@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependencyFC_Layer_1/relu_3/dropout/Floor*
T0
Ó
0gradients/FC_Layer_1/relu_3/dropout/mul_grad/SumSum0gradients/FC_Layer_1/relu_3/dropout/mul_grad/mulBgradients/FC_Layer_1/relu_3/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4gradients/FC_Layer_1/relu_3/dropout/mul_grad/ReshapeReshape0gradients/FC_Layer_1/relu_3/dropout/mul_grad/Sum2gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape*
Tshape0*
T0
£
2gradients/FC_Layer_1/relu_3/dropout/mul_grad/mul_1MulFC_Layer_1/relu_3/dropout/Div@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependency*
T0
Ł
2gradients/FC_Layer_1/relu_3/dropout/mul_grad/Sum_1Sum2gradients/FC_Layer_1/relu_3/dropout/mul_grad/mul_1Dgradients/FC_Layer_1/relu_3/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ā
6gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape_1Reshape2gradients/FC_Layer_1/relu_3/dropout/mul_grad/Sum_14gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape_1*
Tshape0*
T0
µ
=gradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/group_depsNoOp5^gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape7^gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape_1

Egradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/control_dependencyIdentity4gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape>^gradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape

Ggradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/control_dependency_1Identity6gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape_1>^gradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape_1
l
2gradients/FC_Layer_1/relu_3/dropout/Div_grad/ShapeShapeFC_Layer_1/relu_3/Relu*
out_type0*
T0
]
4gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape_1Const*
valueB *
dtype0
Ī
Bgradients/FC_Layer_1/relu_3/dropout/Div_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape4gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape_1*
T0
°
4gradients/FC_Layer_1/relu_3/dropout/Div_grad/truedivDivEgradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/control_dependency#FC_Layer_1/relu_3/dropout/keep_prob*
T0
×
0gradients/FC_Layer_1/relu_3/dropout/Div_grad/SumSum4gradients/FC_Layer_1/relu_3/dropout/Div_grad/truedivBgradients/FC_Layer_1/relu_3/dropout/Div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4gradients/FC_Layer_1/relu_3/dropout/Div_grad/ReshapeReshape0gradients/FC_Layer_1/relu_3/dropout/Div_grad/Sum2gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape*
Tshape0*
T0
X
0gradients/FC_Layer_1/relu_3/dropout/Div_grad/NegNegFC_Layer_1/relu_3/Relu*
T0
k
3gradients/FC_Layer_1/relu_3/dropout/Div_grad/SquareSquare#FC_Layer_1/relu_3/dropout/keep_prob*
T0
­
6gradients/FC_Layer_1/relu_3/dropout/Div_grad/truediv_1Div0gradients/FC_Layer_1/relu_3/dropout/Div_grad/Neg3gradients/FC_Layer_1/relu_3/dropout/Div_grad/Square*
T0
æ
0gradients/FC_Layer_1/relu_3/dropout/Div_grad/mulMulEgradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/control_dependency6gradients/FC_Layer_1/relu_3/dropout/Div_grad/truediv_1*
T0
×
2gradients/FC_Layer_1/relu_3/dropout/Div_grad/Sum_1Sum0gradients/FC_Layer_1/relu_3/dropout/Div_grad/mulDgradients/FC_Layer_1/relu_3/dropout/Div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ā
6gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape_1Reshape2gradients/FC_Layer_1/relu_3/dropout/Div_grad/Sum_14gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape_1*
Tshape0*
T0
µ
=gradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/group_depsNoOp5^gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape7^gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape_1

Egradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/control_dependencyIdentity4gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape>^gradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape

Ggradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/control_dependency_1Identity6gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape_1>^gradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape_1
¢
.gradients/FC_Layer_1/relu_3/Relu_grad/ReluGradReluGradEgradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/control_dependencyFC_Layer_1/relu_3/Relu*
T0
f
*gradients/FC_Layer_1/Wx_b_3/add_grad/ShapeShapeFC_Layer_1/Wx_b_3/MatMul*
out_type0*
T0
Z
,gradients/FC_Layer_1/Wx_b_3/add_grad/Shape_1Const*
valueB:x*
dtype0
¶
:gradients/FC_Layer_1/Wx_b_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/FC_Layer_1/Wx_b_3/add_grad/Shape,gradients/FC_Layer_1/Wx_b_3/add_grad/Shape_1*
T0
Į
(gradients/FC_Layer_1/Wx_b_3/add_grad/SumSum.gradients/FC_Layer_1/relu_3/Relu_grad/ReluGrad:gradients/FC_Layer_1/Wx_b_3/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/FC_Layer_1/Wx_b_3/add_grad/ReshapeReshape(gradients/FC_Layer_1/Wx_b_3/add_grad/Sum*gradients/FC_Layer_1/Wx_b_3/add_grad/Shape*
Tshape0*
T0
Å
*gradients/FC_Layer_1/Wx_b_3/add_grad/Sum_1Sum.gradients/FC_Layer_1/relu_3/Relu_grad/ReluGrad<gradients/FC_Layer_1/Wx_b_3/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape_1Reshape*gradients/FC_Layer_1/Wx_b_3/add_grad/Sum_1,gradients/FC_Layer_1/Wx_b_3/add_grad/Shape_1*
Tshape0*
T0

5gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/group_depsNoOp-^gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape/^gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape_1
ł
=gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependencyIdentity,gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape6^gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape
’
?gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependency_1Identity.gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape_16^gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape_1
Ą
.gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMulMatMul=gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependencyFC_Layer_1/Variable/read*
T0*
transpose_b(*
transpose_a( 
Ī
0gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul_1MatMul$Conv_Layer_2/flatten/Flatten/Reshape=gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(
¤
8gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/group_depsNoOp/^gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul1^gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul_1

@gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/control_dependencyIdentity.gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul9^gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul

Bgradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/control_dependency_1Identity0gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul_19^gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul_1
{
9gradients/Conv_Layer_2/flatten/Flatten/Reshape_grad/ShapeShapeConv_Layer_2/pooling_2/MaxPool*
out_type0*
T0
Ś
;gradients/Conv_Layer_2/flatten/Flatten/Reshape_grad/ReshapeReshape@gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/control_dependency9gradients/Conv_Layer_2/flatten/Flatten/Reshape_grad/Shape*
Tshape0*
T0

9gradients/Conv_Layer_2/pooling_2/MaxPool_grad/MaxPoolGradMaxPoolGradConv_Layer_2/relu_2/ReluConv_Layer_2/pooling_2/MaxPool;gradients/Conv_Layer_2/flatten/Flatten/Reshape_grad/Reshape*
T0*
ksize
*
paddingVALID*
strides
*
data_formatNHWC

0gradients/Conv_Layer_2/relu_2/Relu_grad/ReluGradReluGrad9gradients/Conv_Layer_2/pooling_2/MaxPool_grad/MaxPoolGradConv_Layer_2/relu_2/Relu*
T0
j
,gradients/Conv_Layer_2/WX_b_2/add_grad/ShapeShapeConv_Layer_2/WX_b_2/Conv2D*
out_type0*
T0
\
.gradients/Conv_Layer_2/WX_b_2/add_grad/Shape_1Const*
valueB:*
dtype0
¼
<gradients/Conv_Layer_2/WX_b_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/Conv_Layer_2/WX_b_2/add_grad/Shape.gradients/Conv_Layer_2/WX_b_2/add_grad/Shape_1*
T0
Ē
*gradients/Conv_Layer_2/WX_b_2/add_grad/SumSum0gradients/Conv_Layer_2/relu_2/Relu_grad/ReluGrad<gradients/Conv_Layer_2/WX_b_2/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/Conv_Layer_2/WX_b_2/add_grad/ReshapeReshape*gradients/Conv_Layer_2/WX_b_2/add_grad/Sum,gradients/Conv_Layer_2/WX_b_2/add_grad/Shape*
Tshape0*
T0
Ė
,gradients/Conv_Layer_2/WX_b_2/add_grad/Sum_1Sum0gradients/Conv_Layer_2/relu_2/Relu_grad/ReluGrad>gradients/Conv_Layer_2/WX_b_2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
°
0gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape_1Reshape,gradients/Conv_Layer_2/WX_b_2/add_grad/Sum_1.gradients/Conv_Layer_2/WX_b_2/add_grad/Shape_1*
Tshape0*
T0
£
7gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/group_depsNoOp/^gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape1^gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape_1

?gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependencyIdentity.gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape8^gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape

Agradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependency_1Identity0gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape_18^gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape_1
q
/gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/ShapeShapeConv_Layer_1/pooling_1/MaxPool*
out_type0*
T0
Ć
=gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/ShapeConv_Layer_2/Variable/read?gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependency*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC
n
1gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Shape_1Const*%
valueB"            *
dtype0
Ė
>gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterConv_Layer_1/pooling_1/MaxPool1gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Shape_1?gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependency*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC
Ć
:gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/group_depsNoOp>^gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropInput?^gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropFilter
„
Bgradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/control_dependencyIdentity=gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropInput;^gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropInput
©
Dgradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/control_dependency_1Identity>gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropFilter;^gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropFilter
¢
9gradients/Conv_Layer_1/pooling_1/MaxPool_grad/MaxPoolGradMaxPoolGradConv_Layer_1/relu_1/ReluConv_Layer_1/pooling_1/MaxPoolBgradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/control_dependency*
T0*
ksize
*
paddingVALID*
strides
*
data_formatNHWC

0gradients/Conv_Layer_1/relu_1/Relu_grad/ReluGradReluGrad9gradients/Conv_Layer_1/pooling_1/MaxPool_grad/MaxPoolGradConv_Layer_1/relu_1/Relu*
T0
j
,gradients/Conv_Layer_1/WX_b_1/add_grad/ShapeShapeConv_Layer_1/WX_b_1/Conv2D*
out_type0*
T0
\
.gradients/Conv_Layer_1/WX_b_1/add_grad/Shape_1Const*
valueB:*
dtype0
¼
<gradients/Conv_Layer_1/WX_b_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/Conv_Layer_1/WX_b_1/add_grad/Shape.gradients/Conv_Layer_1/WX_b_1/add_grad/Shape_1*
T0
Ē
*gradients/Conv_Layer_1/WX_b_1/add_grad/SumSum0gradients/Conv_Layer_1/relu_1/Relu_grad/ReluGrad<gradients/Conv_Layer_1/WX_b_1/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/Conv_Layer_1/WX_b_1/add_grad/ReshapeReshape*gradients/Conv_Layer_1/WX_b_1/add_grad/Sum,gradients/Conv_Layer_1/WX_b_1/add_grad/Shape*
Tshape0*
T0
Ė
,gradients/Conv_Layer_1/WX_b_1/add_grad/Sum_1Sum0gradients/Conv_Layer_1/relu_1/Relu_grad/ReluGrad>gradients/Conv_Layer_1/WX_b_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
°
0gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape_1Reshape,gradients/Conv_Layer_1/WX_b_1/add_grad/Sum_1.gradients/Conv_Layer_1/WX_b_1/add_grad/Shape_1*
Tshape0*
T0
£
7gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/group_depsNoOp/^gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape1^gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape_1

?gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependencyIdentity.gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape8^gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape

Agradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependency_1Identity0gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape_18^gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape_1
^
/gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/ShapeShapePlaceholder*
out_type0*
T0
Ć
=gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/ShapeConv_Layer_1/Variable/read?gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependency*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC
n
1gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Shape_1Const*%
valueB"            *
dtype0
ø
>gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder1gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Shape_1?gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependency*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC
Ć
:gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/group_depsNoOp>^gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropInput?^gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropFilter
„
Bgradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/control_dependencyIdentity=gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropInput;^gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropInput
©
Dgradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/control_dependency_1Identity>gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropFilter;^gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropFilter
p
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*(
_class
loc:@Conv_Layer_1/Variable

beta1_powerVariable*
shape: *
	container *
shared_name *
dtype0*(
_class
loc:@Conv_Layer_1/Variable
 
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
\
beta1_power/readIdentitybeta1_power*
T0*(
_class
loc:@Conv_Layer_1/Variable
p
beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*(
_class
loc:@Conv_Layer_1/Variable

beta2_powerVariable*
shape: *
	container *
shared_name *
dtype0*(
_class
loc:@Conv_Layer_1/Variable
 
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
\
beta2_power/readIdentitybeta2_power*
T0*(
_class
loc:@Conv_Layer_1/Variable
B
zerosConst*%
valueB*    *
dtype0

Conv_Layer_1/Variable/AdamVariable*
shape:*
	container *
shared_name *
dtype0*(
_class
loc:@Conv_Layer_1/Variable
Ŗ
!Conv_Layer_1/Variable/Adam/AssignAssignConv_Layer_1/Variable/Adamzeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
z
Conv_Layer_1/Variable/Adam/readIdentityConv_Layer_1/Variable/Adam*
T0*(
_class
loc:@Conv_Layer_1/Variable
D
zeros_1Const*%
valueB*    *
dtype0
 
Conv_Layer_1/Variable/Adam_1Variable*
shape:*
	container *
shared_name *
dtype0*(
_class
loc:@Conv_Layer_1/Variable
°
#Conv_Layer_1/Variable/Adam_1/AssignAssignConv_Layer_1/Variable/Adam_1zeros_1*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
~
!Conv_Layer_1/Variable/Adam_1/readIdentityConv_Layer_1/Variable/Adam_1*
T0*(
_class
loc:@Conv_Layer_1/Variable
8
zeros_2Const*
valueB*    *
dtype0

Conv_Layer_1/Variable_1/AdamVariable*
shape:*
	container *
shared_name *
dtype0**
_class 
loc:@Conv_Layer_1/Variable_1
²
#Conv_Layer_1/Variable_1/Adam/AssignAssignConv_Layer_1/Variable_1/Adamzeros_2*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1

!Conv_Layer_1/Variable_1/Adam/readIdentityConv_Layer_1/Variable_1/Adam*
T0**
_class 
loc:@Conv_Layer_1/Variable_1
8
zeros_3Const*
valueB*    *
dtype0

Conv_Layer_1/Variable_1/Adam_1Variable*
shape:*
	container *
shared_name *
dtype0**
_class 
loc:@Conv_Layer_1/Variable_1
¶
%Conv_Layer_1/Variable_1/Adam_1/AssignAssignConv_Layer_1/Variable_1/Adam_1zeros_3*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1

#Conv_Layer_1/Variable_1/Adam_1/readIdentityConv_Layer_1/Variable_1/Adam_1*
T0**
_class 
loc:@Conv_Layer_1/Variable_1
D
zeros_4Const*%
valueB*    *
dtype0

Conv_Layer_2/Variable/AdamVariable*
shape:*
	container *
shared_name *
dtype0*(
_class
loc:@Conv_Layer_2/Variable
¬
!Conv_Layer_2/Variable/Adam/AssignAssignConv_Layer_2/Variable/Adamzeros_4*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
z
Conv_Layer_2/Variable/Adam/readIdentityConv_Layer_2/Variable/Adam*
T0*(
_class
loc:@Conv_Layer_2/Variable
D
zeros_5Const*%
valueB*    *
dtype0
 
Conv_Layer_2/Variable/Adam_1Variable*
shape:*
	container *
shared_name *
dtype0*(
_class
loc:@Conv_Layer_2/Variable
°
#Conv_Layer_2/Variable/Adam_1/AssignAssignConv_Layer_2/Variable/Adam_1zeros_5*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
~
!Conv_Layer_2/Variable/Adam_1/readIdentityConv_Layer_2/Variable/Adam_1*
T0*(
_class
loc:@Conv_Layer_2/Variable
8
zeros_6Const*
valueB*    *
dtype0

Conv_Layer_2/Variable_1/AdamVariable*
shape:*
	container *
shared_name *
dtype0**
_class 
loc:@Conv_Layer_2/Variable_1
²
#Conv_Layer_2/Variable_1/Adam/AssignAssignConv_Layer_2/Variable_1/Adamzeros_6*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1

!Conv_Layer_2/Variable_1/Adam/readIdentityConv_Layer_2/Variable_1/Adam*
T0**
_class 
loc:@Conv_Layer_2/Variable_1
8
zeros_7Const*
valueB*    *
dtype0

Conv_Layer_2/Variable_1/Adam_1Variable*
shape:*
	container *
shared_name *
dtype0**
_class 
loc:@Conv_Layer_2/Variable_1
¶
%Conv_Layer_2/Variable_1/Adam_1/AssignAssignConv_Layer_2/Variable_1/Adam_1zeros_7*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1

#Conv_Layer_2/Variable_1/Adam_1/readIdentityConv_Layer_2/Variable_1/Adam_1*
T0**
_class 
loc:@Conv_Layer_2/Variable_1
=
zeros_8Const*
valueB	x*    *
dtype0

FC_Layer_1/Variable/AdamVariable*
shape:	x*
	container *
shared_name *
dtype0*&
_class
loc:@FC_Layer_1/Variable
¦
FC_Layer_1/Variable/Adam/AssignAssignFC_Layer_1/Variable/Adamzeros_8*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
t
FC_Layer_1/Variable/Adam/readIdentityFC_Layer_1/Variable/Adam*
T0*&
_class
loc:@FC_Layer_1/Variable
=
zeros_9Const*
valueB	x*    *
dtype0

FC_Layer_1/Variable/Adam_1Variable*
shape:	x*
	container *
shared_name *
dtype0*&
_class
loc:@FC_Layer_1/Variable
Ŗ
!FC_Layer_1/Variable/Adam_1/AssignAssignFC_Layer_1/Variable/Adam_1zeros_9*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
x
FC_Layer_1/Variable/Adam_1/readIdentityFC_Layer_1/Variable/Adam_1*
T0*&
_class
loc:@FC_Layer_1/Variable
9
zeros_10Const*
valueBx*    *
dtype0

FC_Layer_1/Variable_1/AdamVariable*
shape:x*
	container *
shared_name *
dtype0*(
_class
loc:@FC_Layer_1/Variable_1
­
!FC_Layer_1/Variable_1/Adam/AssignAssignFC_Layer_1/Variable_1/Adamzeros_10*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
z
FC_Layer_1/Variable_1/Adam/readIdentityFC_Layer_1/Variable_1/Adam*
T0*(
_class
loc:@FC_Layer_1/Variable_1
9
zeros_11Const*
valueBx*    *
dtype0

FC_Layer_1/Variable_1/Adam_1Variable*
shape:x*
	container *
shared_name *
dtype0*(
_class
loc:@FC_Layer_1/Variable_1
±
#FC_Layer_1/Variable_1/Adam_1/AssignAssignFC_Layer_1/Variable_1/Adam_1zeros_11*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
~
!FC_Layer_1/Variable_1/Adam_1/readIdentityFC_Layer_1/Variable_1/Adam_1*
T0*(
_class
loc:@FC_Layer_1/Variable_1
=
zeros_12Const*
valueBxT*    *
dtype0

FC_Layer_2/Variable/AdamVariable*
shape
:xT*
	container *
shared_name *
dtype0*&
_class
loc:@FC_Layer_2/Variable
§
FC_Layer_2/Variable/Adam/AssignAssignFC_Layer_2/Variable/Adamzeros_12*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
t
FC_Layer_2/Variable/Adam/readIdentityFC_Layer_2/Variable/Adam*
T0*&
_class
loc:@FC_Layer_2/Variable
=
zeros_13Const*
valueBxT*    *
dtype0

FC_Layer_2/Variable/Adam_1Variable*
shape
:xT*
	container *
shared_name *
dtype0*&
_class
loc:@FC_Layer_2/Variable
«
!FC_Layer_2/Variable/Adam_1/AssignAssignFC_Layer_2/Variable/Adam_1zeros_13*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
x
FC_Layer_2/Variable/Adam_1/readIdentityFC_Layer_2/Variable/Adam_1*
T0*&
_class
loc:@FC_Layer_2/Variable
9
zeros_14Const*
valueBT*    *
dtype0

FC_Layer_2/Variable_1/AdamVariable*
shape:T*
	container *
shared_name *
dtype0*(
_class
loc:@FC_Layer_2/Variable_1
­
!FC_Layer_2/Variable_1/Adam/AssignAssignFC_Layer_2/Variable_1/Adamzeros_14*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
z
FC_Layer_2/Variable_1/Adam/readIdentityFC_Layer_2/Variable_1/Adam*
T0*(
_class
loc:@FC_Layer_2/Variable_1
9
zeros_15Const*
valueBT*    *
dtype0

FC_Layer_2/Variable_1/Adam_1Variable*
shape:T*
	container *
shared_name *
dtype0*(
_class
loc:@FC_Layer_2/Variable_1
±
#FC_Layer_2/Variable_1/Adam_1/AssignAssignFC_Layer_2/Variable_1/Adam_1zeros_15*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
~
!FC_Layer_2/Variable_1/Adam_1/readIdentityFC_Layer_2/Variable_1/Adam_1*
T0*(
_class
loc:@FC_Layer_2/Variable_1
=
zeros_16Const*
valueBT+*    *
dtype0

FC_Layer_3/Variable/AdamVariable*
shape
:T+*
	container *
shared_name *
dtype0*&
_class
loc:@FC_Layer_3/Variable
§
FC_Layer_3/Variable/Adam/AssignAssignFC_Layer_3/Variable/Adamzeros_16*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
t
FC_Layer_3/Variable/Adam/readIdentityFC_Layer_3/Variable/Adam*
T0*&
_class
loc:@FC_Layer_3/Variable
=
zeros_17Const*
valueBT+*    *
dtype0

FC_Layer_3/Variable/Adam_1Variable*
shape
:T+*
	container *
shared_name *
dtype0*&
_class
loc:@FC_Layer_3/Variable
«
!FC_Layer_3/Variable/Adam_1/AssignAssignFC_Layer_3/Variable/Adam_1zeros_17*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
x
FC_Layer_3/Variable/Adam_1/readIdentityFC_Layer_3/Variable/Adam_1*
T0*&
_class
loc:@FC_Layer_3/Variable
9
zeros_18Const*
valueB+*    *
dtype0

FC_Layer_3/Variable_1/AdamVariable*
shape:+*
	container *
shared_name *
dtype0*(
_class
loc:@FC_Layer_3/Variable_1
­
!FC_Layer_3/Variable_1/Adam/AssignAssignFC_Layer_3/Variable_1/Adamzeros_18*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
z
FC_Layer_3/Variable_1/Adam/readIdentityFC_Layer_3/Variable_1/Adam*
T0*(
_class
loc:@FC_Layer_3/Variable_1
9
zeros_19Const*
valueB+*    *
dtype0

FC_Layer_3/Variable_1/Adam_1Variable*
shape:+*
	container *
shared_name *
dtype0*(
_class
loc:@FC_Layer_3/Variable_1
±
#FC_Layer_3/Variable_1/Adam_1/AssignAssignFC_Layer_3/Variable_1/Adam_1zeros_19*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
~
!FC_Layer_3/Variable_1/Adam_1/readIdentityFC_Layer_3/Variable_1/Adam_1*
T0*(
_class
loc:@FC_Layer_3/Variable_1
?
Adam/learning_rateConst*
valueB
 *o:*
dtype0
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0
ó
+Adam/update_Conv_Layer_1/Variable/ApplyAdam	ApplyAdamConv_Layer_1/VariableConv_Layer_1/Variable/AdamConv_Layer_1/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@Conv_Layer_1/Variable
ś
-Adam/update_Conv_Layer_1/Variable_1/ApplyAdam	ApplyAdamConv_Layer_1/Variable_1Conv_Layer_1/Variable_1/AdamConv_Layer_1/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependency_1*
T0*
use_locking( **
_class 
loc:@Conv_Layer_1/Variable_1
ó
+Adam/update_Conv_Layer_2/Variable/ApplyAdam	ApplyAdamConv_Layer_2/VariableConv_Layer_2/Variable/AdamConv_Layer_2/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@Conv_Layer_2/Variable
ś
-Adam/update_Conv_Layer_2/Variable_1/ApplyAdam	ApplyAdamConv_Layer_2/Variable_1Conv_Layer_2/Variable_1/AdamConv_Layer_2/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependency_1*
T0*
use_locking( **
_class 
loc:@Conv_Layer_2/Variable_1
ē
)Adam/update_FC_Layer_1/Variable/ApplyAdam	ApplyAdamFC_Layer_1/VariableFC_Layer_1/Variable/AdamFC_Layer_1/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonBgradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *&
_class
loc:@FC_Layer_1/Variable
ī
+Adam/update_FC_Layer_1/Variable_1/ApplyAdam	ApplyAdamFC_Layer_1/Variable_1FC_Layer_1/Variable_1/AdamFC_Layer_1/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@FC_Layer_1/Variable_1
ē
)Adam/update_FC_Layer_2/Variable/ApplyAdam	ApplyAdamFC_Layer_2/VariableFC_Layer_2/Variable/AdamFC_Layer_2/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonBgradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *&
_class
loc:@FC_Layer_2/Variable
ī
+Adam/update_FC_Layer_2/Variable_1/ApplyAdam	ApplyAdamFC_Layer_2/Variable_1FC_Layer_2/Variable_1/AdamFC_Layer_2/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@FC_Layer_2/Variable_1
ē
)Adam/update_FC_Layer_3/Variable/ApplyAdam	ApplyAdamFC_Layer_3/VariableFC_Layer_3/Variable/AdamFC_Layer_3/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonBgradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *&
_class
loc:@FC_Layer_3/Variable
ī
+Adam/update_FC_Layer_3/Variable_1/ApplyAdam	ApplyAdamFC_Layer_3/Variable_1FC_Layer_3/Variable_1/AdamFC_Layer_3/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@FC_Layer_3/Variable_1
Ŗ
Adam/mulMulbeta1_power/read
Adam/beta1,^Adam/update_Conv_Layer_1/Variable/ApplyAdam.^Adam/update_Conv_Layer_1/Variable_1/ApplyAdam,^Adam/update_Conv_Layer_2/Variable/ApplyAdam.^Adam/update_Conv_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_1/Variable/ApplyAdam,^Adam/update_FC_Layer_1/Variable_1/ApplyAdam*^Adam/update_FC_Layer_2/Variable/ApplyAdam,^Adam/update_FC_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_3/Variable/ApplyAdam,^Adam/update_FC_Layer_3/Variable_1/ApplyAdam*
T0*(
_class
loc:@Conv_Layer_1/Variable

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
use_locking( *
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
¬

Adam/mul_1Mulbeta2_power/read
Adam/beta2,^Adam/update_Conv_Layer_1/Variable/ApplyAdam.^Adam/update_Conv_Layer_1/Variable_1/ApplyAdam,^Adam/update_Conv_Layer_2/Variable/ApplyAdam.^Adam/update_Conv_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_1/Variable/ApplyAdam,^Adam/update_FC_Layer_1/Variable_1/ApplyAdam*^Adam/update_FC_Layer_2/Variable/ApplyAdam,^Adam/update_FC_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_3/Variable/ApplyAdam,^Adam/update_FC_Layer_3/Variable_1/ApplyAdam*
T0*(
_class
loc:@Conv_Layer_1/Variable

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
use_locking( *
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
ō
AdamNoOp,^Adam/update_Conv_Layer_1/Variable/ApplyAdam.^Adam/update_Conv_Layer_1/Variable_1/ApplyAdam,^Adam/update_Conv_Layer_2/Variable/ApplyAdam.^Adam/update_Conv_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_1/Variable/ApplyAdam,^Adam/update_FC_Layer_1/Variable_1/ApplyAdam*^Adam/update_FC_Layer_2/Variable/ApplyAdam,^Adam/update_FC_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_3/Variable/ApplyAdam,^Adam/update_FC_Layer_3/Variable_1/ApplyAdam^Adam/Assign^Adam/Assign_1
:
ArgMax/dimensionConst*
value	B :*
dtype0
N
ArgMaxArgMaxFC_Layer_3/Wx_b_5/addArgMax/dimension*
T0*

Tidx0
<
ArgMax_1/dimensionConst*
value	B :*
dtype0
D
ArgMax_1ArgMaxone_hotArgMax_1/dimension*
T0*

Tidx0
)
EqualEqualArgMaxArgMax_1*
T0	
-
Cast_1CastEqual*

DstT0*

SrcT0


Rank_3RankCast_1*
T0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
<
rangeRangerange/startRank_3range/delta*

Tidx0
A
MeanMeanCast_1range*
	keep_dims( *
T0*

Tidx0
8

save/ConstConst*
valueB Bmodel*
dtype0

save/SaveV2/tensor_namesConst*Ó
valueÉBĘ BConv_Layer_1/VariableBConv_Layer_1/Variable/AdamBConv_Layer_1/Variable/Adam_1BConv_Layer_1/Variable_1BConv_Layer_1/Variable_1/AdamBConv_Layer_1/Variable_1/Adam_1BConv_Layer_2/VariableBConv_Layer_2/Variable/AdamBConv_Layer_2/Variable/Adam_1BConv_Layer_2/Variable_1BConv_Layer_2/Variable_1/AdamBConv_Layer_2/Variable_1/Adam_1BFC_Layer_1/VariableBFC_Layer_1/Variable/AdamBFC_Layer_1/Variable/Adam_1BFC_Layer_1/Variable_1BFC_Layer_1/Variable_1/AdamBFC_Layer_1/Variable_1/Adam_1BFC_Layer_2/VariableBFC_Layer_2/Variable/AdamBFC_Layer_2/Variable/Adam_1BFC_Layer_2/Variable_1BFC_Layer_2/Variable_1/AdamBFC_Layer_2/Variable_1/Adam_1BFC_Layer_3/VariableBFC_Layer_3/Variable/AdamBFC_Layer_3/Variable/Adam_1BFC_Layer_3/Variable_1BFC_Layer_3/Variable_1/AdamBFC_Layer_3/Variable_1/Adam_1Bbeta1_powerBbeta2_power*
dtype0

save/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Ē
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConv_Layer_1/VariableConv_Layer_1/Variable/AdamConv_Layer_1/Variable/Adam_1Conv_Layer_1/Variable_1Conv_Layer_1/Variable_1/AdamConv_Layer_1/Variable_1/Adam_1Conv_Layer_2/VariableConv_Layer_2/Variable/AdamConv_Layer_2/Variable/Adam_1Conv_Layer_2/Variable_1Conv_Layer_2/Variable_1/AdamConv_Layer_2/Variable_1/Adam_1FC_Layer_1/VariableFC_Layer_1/Variable/AdamFC_Layer_1/Variable/Adam_1FC_Layer_1/Variable_1FC_Layer_1/Variable_1/AdamFC_Layer_1/Variable_1/Adam_1FC_Layer_2/VariableFC_Layer_2/Variable/AdamFC_Layer_2/Variable/Adam_1FC_Layer_2/Variable_1FC_Layer_2/Variable_1/AdamFC_Layer_2/Variable_1/Adam_1FC_Layer_3/VariableFC_Layer_3/Variable/AdamFC_Layer_3/Variable/Adam_1FC_Layer_3/Variable_1FC_Layer_3/Variable_1/AdamFC_Layer_3/Variable_1/Adam_1beta1_powerbeta2_power*.
dtypes$
"2 
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
]
save/RestoreV2/tensor_namesConst**
value!BBConv_Layer_1/Variable*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2

save/AssignAssignConv_Layer_1/Variablesave/RestoreV2*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
d
save/RestoreV2_1/tensor_namesConst*/
value&B$BConv_Layer_1/Variable/Adam*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
”
save/Assign_1AssignConv_Layer_1/Variable/Adamsave/RestoreV2_1*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
f
save/RestoreV2_2/tensor_namesConst*1
value(B&BConv_Layer_1/Variable/Adam_1*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2
£
save/Assign_2AssignConv_Layer_1/Variable/Adam_1save/RestoreV2_2*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
a
save/RestoreV2_3/tensor_namesConst*,
value#B!BConv_Layer_1/Variable_1*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2
 
save/Assign_3AssignConv_Layer_1/Variable_1save/RestoreV2_3*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1
f
save/RestoreV2_4/tensor_namesConst*1
value(B&BConv_Layer_1/Variable_1/Adam*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2
„
save/Assign_4AssignConv_Layer_1/Variable_1/Adamsave/RestoreV2_4*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1
h
save/RestoreV2_5/tensor_namesConst*3
value*B(BConv_Layer_1/Variable_1/Adam_1*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2
§
save/Assign_5AssignConv_Layer_1/Variable_1/Adam_1save/RestoreV2_5*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1
_
save/RestoreV2_6/tensor_namesConst**
value!BBConv_Layer_2/Variable*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2

save/Assign_6AssignConv_Layer_2/Variablesave/RestoreV2_6*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
d
save/RestoreV2_7/tensor_namesConst*/
value&B$BConv_Layer_2/Variable/Adam*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2
”
save/Assign_7AssignConv_Layer_2/Variable/Adamsave/RestoreV2_7*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
f
save/RestoreV2_8/tensor_namesConst*1
value(B&BConv_Layer_2/Variable/Adam_1*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2
£
save/Assign_8AssignConv_Layer_2/Variable/Adam_1save/RestoreV2_8*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
a
save/RestoreV2_9/tensor_namesConst*,
value#B!BConv_Layer_2/Variable_1*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2
 
save/Assign_9AssignConv_Layer_2/Variable_1save/RestoreV2_9*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1
g
save/RestoreV2_10/tensor_namesConst*1
value(B&BConv_Layer_2/Variable_1/Adam*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2
§
save/Assign_10AssignConv_Layer_2/Variable_1/Adamsave/RestoreV2_10*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1
i
save/RestoreV2_11/tensor_namesConst*3
value*B(BConv_Layer_2/Variable_1/Adam_1*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2
©
save/Assign_11AssignConv_Layer_2/Variable_1/Adam_1save/RestoreV2_11*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1
^
save/RestoreV2_12/tensor_namesConst*(
valueBBFC_Layer_1/Variable*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2

save/Assign_12AssignFC_Layer_1/Variablesave/RestoreV2_12*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
c
save/RestoreV2_13/tensor_namesConst*-
value$B"BFC_Layer_1/Variable/Adam*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2

save/Assign_13AssignFC_Layer_1/Variable/Adamsave/RestoreV2_13*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
e
save/RestoreV2_14/tensor_namesConst*/
value&B$BFC_Layer_1/Variable/Adam_1*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2
”
save/Assign_14AssignFC_Layer_1/Variable/Adam_1save/RestoreV2_14*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
`
save/RestoreV2_15/tensor_namesConst**
value!BBFC_Layer_1/Variable_1*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2

save/Assign_15AssignFC_Layer_1/Variable_1save/RestoreV2_15*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
e
save/RestoreV2_16/tensor_namesConst*/
value&B$BFC_Layer_1/Variable_1/Adam*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2
£
save/Assign_16AssignFC_Layer_1/Variable_1/Adamsave/RestoreV2_16*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
g
save/RestoreV2_17/tensor_namesConst*1
value(B&BFC_Layer_1/Variable_1/Adam_1*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2
„
save/Assign_17AssignFC_Layer_1/Variable_1/Adam_1save/RestoreV2_17*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
^
save/RestoreV2_18/tensor_namesConst*(
valueBBFC_Layer_2/Variable*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2

save/Assign_18AssignFC_Layer_2/Variablesave/RestoreV2_18*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
c
save/RestoreV2_19/tensor_namesConst*-
value$B"BFC_Layer_2/Variable/Adam*
dtype0
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2

save/Assign_19AssignFC_Layer_2/Variable/Adamsave/RestoreV2_19*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
e
save/RestoreV2_20/tensor_namesConst*/
value&B$BFC_Layer_2/Variable/Adam_1*
dtype0
O
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2
”
save/Assign_20AssignFC_Layer_2/Variable/Adam_1save/RestoreV2_20*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
`
save/RestoreV2_21/tensor_namesConst**
value!BBFC_Layer_2/Variable_1*
dtype0
O
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2

save/Assign_21AssignFC_Layer_2/Variable_1save/RestoreV2_21*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
e
save/RestoreV2_22/tensor_namesConst*/
value&B$BFC_Layer_2/Variable_1/Adam*
dtype0
O
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2
£
save/Assign_22AssignFC_Layer_2/Variable_1/Adamsave/RestoreV2_22*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
g
save/RestoreV2_23/tensor_namesConst*1
value(B&BFC_Layer_2/Variable_1/Adam_1*
dtype0
O
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2
„
save/Assign_23AssignFC_Layer_2/Variable_1/Adam_1save/RestoreV2_23*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
^
save/RestoreV2_24/tensor_namesConst*(
valueBBFC_Layer_3/Variable*
dtype0
O
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2

save/Assign_24AssignFC_Layer_3/Variablesave/RestoreV2_24*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
c
save/RestoreV2_25/tensor_namesConst*-
value$B"BFC_Layer_3/Variable/Adam*
dtype0
O
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2

save/Assign_25AssignFC_Layer_3/Variable/Adamsave/RestoreV2_25*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
e
save/RestoreV2_26/tensor_namesConst*/
value&B$BFC_Layer_3/Variable/Adam_1*
dtype0
O
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2
”
save/Assign_26AssignFC_Layer_3/Variable/Adam_1save/RestoreV2_26*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
`
save/RestoreV2_27/tensor_namesConst**
value!BBFC_Layer_3/Variable_1*
dtype0
O
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2

save/Assign_27AssignFC_Layer_3/Variable_1save/RestoreV2_27*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
e
save/RestoreV2_28/tensor_namesConst*/
value&B$BFC_Layer_3/Variable_1/Adam*
dtype0
O
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2
£
save/Assign_28AssignFC_Layer_3/Variable_1/Adamsave/RestoreV2_28*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
g
save/RestoreV2_29/tensor_namesConst*1
value(B&BFC_Layer_3/Variable_1/Adam_1*
dtype0
O
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2
„
save/Assign_29AssignFC_Layer_3/Variable_1/Adam_1save/RestoreV2_29*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
V
save/RestoreV2_30/tensor_namesConst* 
valueBBbeta1_power*
dtype0
O
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2

save/Assign_30Assignbeta1_powersave/RestoreV2_30*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
V
save/RestoreV2_31/tensor_namesConst* 
valueBBbeta2_power*
dtype0
O
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2

save/Assign_31Assignbeta2_powersave/RestoreV2_31*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
¬
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31
O
MergeSummary/MergeSummaryMergeSummaryloss_function/ScalarSummary*
N
Ź
initNoOp^Conv_Layer_1/Variable/Assign^Conv_Layer_1/Variable_1/Assign^Conv_Layer_2/Variable/Assign^Conv_Layer_2/Variable_1/Assign^FC_Layer_1/Variable/Assign^FC_Layer_1/Variable_1/Assign^FC_Layer_2/Variable/Assign^FC_Layer_2/Variable_1/Assign^FC_Layer_3/Variable/Assign^FC_Layer_3/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign"^Conv_Layer_1/Variable/Adam/Assign$^Conv_Layer_1/Variable/Adam_1/Assign$^Conv_Layer_1/Variable_1/Adam/Assign&^Conv_Layer_1/Variable_1/Adam_1/Assign"^Conv_Layer_2/Variable/Adam/Assign$^Conv_Layer_2/Variable/Adam_1/Assign$^Conv_Layer_2/Variable_1/Adam/Assign&^Conv_Layer_2/Variable_1/Adam_1/Assign ^FC_Layer_1/Variable/Adam/Assign"^FC_Layer_1/Variable/Adam_1/Assign"^FC_Layer_1/Variable_1/Adam/Assign$^FC_Layer_1/Variable_1/Adam_1/Assign ^FC_Layer_2/Variable/Adam/Assign"^FC_Layer_2/Variable/Adam_1/Assign"^FC_Layer_2/Variable_1/Adam/Assign$^FC_Layer_2/Variable_1/Adam_1/Assign ^FC_Layer_3/Variable/Adam/Assign"^FC_Layer_3/Variable/Adam_1/Assign"^FC_Layer_3/Variable_1/Adam/Assign$^FC_Layer_3/Variable_1/Adam_1/Assign"µv«|Oe     ĀÅ	Ø!ÖAJĀŹ
Ģ&¦&
9
Add
x"T
y"T
z"T"
Ttype:
2	
Ń
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
N
Concat

concat_dim
values"T*N
output"T"
Nint(0"	
Ttype
8
Const
output"dtype"
valuetensor"
dtypetype
É
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ļ
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ī
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
9
Div
x"T
y"T
z"T"
Ttype:
2	
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
¾
MaxPool

input"T
output"T"
Ttype0:
2"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ä
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint’’’’’’’’’"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
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
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
0
Square
x"T
y"T"
Ttype:
	2	
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
q
Variable
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype*0.12.12v0.12.0-10-g4d924e7-dirty
4
PlaceholderPlaceholder*
shape: *
dtype0
6
Placeholder_1Placeholder*
shape: *
dtype0
=
one_hot/on_valueConst*
valueB
 *  ?*
dtype0
>
one_hot/off_valueConst*
valueB
 *    *
dtype0
7
one_hot/depthConst*
value	B :+*
dtype0
|
one_hotOneHotPlaceholder_1one_hot/depthone_hot/on_valueone_hot/off_value*
axis’’’’’’’’’*
T0*
TI0
`
#Conv_Layer_1/truncated_normal/shapeConst*%
valueB"            *
dtype0
O
"Conv_Layer_1/truncated_normal/meanConst*
valueB
 *    *
dtype0
Q
$Conv_Layer_1/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

-Conv_Layer_1/truncated_normal/TruncatedNormalTruncatedNormal#Conv_Layer_1/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

!Conv_Layer_1/truncated_normal/mulMul-Conv_Layer_1/truncated_normal/TruncatedNormal$Conv_Layer_1/truncated_normal/stddev*
T0
t
Conv_Layer_1/truncated_normalAdd!Conv_Layer_1/truncated_normal/mul"Conv_Layer_1/truncated_normal/mean*
T0
o
Conv_Layer_1/VariableVariable*
shape:*
shared_name *
	container *
dtype0
ø
Conv_Layer_1/Variable/AssignAssignConv_Layer_1/VariableConv_Layer_1/truncated_normal*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
p
Conv_Layer_1/Variable/readIdentityConv_Layer_1/Variable*
T0*(
_class
loc:@Conv_Layer_1/Variable
C
Conv_Layer_1/zerosConst*
valueB*    *
dtype0
e
Conv_Layer_1/Variable_1Variable*
shape:*
shared_name *
	container *
dtype0
³
Conv_Layer_1/Variable_1/AssignAssignConv_Layer_1/Variable_1Conv_Layer_1/zeros*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1
v
Conv_Layer_1/Variable_1/readIdentityConv_Layer_1/Variable_1*
T0**
_class 
loc:@Conv_Layer_1/Variable_1
®
Conv_Layer_1/WX_b_1/Conv2DConv2DPlaceholderConv_Layer_1/Variable/read*
data_formatNHWC*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(
a
Conv_Layer_1/WX_b_1/addAddConv_Layer_1/WX_b_1/Conv2DConv_Layer_1/Variable_1/read*
T0
B
Conv_Layer_1/relu_1/ReluReluConv_Layer_1/WX_b_1/add*
T0

Conv_Layer_1/pooling_1/MaxPoolMaxPoolConv_Layer_1/relu_1/Relu*
data_formatNHWC*
T0*
ksize
*
strides
*
paddingVALID
`
#Conv_Layer_2/truncated_normal/shapeConst*%
valueB"            *
dtype0
O
"Conv_Layer_2/truncated_normal/meanConst*
valueB
 *    *
dtype0
Q
$Conv_Layer_2/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

-Conv_Layer_2/truncated_normal/TruncatedNormalTruncatedNormal#Conv_Layer_2/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

!Conv_Layer_2/truncated_normal/mulMul-Conv_Layer_2/truncated_normal/TruncatedNormal$Conv_Layer_2/truncated_normal/stddev*
T0
t
Conv_Layer_2/truncated_normalAdd!Conv_Layer_2/truncated_normal/mul"Conv_Layer_2/truncated_normal/mean*
T0
o
Conv_Layer_2/VariableVariable*
shape:*
shared_name *
	container *
dtype0
ø
Conv_Layer_2/Variable/AssignAssignConv_Layer_2/VariableConv_Layer_2/truncated_normal*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
p
Conv_Layer_2/Variable/readIdentityConv_Layer_2/Variable*
T0*(
_class
loc:@Conv_Layer_2/Variable
C
Conv_Layer_2/zerosConst*
valueB*    *
dtype0
e
Conv_Layer_2/Variable_1Variable*
shape:*
shared_name *
	container *
dtype0
³
Conv_Layer_2/Variable_1/AssignAssignConv_Layer_2/Variable_1Conv_Layer_2/zeros*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1
v
Conv_Layer_2/Variable_1/readIdentityConv_Layer_2/Variable_1*
T0**
_class 
loc:@Conv_Layer_2/Variable_1
Į
Conv_Layer_2/WX_b_2/Conv2DConv2DConv_Layer_1/pooling_1/MaxPoolConv_Layer_2/Variable/read*
data_formatNHWC*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(
a
Conv_Layer_2/WX_b_2/addAddConv_Layer_2/WX_b_2/Conv2DConv_Layer_2/Variable_1/read*
T0
B
Conv_Layer_2/relu_2/ReluReluConv_Layer_2/WX_b_2/add*
T0

Conv_Layer_2/pooling_2/MaxPoolMaxPoolConv_Layer_2/relu_2/Relu*
data_formatNHWC*
T0*
ksize
*
strides
*
paddingVALID
_
*Conv_Layer_2/flatten/Flatten/Reshape/shapeConst*
valueB"’’’’  *
dtype0

$Conv_Layer_2/flatten/Flatten/ReshapeReshapeConv_Layer_2/pooling_2/MaxPool*Conv_Layer_2/flatten/Flatten/Reshape/shape*
Tshape0*
T0
V
!FC_Layer_1/truncated_normal/shapeConst*
valueB"  x   *
dtype0
M
 FC_Layer_1/truncated_normal/meanConst*
valueB
 *    *
dtype0
O
"FC_Layer_1/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

+FC_Layer_1/truncated_normal/TruncatedNormalTruncatedNormal!FC_Layer_1/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

FC_Layer_1/truncated_normal/mulMul+FC_Layer_1/truncated_normal/TruncatedNormal"FC_Layer_1/truncated_normal/stddev*
T0
n
FC_Layer_1/truncated_normalAddFC_Layer_1/truncated_normal/mul FC_Layer_1/truncated_normal/mean*
T0
f
FC_Layer_1/VariableVariable*
shape:	x*
shared_name *
	container *
dtype0
°
FC_Layer_1/Variable/AssignAssignFC_Layer_1/VariableFC_Layer_1/truncated_normal*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
j
FC_Layer_1/Variable/readIdentityFC_Layer_1/Variable*
T0*&
_class
loc:@FC_Layer_1/Variable
A
FC_Layer_1/zerosConst*
valueBx*    *
dtype0
c
FC_Layer_1/Variable_1Variable*
shape:x*
shared_name *
	container *
dtype0
«
FC_Layer_1/Variable_1/AssignAssignFC_Layer_1/Variable_1FC_Layer_1/zeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
p
FC_Layer_1/Variable_1/readIdentityFC_Layer_1/Variable_1*
T0*(
_class
loc:@FC_Layer_1/Variable_1

FC_Layer_1/Wx_b_3/MatMulMatMul$Conv_Layer_2/flatten/Flatten/ReshapeFC_Layer_1/Variable/read*
T0*
transpose_b( *
transpose_a( 
[
FC_Layer_1/Wx_b_3/addAddFC_Layer_1/Wx_b_3/MatMulFC_Layer_1/Variable_1/read*
T0
>
FC_Layer_1/relu_3/ReluReluFC_Layer_1/Wx_b_3/add*
T0
P
#FC_Layer_1/relu_3/dropout/keep_probConst*
valueB
 *ĶĢL?*
dtype0
Y
FC_Layer_1/relu_3/dropout/ShapeShapeFC_Layer_1/relu_3/Relu*
out_type0*
T0
Y
,FC_Layer_1/relu_3/dropout/random_uniform/minConst*
valueB
 *    *
dtype0
Y
,FC_Layer_1/relu_3/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0

6FC_Layer_1/relu_3/dropout/random_uniform/RandomUniformRandomUniformFC_Layer_1/relu_3/dropout/Shape*

seed *
T0*
dtype0*
seed2 

,FC_Layer_1/relu_3/dropout/random_uniform/subSub,FC_Layer_1/relu_3/dropout/random_uniform/max,FC_Layer_1/relu_3/dropout/random_uniform/min*
T0
¢
,FC_Layer_1/relu_3/dropout/random_uniform/mulMul6FC_Layer_1/relu_3/dropout/random_uniform/RandomUniform,FC_Layer_1/relu_3/dropout/random_uniform/sub*
T0

(FC_Layer_1/relu_3/dropout/random_uniformAdd,FC_Layer_1/relu_3/dropout/random_uniform/mul,FC_Layer_1/relu_3/dropout/random_uniform/min*
T0
|
FC_Layer_1/relu_3/dropout/addAdd#FC_Layer_1/relu_3/dropout/keep_prob(FC_Layer_1/relu_3/dropout/random_uniform*
T0
P
FC_Layer_1/relu_3/dropout/FloorFloorFC_Layer_1/relu_3/dropout/add*
T0
j
FC_Layer_1/relu_3/dropout/DivDivFC_Layer_1/relu_3/Relu#FC_Layer_1/relu_3/dropout/keep_prob*
T0
m
FC_Layer_1/relu_3/dropout/mulMulFC_Layer_1/relu_3/dropout/DivFC_Layer_1/relu_3/dropout/Floor*
T0
V
!FC_Layer_2/truncated_normal/shapeConst*
valueB"x   T   *
dtype0
M
 FC_Layer_2/truncated_normal/meanConst*
valueB
 *    *
dtype0
O
"FC_Layer_2/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

+FC_Layer_2/truncated_normal/TruncatedNormalTruncatedNormal!FC_Layer_2/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

FC_Layer_2/truncated_normal/mulMul+FC_Layer_2/truncated_normal/TruncatedNormal"FC_Layer_2/truncated_normal/stddev*
T0
n
FC_Layer_2/truncated_normalAddFC_Layer_2/truncated_normal/mul FC_Layer_2/truncated_normal/mean*
T0
e
FC_Layer_2/VariableVariable*
shape
:xT*
shared_name *
	container *
dtype0
°
FC_Layer_2/Variable/AssignAssignFC_Layer_2/VariableFC_Layer_2/truncated_normal*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
j
FC_Layer_2/Variable/readIdentityFC_Layer_2/Variable*
T0*&
_class
loc:@FC_Layer_2/Variable
A
FC_Layer_2/zerosConst*
valueBT*    *
dtype0
c
FC_Layer_2/Variable_1Variable*
shape:T*
shared_name *
	container *
dtype0
«
FC_Layer_2/Variable_1/AssignAssignFC_Layer_2/Variable_1FC_Layer_2/zeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
p
FC_Layer_2/Variable_1/readIdentityFC_Layer_2/Variable_1*
T0*(
_class
loc:@FC_Layer_2/Variable_1

FC_Layer_2/Wx_b_4/MatMulMatMulFC_Layer_1/relu_3/dropout/mulFC_Layer_2/Variable/read*
T0*
transpose_b( *
transpose_a( 
[
FC_Layer_2/Wx_b_4/addAddFC_Layer_2/Wx_b_4/MatMulFC_Layer_2/Variable_1/read*
T0
>
FC_Layer_2/relu_4/ReluReluFC_Layer_2/Wx_b_4/add*
T0
P
#FC_Layer_2/relu_4/dropout/keep_probConst*
valueB
 *ĶĢL?*
dtype0
Y
FC_Layer_2/relu_4/dropout/ShapeShapeFC_Layer_2/relu_4/Relu*
out_type0*
T0
Y
,FC_Layer_2/relu_4/dropout/random_uniform/minConst*
valueB
 *    *
dtype0
Y
,FC_Layer_2/relu_4/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0

6FC_Layer_2/relu_4/dropout/random_uniform/RandomUniformRandomUniformFC_Layer_2/relu_4/dropout/Shape*

seed *
T0*
dtype0*
seed2 

,FC_Layer_2/relu_4/dropout/random_uniform/subSub,FC_Layer_2/relu_4/dropout/random_uniform/max,FC_Layer_2/relu_4/dropout/random_uniform/min*
T0
¢
,FC_Layer_2/relu_4/dropout/random_uniform/mulMul6FC_Layer_2/relu_4/dropout/random_uniform/RandomUniform,FC_Layer_2/relu_4/dropout/random_uniform/sub*
T0

(FC_Layer_2/relu_4/dropout/random_uniformAdd,FC_Layer_2/relu_4/dropout/random_uniform/mul,FC_Layer_2/relu_4/dropout/random_uniform/min*
T0
|
FC_Layer_2/relu_4/dropout/addAdd#FC_Layer_2/relu_4/dropout/keep_prob(FC_Layer_2/relu_4/dropout/random_uniform*
T0
P
FC_Layer_2/relu_4/dropout/FloorFloorFC_Layer_2/relu_4/dropout/add*
T0
j
FC_Layer_2/relu_4/dropout/DivDivFC_Layer_2/relu_4/Relu#FC_Layer_2/relu_4/dropout/keep_prob*
T0
m
FC_Layer_2/relu_4/dropout/mulMulFC_Layer_2/relu_4/dropout/DivFC_Layer_2/relu_4/dropout/Floor*
T0
V
!FC_Layer_3/truncated_normal/shapeConst*
valueB"T   +   *
dtype0
M
 FC_Layer_3/truncated_normal/meanConst*
valueB
 *    *
dtype0
O
"FC_Layer_3/truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0

+FC_Layer_3/truncated_normal/TruncatedNormalTruncatedNormal!FC_Layer_3/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 

FC_Layer_3/truncated_normal/mulMul+FC_Layer_3/truncated_normal/TruncatedNormal"FC_Layer_3/truncated_normal/stddev*
T0
n
FC_Layer_3/truncated_normalAddFC_Layer_3/truncated_normal/mul FC_Layer_3/truncated_normal/mean*
T0
e
FC_Layer_3/VariableVariable*
shape
:T+*
shared_name *
	container *
dtype0
°
FC_Layer_3/Variable/AssignAssignFC_Layer_3/VariableFC_Layer_3/truncated_normal*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
j
FC_Layer_3/Variable/readIdentityFC_Layer_3/Variable*
T0*&
_class
loc:@FC_Layer_3/Variable
A
FC_Layer_3/zerosConst*
valueB+*    *
dtype0
c
FC_Layer_3/Variable_1Variable*
shape:+*
shared_name *
	container *
dtype0
«
FC_Layer_3/Variable_1/AssignAssignFC_Layer_3/Variable_1FC_Layer_3/zeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
p
FC_Layer_3/Variable_1/readIdentityFC_Layer_3/Variable_1*
T0*(
_class
loc:@FC_Layer_3/Variable_1

FC_Layer_3/Wx_b_5/MatMulMatMulFC_Layer_2/relu_4/dropout/mulFC_Layer_3/Variable/read*
T0*
transpose_b( *
transpose_a( 
[
FC_Layer_3/Wx_b_5/addAddFC_Layer_3/Wx_b_5/MatMulFC_Layer_3/Variable_1/read*
T0
.
RankConst*
value	B :*
dtype0
>
ShapeShapeFC_Layer_3/Wx_b_5/add*
out_type0*
T0
0
Rank_1Const*
value	B :*
dtype0
@
Shape_1ShapeFC_Layer_3/Wx_b_5/add*
out_type0*
T0
/
Sub/yConst*
value	B :*
dtype0
"
SubSubRank_1Sub/y*
T0
6
Slice/beginPackSub*

axis *
T0*
N
8

Slice/sizeConst*
valueB:*
dtype0
F
SliceSliceShape_1Slice/begin
Slice/size*
T0*
Index0
;
concat/concat_dimConst*
value	B : *
dtype0
F
concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
M
concatConcatconcat/concat_dimconcat/values_0Slice*
T0*
N
H
ReshapeReshapeFC_Layer_3/Wx_b_5/addconcat*
Tshape0*
T0
 
Rank_2Rankone_hot*
T0
2
Shape_2Shapeone_hot*
out_type0*
T0
1
Sub_1/yConst*
value	B :*
dtype0
&
Sub_1SubRank_2Sub_1/y*
T0
:
Slice_1/beginPackSub_1*

axis *
T0*
N
:
Slice_1/sizeConst*
valueB:*
dtype0
L
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
T0*
Index0
=
concat_1/concat_dimConst*
value	B : *
dtype0
H
concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
U
concat_1Concatconcat_1/concat_dimconcat_1/values_0Slice_1*
T0*
N
>
	Reshape_1Reshapeone_hotconcat_1*
Tshape0*
T0
[
SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsReshape	Reshape_1*
T0
1
Sub_2/yConst*
value	B :*
dtype0
$
Sub_2SubRankSub_2/y*
T0
;
Slice_2/beginConst*
valueB: *
dtype0
9
Slice_2/sizePackSub_2*

axis *
T0*
N
J
Slice_2SliceShapeSlice_2/beginSlice_2/size*
T0*
Index0
S
	Reshape_2ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
Tshape0*
T0
A
loss_function/ConstConst*
valueB: *
dtype0
`
loss_function/MeanMean	Reshape_2loss_function/Const*
	keep_dims( *
T0*

Tidx0
W
 loss_function/ScalarSummary/tagsConst*
valueB Bloss_operation*
dtype0
k
loss_function/ScalarSummaryScalarSummary loss_function/ScalarSummary/tagsloss_function/Mean*
T0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  ?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
]
/gradients/loss_function/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

)gradients/loss_function/Mean_grad/ReshapeReshapegradients/Fill/gradients/loss_function/Mean_grad/Reshape/shape*
Tshape0*
T0
T
'gradients/loss_function/Mean_grad/ShapeShape	Reshape_2*
out_type0*
T0

&gradients/loss_function/Mean_grad/TileTile)gradients/loss_function/Mean_grad/Reshape'gradients/loss_function/Mean_grad/Shape*
T0*

Tmultiples0
V
)gradients/loss_function/Mean_grad/Shape_1Shape	Reshape_2*
out_type0*
T0
R
)gradients/loss_function/Mean_grad/Shape_2Const*
valueB *
dtype0
U
'gradients/loss_function/Mean_grad/ConstConst*
valueB: *
dtype0
Ø
&gradients/loss_function/Mean_grad/ProdProd)gradients/loss_function/Mean_grad/Shape_1'gradients/loss_function/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0
W
)gradients/loss_function/Mean_grad/Const_1Const*
valueB: *
dtype0
¬
(gradients/loss_function/Mean_grad/Prod_1Prod)gradients/loss_function/Mean_grad/Shape_2)gradients/loss_function/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0
U
+gradients/loss_function/Mean_grad/Maximum/yConst*
value	B :*
dtype0

)gradients/loss_function/Mean_grad/MaximumMaximum(gradients/loss_function/Mean_grad/Prod_1+gradients/loss_function/Mean_grad/Maximum/y*
T0

*gradients/loss_function/Mean_grad/floordivDiv&gradients/loss_function/Mean_grad/Prod)gradients/loss_function/Mean_grad/Maximum*
T0
r
&gradients/loss_function/Mean_grad/CastCast*gradients/loss_function/Mean_grad/floordiv*

DstT0*

SrcT0

)gradients/loss_function/Mean_grad/truedivDiv&gradients/loss_function/Mean_grad/Tile&gradients/loss_function/Mean_grad/Cast*
T0
_
gradients/Reshape_2_grad/ShapeShapeSoftmaxCrossEntropyWithLogits*
out_type0*
T0

 gradients/Reshape_2_grad/ReshapeReshape)gradients/loss_function/Mean_grad/truedivgradients/Reshape_2_grad/Shape*
Tshape0*
T0
K
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0
n
;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
¹
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_2_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0

0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0
U
gradients/Reshape_grad/ShapeShapeFC_Layer_3/Wx_b_5/add*
out_type0*
T0

gradients/Reshape_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_grad/Shape*
Tshape0*
T0
f
*gradients/FC_Layer_3/Wx_b_5/add_grad/ShapeShapeFC_Layer_3/Wx_b_5/MatMul*
out_type0*
T0
Z
,gradients/FC_Layer_3/Wx_b_5/add_grad/Shape_1Const*
valueB:+*
dtype0
¶
:gradients/FC_Layer_3/Wx_b_5/add_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/FC_Layer_3/Wx_b_5/add_grad/Shape,gradients/FC_Layer_3/Wx_b_5/add_grad/Shape_1*
T0
±
(gradients/FC_Layer_3/Wx_b_5/add_grad/SumSumgradients/Reshape_grad/Reshape:gradients/FC_Layer_3/Wx_b_5/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/FC_Layer_3/Wx_b_5/add_grad/ReshapeReshape(gradients/FC_Layer_3/Wx_b_5/add_grad/Sum*gradients/FC_Layer_3/Wx_b_5/add_grad/Shape*
Tshape0*
T0
µ
*gradients/FC_Layer_3/Wx_b_5/add_grad/Sum_1Sumgradients/Reshape_grad/Reshape<gradients/FC_Layer_3/Wx_b_5/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape_1Reshape*gradients/FC_Layer_3/Wx_b_5/add_grad/Sum_1,gradients/FC_Layer_3/Wx_b_5/add_grad/Shape_1*
Tshape0*
T0

5gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/group_depsNoOp-^gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape/^gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape_1
ł
=gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependencyIdentity,gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape6^gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape
’
?gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependency_1Identity.gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape_16^gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_3/Wx_b_5/add_grad/Reshape_1
Ą
.gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMulMatMul=gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependencyFC_Layer_3/Variable/read*
T0*
transpose_b(*
transpose_a( 
Ē
0gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul_1MatMulFC_Layer_2/relu_4/dropout/mul=gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(
¤
8gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/group_depsNoOp/^gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul1^gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul_1

@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependencyIdentity.gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul9^gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul

Bgradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependency_1Identity0gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul_19^gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/MatMul_1
s
2gradients/FC_Layer_2/relu_4/dropout/mul_grad/ShapeShapeFC_Layer_2/relu_4/dropout/Div*
out_type0*
T0
w
4gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape_1ShapeFC_Layer_2/relu_4/dropout/Floor*
out_type0*
T0
Ī
Bgradients/FC_Layer_2/relu_4/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape4gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape_1*
T0
£
0gradients/FC_Layer_2/relu_4/dropout/mul_grad/mulMul@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependencyFC_Layer_2/relu_4/dropout/Floor*
T0
Ó
0gradients/FC_Layer_2/relu_4/dropout/mul_grad/SumSum0gradients/FC_Layer_2/relu_4/dropout/mul_grad/mulBgradients/FC_Layer_2/relu_4/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4gradients/FC_Layer_2/relu_4/dropout/mul_grad/ReshapeReshape0gradients/FC_Layer_2/relu_4/dropout/mul_grad/Sum2gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape*
Tshape0*
T0
£
2gradients/FC_Layer_2/relu_4/dropout/mul_grad/mul_1MulFC_Layer_2/relu_4/dropout/Div@gradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependency*
T0
Ł
2gradients/FC_Layer_2/relu_4/dropout/mul_grad/Sum_1Sum2gradients/FC_Layer_2/relu_4/dropout/mul_grad/mul_1Dgradients/FC_Layer_2/relu_4/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ā
6gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape_1Reshape2gradients/FC_Layer_2/relu_4/dropout/mul_grad/Sum_14gradients/FC_Layer_2/relu_4/dropout/mul_grad/Shape_1*
Tshape0*
T0
µ
=gradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/group_depsNoOp5^gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape7^gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape_1

Egradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/control_dependencyIdentity4gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape>^gradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape

Ggradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/control_dependency_1Identity6gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape_1>^gradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/FC_Layer_2/relu_4/dropout/mul_grad/Reshape_1
l
2gradients/FC_Layer_2/relu_4/dropout/Div_grad/ShapeShapeFC_Layer_2/relu_4/Relu*
out_type0*
T0
]
4gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape_1Const*
valueB *
dtype0
Ī
Bgradients/FC_Layer_2/relu_4/dropout/Div_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape4gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape_1*
T0
°
4gradients/FC_Layer_2/relu_4/dropout/Div_grad/truedivDivEgradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/control_dependency#FC_Layer_2/relu_4/dropout/keep_prob*
T0
×
0gradients/FC_Layer_2/relu_4/dropout/Div_grad/SumSum4gradients/FC_Layer_2/relu_4/dropout/Div_grad/truedivBgradients/FC_Layer_2/relu_4/dropout/Div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4gradients/FC_Layer_2/relu_4/dropout/Div_grad/ReshapeReshape0gradients/FC_Layer_2/relu_4/dropout/Div_grad/Sum2gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape*
Tshape0*
T0
X
0gradients/FC_Layer_2/relu_4/dropout/Div_grad/NegNegFC_Layer_2/relu_4/Relu*
T0
k
3gradients/FC_Layer_2/relu_4/dropout/Div_grad/SquareSquare#FC_Layer_2/relu_4/dropout/keep_prob*
T0
­
6gradients/FC_Layer_2/relu_4/dropout/Div_grad/truediv_1Div0gradients/FC_Layer_2/relu_4/dropout/Div_grad/Neg3gradients/FC_Layer_2/relu_4/dropout/Div_grad/Square*
T0
æ
0gradients/FC_Layer_2/relu_4/dropout/Div_grad/mulMulEgradients/FC_Layer_2/relu_4/dropout/mul_grad/tuple/control_dependency6gradients/FC_Layer_2/relu_4/dropout/Div_grad/truediv_1*
T0
×
2gradients/FC_Layer_2/relu_4/dropout/Div_grad/Sum_1Sum0gradients/FC_Layer_2/relu_4/dropout/Div_grad/mulDgradients/FC_Layer_2/relu_4/dropout/Div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ā
6gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape_1Reshape2gradients/FC_Layer_2/relu_4/dropout/Div_grad/Sum_14gradients/FC_Layer_2/relu_4/dropout/Div_grad/Shape_1*
Tshape0*
T0
µ
=gradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/group_depsNoOp5^gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape7^gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape_1

Egradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/control_dependencyIdentity4gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape>^gradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape

Ggradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/control_dependency_1Identity6gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape_1>^gradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/FC_Layer_2/relu_4/dropout/Div_grad/Reshape_1
¢
.gradients/FC_Layer_2/relu_4/Relu_grad/ReluGradReluGradEgradients/FC_Layer_2/relu_4/dropout/Div_grad/tuple/control_dependencyFC_Layer_2/relu_4/Relu*
T0
f
*gradients/FC_Layer_2/Wx_b_4/add_grad/ShapeShapeFC_Layer_2/Wx_b_4/MatMul*
out_type0*
T0
Z
,gradients/FC_Layer_2/Wx_b_4/add_grad/Shape_1Const*
valueB:T*
dtype0
¶
:gradients/FC_Layer_2/Wx_b_4/add_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/FC_Layer_2/Wx_b_4/add_grad/Shape,gradients/FC_Layer_2/Wx_b_4/add_grad/Shape_1*
T0
Į
(gradients/FC_Layer_2/Wx_b_4/add_grad/SumSum.gradients/FC_Layer_2/relu_4/Relu_grad/ReluGrad:gradients/FC_Layer_2/Wx_b_4/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/FC_Layer_2/Wx_b_4/add_grad/ReshapeReshape(gradients/FC_Layer_2/Wx_b_4/add_grad/Sum*gradients/FC_Layer_2/Wx_b_4/add_grad/Shape*
Tshape0*
T0
Å
*gradients/FC_Layer_2/Wx_b_4/add_grad/Sum_1Sum.gradients/FC_Layer_2/relu_4/Relu_grad/ReluGrad<gradients/FC_Layer_2/Wx_b_4/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape_1Reshape*gradients/FC_Layer_2/Wx_b_4/add_grad/Sum_1,gradients/FC_Layer_2/Wx_b_4/add_grad/Shape_1*
Tshape0*
T0

5gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/group_depsNoOp-^gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape/^gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape_1
ł
=gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependencyIdentity,gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape6^gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape
’
?gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependency_1Identity.gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape_16^gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_2/Wx_b_4/add_grad/Reshape_1
Ą
.gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMulMatMul=gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependencyFC_Layer_2/Variable/read*
T0*
transpose_b(*
transpose_a( 
Ē
0gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul_1MatMulFC_Layer_1/relu_3/dropout/mul=gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(
¤
8gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/group_depsNoOp/^gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul1^gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul_1

@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependencyIdentity.gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul9^gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul

Bgradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependency_1Identity0gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul_19^gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/MatMul_1
s
2gradients/FC_Layer_1/relu_3/dropout/mul_grad/ShapeShapeFC_Layer_1/relu_3/dropout/Div*
out_type0*
T0
w
4gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape_1ShapeFC_Layer_1/relu_3/dropout/Floor*
out_type0*
T0
Ī
Bgradients/FC_Layer_1/relu_3/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape4gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape_1*
T0
£
0gradients/FC_Layer_1/relu_3/dropout/mul_grad/mulMul@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependencyFC_Layer_1/relu_3/dropout/Floor*
T0
Ó
0gradients/FC_Layer_1/relu_3/dropout/mul_grad/SumSum0gradients/FC_Layer_1/relu_3/dropout/mul_grad/mulBgradients/FC_Layer_1/relu_3/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4gradients/FC_Layer_1/relu_3/dropout/mul_grad/ReshapeReshape0gradients/FC_Layer_1/relu_3/dropout/mul_grad/Sum2gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape*
Tshape0*
T0
£
2gradients/FC_Layer_1/relu_3/dropout/mul_grad/mul_1MulFC_Layer_1/relu_3/dropout/Div@gradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependency*
T0
Ł
2gradients/FC_Layer_1/relu_3/dropout/mul_grad/Sum_1Sum2gradients/FC_Layer_1/relu_3/dropout/mul_grad/mul_1Dgradients/FC_Layer_1/relu_3/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ā
6gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape_1Reshape2gradients/FC_Layer_1/relu_3/dropout/mul_grad/Sum_14gradients/FC_Layer_1/relu_3/dropout/mul_grad/Shape_1*
Tshape0*
T0
µ
=gradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/group_depsNoOp5^gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape7^gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape_1

Egradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/control_dependencyIdentity4gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape>^gradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape

Ggradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/control_dependency_1Identity6gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape_1>^gradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/FC_Layer_1/relu_3/dropout/mul_grad/Reshape_1
l
2gradients/FC_Layer_1/relu_3/dropout/Div_grad/ShapeShapeFC_Layer_1/relu_3/Relu*
out_type0*
T0
]
4gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape_1Const*
valueB *
dtype0
Ī
Bgradients/FC_Layer_1/relu_3/dropout/Div_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape4gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape_1*
T0
°
4gradients/FC_Layer_1/relu_3/dropout/Div_grad/truedivDivEgradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/control_dependency#FC_Layer_1/relu_3/dropout/keep_prob*
T0
×
0gradients/FC_Layer_1/relu_3/dropout/Div_grad/SumSum4gradients/FC_Layer_1/relu_3/dropout/Div_grad/truedivBgradients/FC_Layer_1/relu_3/dropout/Div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4gradients/FC_Layer_1/relu_3/dropout/Div_grad/ReshapeReshape0gradients/FC_Layer_1/relu_3/dropout/Div_grad/Sum2gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape*
Tshape0*
T0
X
0gradients/FC_Layer_1/relu_3/dropout/Div_grad/NegNegFC_Layer_1/relu_3/Relu*
T0
k
3gradients/FC_Layer_1/relu_3/dropout/Div_grad/SquareSquare#FC_Layer_1/relu_3/dropout/keep_prob*
T0
­
6gradients/FC_Layer_1/relu_3/dropout/Div_grad/truediv_1Div0gradients/FC_Layer_1/relu_3/dropout/Div_grad/Neg3gradients/FC_Layer_1/relu_3/dropout/Div_grad/Square*
T0
æ
0gradients/FC_Layer_1/relu_3/dropout/Div_grad/mulMulEgradients/FC_Layer_1/relu_3/dropout/mul_grad/tuple/control_dependency6gradients/FC_Layer_1/relu_3/dropout/Div_grad/truediv_1*
T0
×
2gradients/FC_Layer_1/relu_3/dropout/Div_grad/Sum_1Sum0gradients/FC_Layer_1/relu_3/dropout/Div_grad/mulDgradients/FC_Layer_1/relu_3/dropout/Div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ā
6gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape_1Reshape2gradients/FC_Layer_1/relu_3/dropout/Div_grad/Sum_14gradients/FC_Layer_1/relu_3/dropout/Div_grad/Shape_1*
Tshape0*
T0
µ
=gradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/group_depsNoOp5^gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape7^gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape_1

Egradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/control_dependencyIdentity4gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape>^gradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape

Ggradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/control_dependency_1Identity6gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape_1>^gradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/FC_Layer_1/relu_3/dropout/Div_grad/Reshape_1
¢
.gradients/FC_Layer_1/relu_3/Relu_grad/ReluGradReluGradEgradients/FC_Layer_1/relu_3/dropout/Div_grad/tuple/control_dependencyFC_Layer_1/relu_3/Relu*
T0
f
*gradients/FC_Layer_1/Wx_b_3/add_grad/ShapeShapeFC_Layer_1/Wx_b_3/MatMul*
out_type0*
T0
Z
,gradients/FC_Layer_1/Wx_b_3/add_grad/Shape_1Const*
valueB:x*
dtype0
¶
:gradients/FC_Layer_1/Wx_b_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/FC_Layer_1/Wx_b_3/add_grad/Shape,gradients/FC_Layer_1/Wx_b_3/add_grad/Shape_1*
T0
Į
(gradients/FC_Layer_1/Wx_b_3/add_grad/SumSum.gradients/FC_Layer_1/relu_3/Relu_grad/ReluGrad:gradients/FC_Layer_1/Wx_b_3/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/FC_Layer_1/Wx_b_3/add_grad/ReshapeReshape(gradients/FC_Layer_1/Wx_b_3/add_grad/Sum*gradients/FC_Layer_1/Wx_b_3/add_grad/Shape*
Tshape0*
T0
Å
*gradients/FC_Layer_1/Wx_b_3/add_grad/Sum_1Sum.gradients/FC_Layer_1/relu_3/Relu_grad/ReluGrad<gradients/FC_Layer_1/Wx_b_3/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape_1Reshape*gradients/FC_Layer_1/Wx_b_3/add_grad/Sum_1,gradients/FC_Layer_1/Wx_b_3/add_grad/Shape_1*
Tshape0*
T0

5gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/group_depsNoOp-^gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape/^gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape_1
ł
=gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependencyIdentity,gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape6^gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape
’
?gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependency_1Identity.gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape_16^gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_1/Wx_b_3/add_grad/Reshape_1
Ą
.gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMulMatMul=gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependencyFC_Layer_1/Variable/read*
T0*
transpose_b(*
transpose_a( 
Ī
0gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul_1MatMul$Conv_Layer_2/flatten/Flatten/Reshape=gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(
¤
8gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/group_depsNoOp/^gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul1^gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul_1

@gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/control_dependencyIdentity.gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul9^gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul

Bgradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/control_dependency_1Identity0gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul_19^gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/FC_Layer_1/Wx_b_3/MatMul_grad/MatMul_1
{
9gradients/Conv_Layer_2/flatten/Flatten/Reshape_grad/ShapeShapeConv_Layer_2/pooling_2/MaxPool*
out_type0*
T0
Ś
;gradients/Conv_Layer_2/flatten/Flatten/Reshape_grad/ReshapeReshape@gradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/control_dependency9gradients/Conv_Layer_2/flatten/Flatten/Reshape_grad/Shape*
Tshape0*
T0

9gradients/Conv_Layer_2/pooling_2/MaxPool_grad/MaxPoolGradMaxPoolGradConv_Layer_2/relu_2/ReluConv_Layer_2/pooling_2/MaxPool;gradients/Conv_Layer_2/flatten/Flatten/Reshape_grad/Reshape*
data_formatNHWC*
T0*
ksize
*
strides
*
paddingVALID

0gradients/Conv_Layer_2/relu_2/Relu_grad/ReluGradReluGrad9gradients/Conv_Layer_2/pooling_2/MaxPool_grad/MaxPoolGradConv_Layer_2/relu_2/Relu*
T0
j
,gradients/Conv_Layer_2/WX_b_2/add_grad/ShapeShapeConv_Layer_2/WX_b_2/Conv2D*
out_type0*
T0
\
.gradients/Conv_Layer_2/WX_b_2/add_grad/Shape_1Const*
valueB:*
dtype0
¼
<gradients/Conv_Layer_2/WX_b_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/Conv_Layer_2/WX_b_2/add_grad/Shape.gradients/Conv_Layer_2/WX_b_2/add_grad/Shape_1*
T0
Ē
*gradients/Conv_Layer_2/WX_b_2/add_grad/SumSum0gradients/Conv_Layer_2/relu_2/Relu_grad/ReluGrad<gradients/Conv_Layer_2/WX_b_2/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/Conv_Layer_2/WX_b_2/add_grad/ReshapeReshape*gradients/Conv_Layer_2/WX_b_2/add_grad/Sum,gradients/Conv_Layer_2/WX_b_2/add_grad/Shape*
Tshape0*
T0
Ė
,gradients/Conv_Layer_2/WX_b_2/add_grad/Sum_1Sum0gradients/Conv_Layer_2/relu_2/Relu_grad/ReluGrad>gradients/Conv_Layer_2/WX_b_2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
°
0gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape_1Reshape,gradients/Conv_Layer_2/WX_b_2/add_grad/Sum_1.gradients/Conv_Layer_2/WX_b_2/add_grad/Shape_1*
Tshape0*
T0
£
7gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/group_depsNoOp/^gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape1^gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape_1

?gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependencyIdentity.gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape8^gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape

Agradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependency_1Identity0gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape_18^gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/Conv_Layer_2/WX_b_2/add_grad/Reshape_1
q
/gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/ShapeShapeConv_Layer_1/pooling_1/MaxPool*
out_type0*
T0
Ć
=gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/ShapeConv_Layer_2/Variable/read?gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependency*
data_formatNHWC*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(
n
1gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Shape_1Const*%
valueB"            *
dtype0
Ė
>gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterConv_Layer_1/pooling_1/MaxPool1gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Shape_1?gradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependency*
data_formatNHWC*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(
Ć
:gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/group_depsNoOp>^gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropInput?^gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropFilter
„
Bgradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/control_dependencyIdentity=gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropInput;^gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropInput
©
Dgradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/control_dependency_1Identity>gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropFilter;^gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/Conv_Layer_2/WX_b_2/Conv2D_grad/Conv2DBackpropFilter
¢
9gradients/Conv_Layer_1/pooling_1/MaxPool_grad/MaxPoolGradMaxPoolGradConv_Layer_1/relu_1/ReluConv_Layer_1/pooling_1/MaxPoolBgradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/control_dependency*
data_formatNHWC*
T0*
ksize
*
strides
*
paddingVALID

0gradients/Conv_Layer_1/relu_1/Relu_grad/ReluGradReluGrad9gradients/Conv_Layer_1/pooling_1/MaxPool_grad/MaxPoolGradConv_Layer_1/relu_1/Relu*
T0
j
,gradients/Conv_Layer_1/WX_b_1/add_grad/ShapeShapeConv_Layer_1/WX_b_1/Conv2D*
out_type0*
T0
\
.gradients/Conv_Layer_1/WX_b_1/add_grad/Shape_1Const*
valueB:*
dtype0
¼
<gradients/Conv_Layer_1/WX_b_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/Conv_Layer_1/WX_b_1/add_grad/Shape.gradients/Conv_Layer_1/WX_b_1/add_grad/Shape_1*
T0
Ē
*gradients/Conv_Layer_1/WX_b_1/add_grad/SumSum0gradients/Conv_Layer_1/relu_1/Relu_grad/ReluGrad<gradients/Conv_Layer_1/WX_b_1/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/Conv_Layer_1/WX_b_1/add_grad/ReshapeReshape*gradients/Conv_Layer_1/WX_b_1/add_grad/Sum,gradients/Conv_Layer_1/WX_b_1/add_grad/Shape*
Tshape0*
T0
Ė
,gradients/Conv_Layer_1/WX_b_1/add_grad/Sum_1Sum0gradients/Conv_Layer_1/relu_1/Relu_grad/ReluGrad>gradients/Conv_Layer_1/WX_b_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
°
0gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape_1Reshape,gradients/Conv_Layer_1/WX_b_1/add_grad/Sum_1.gradients/Conv_Layer_1/WX_b_1/add_grad/Shape_1*
Tshape0*
T0
£
7gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/group_depsNoOp/^gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape1^gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape_1

?gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependencyIdentity.gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape8^gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape

Agradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependency_1Identity0gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape_18^gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/Conv_Layer_1/WX_b_1/add_grad/Reshape_1
^
/gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/ShapeShapePlaceholder*
out_type0*
T0
Ć
=gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/ShapeConv_Layer_1/Variable/read?gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependency*
data_formatNHWC*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(
n
1gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Shape_1Const*%
valueB"            *
dtype0
ø
>gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder1gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Shape_1?gradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependency*
data_formatNHWC*
T0*
paddingVALID*
strides
*
use_cudnn_on_gpu(
Ć
:gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/group_depsNoOp>^gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropInput?^gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropFilter
„
Bgradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/control_dependencyIdentity=gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropInput;^gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropInput
©
Dgradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/control_dependency_1Identity>gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropFilter;^gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/Conv_Layer_1/WX_b_1/Conv2D_grad/Conv2DBackpropFilter
p
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*(
_class
loc:@Conv_Layer_1/Variable

beta1_powerVariable*
shape: *
shared_name *
	container *
dtype0*(
_class
loc:@Conv_Layer_1/Variable
 
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
\
beta1_power/readIdentitybeta1_power*
T0*(
_class
loc:@Conv_Layer_1/Variable
p
beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*(
_class
loc:@Conv_Layer_1/Variable

beta2_powerVariable*
shape: *
shared_name *
	container *
dtype0*(
_class
loc:@Conv_Layer_1/Variable
 
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
\
beta2_power/readIdentitybeta2_power*
T0*(
_class
loc:@Conv_Layer_1/Variable
B
zerosConst*%
valueB*    *
dtype0

Conv_Layer_1/Variable/AdamVariable*
shape:*
shared_name *
	container *
dtype0*(
_class
loc:@Conv_Layer_1/Variable
Ŗ
!Conv_Layer_1/Variable/Adam/AssignAssignConv_Layer_1/Variable/Adamzeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
z
Conv_Layer_1/Variable/Adam/readIdentityConv_Layer_1/Variable/Adam*
T0*(
_class
loc:@Conv_Layer_1/Variable
D
zeros_1Const*%
valueB*    *
dtype0
 
Conv_Layer_1/Variable/Adam_1Variable*
shape:*
shared_name *
	container *
dtype0*(
_class
loc:@Conv_Layer_1/Variable
°
#Conv_Layer_1/Variable/Adam_1/AssignAssignConv_Layer_1/Variable/Adam_1zeros_1*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
~
!Conv_Layer_1/Variable/Adam_1/readIdentityConv_Layer_1/Variable/Adam_1*
T0*(
_class
loc:@Conv_Layer_1/Variable
8
zeros_2Const*
valueB*    *
dtype0

Conv_Layer_1/Variable_1/AdamVariable*
shape:*
shared_name *
	container *
dtype0**
_class 
loc:@Conv_Layer_1/Variable_1
²
#Conv_Layer_1/Variable_1/Adam/AssignAssignConv_Layer_1/Variable_1/Adamzeros_2*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1

!Conv_Layer_1/Variable_1/Adam/readIdentityConv_Layer_1/Variable_1/Adam*
T0**
_class 
loc:@Conv_Layer_1/Variable_1
8
zeros_3Const*
valueB*    *
dtype0

Conv_Layer_1/Variable_1/Adam_1Variable*
shape:*
shared_name *
	container *
dtype0**
_class 
loc:@Conv_Layer_1/Variable_1
¶
%Conv_Layer_1/Variable_1/Adam_1/AssignAssignConv_Layer_1/Variable_1/Adam_1zeros_3*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1

#Conv_Layer_1/Variable_1/Adam_1/readIdentityConv_Layer_1/Variable_1/Adam_1*
T0**
_class 
loc:@Conv_Layer_1/Variable_1
D
zeros_4Const*%
valueB*    *
dtype0

Conv_Layer_2/Variable/AdamVariable*
shape:*
shared_name *
	container *
dtype0*(
_class
loc:@Conv_Layer_2/Variable
¬
!Conv_Layer_2/Variable/Adam/AssignAssignConv_Layer_2/Variable/Adamzeros_4*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
z
Conv_Layer_2/Variable/Adam/readIdentityConv_Layer_2/Variable/Adam*
T0*(
_class
loc:@Conv_Layer_2/Variable
D
zeros_5Const*%
valueB*    *
dtype0
 
Conv_Layer_2/Variable/Adam_1Variable*
shape:*
shared_name *
	container *
dtype0*(
_class
loc:@Conv_Layer_2/Variable
°
#Conv_Layer_2/Variable/Adam_1/AssignAssignConv_Layer_2/Variable/Adam_1zeros_5*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
~
!Conv_Layer_2/Variable/Adam_1/readIdentityConv_Layer_2/Variable/Adam_1*
T0*(
_class
loc:@Conv_Layer_2/Variable
8
zeros_6Const*
valueB*    *
dtype0

Conv_Layer_2/Variable_1/AdamVariable*
shape:*
shared_name *
	container *
dtype0**
_class 
loc:@Conv_Layer_2/Variable_1
²
#Conv_Layer_2/Variable_1/Adam/AssignAssignConv_Layer_2/Variable_1/Adamzeros_6*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1

!Conv_Layer_2/Variable_1/Adam/readIdentityConv_Layer_2/Variable_1/Adam*
T0**
_class 
loc:@Conv_Layer_2/Variable_1
8
zeros_7Const*
valueB*    *
dtype0

Conv_Layer_2/Variable_1/Adam_1Variable*
shape:*
shared_name *
	container *
dtype0**
_class 
loc:@Conv_Layer_2/Variable_1
¶
%Conv_Layer_2/Variable_1/Adam_1/AssignAssignConv_Layer_2/Variable_1/Adam_1zeros_7*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1

#Conv_Layer_2/Variable_1/Adam_1/readIdentityConv_Layer_2/Variable_1/Adam_1*
T0**
_class 
loc:@Conv_Layer_2/Variable_1
=
zeros_8Const*
valueB	x*    *
dtype0

FC_Layer_1/Variable/AdamVariable*
shape:	x*
shared_name *
	container *
dtype0*&
_class
loc:@FC_Layer_1/Variable
¦
FC_Layer_1/Variable/Adam/AssignAssignFC_Layer_1/Variable/Adamzeros_8*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
t
FC_Layer_1/Variable/Adam/readIdentityFC_Layer_1/Variable/Adam*
T0*&
_class
loc:@FC_Layer_1/Variable
=
zeros_9Const*
valueB	x*    *
dtype0

FC_Layer_1/Variable/Adam_1Variable*
shape:	x*
shared_name *
	container *
dtype0*&
_class
loc:@FC_Layer_1/Variable
Ŗ
!FC_Layer_1/Variable/Adam_1/AssignAssignFC_Layer_1/Variable/Adam_1zeros_9*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
x
FC_Layer_1/Variable/Adam_1/readIdentityFC_Layer_1/Variable/Adam_1*
T0*&
_class
loc:@FC_Layer_1/Variable
9
zeros_10Const*
valueBx*    *
dtype0

FC_Layer_1/Variable_1/AdamVariable*
shape:x*
shared_name *
	container *
dtype0*(
_class
loc:@FC_Layer_1/Variable_1
­
!FC_Layer_1/Variable_1/Adam/AssignAssignFC_Layer_1/Variable_1/Adamzeros_10*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
z
FC_Layer_1/Variable_1/Adam/readIdentityFC_Layer_1/Variable_1/Adam*
T0*(
_class
loc:@FC_Layer_1/Variable_1
9
zeros_11Const*
valueBx*    *
dtype0

FC_Layer_1/Variable_1/Adam_1Variable*
shape:x*
shared_name *
	container *
dtype0*(
_class
loc:@FC_Layer_1/Variable_1
±
#FC_Layer_1/Variable_1/Adam_1/AssignAssignFC_Layer_1/Variable_1/Adam_1zeros_11*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
~
!FC_Layer_1/Variable_1/Adam_1/readIdentityFC_Layer_1/Variable_1/Adam_1*
T0*(
_class
loc:@FC_Layer_1/Variable_1
=
zeros_12Const*
valueBxT*    *
dtype0

FC_Layer_2/Variable/AdamVariable*
shape
:xT*
shared_name *
	container *
dtype0*&
_class
loc:@FC_Layer_2/Variable
§
FC_Layer_2/Variable/Adam/AssignAssignFC_Layer_2/Variable/Adamzeros_12*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
t
FC_Layer_2/Variable/Adam/readIdentityFC_Layer_2/Variable/Adam*
T0*&
_class
loc:@FC_Layer_2/Variable
=
zeros_13Const*
valueBxT*    *
dtype0

FC_Layer_2/Variable/Adam_1Variable*
shape
:xT*
shared_name *
	container *
dtype0*&
_class
loc:@FC_Layer_2/Variable
«
!FC_Layer_2/Variable/Adam_1/AssignAssignFC_Layer_2/Variable/Adam_1zeros_13*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
x
FC_Layer_2/Variable/Adam_1/readIdentityFC_Layer_2/Variable/Adam_1*
T0*&
_class
loc:@FC_Layer_2/Variable
9
zeros_14Const*
valueBT*    *
dtype0

FC_Layer_2/Variable_1/AdamVariable*
shape:T*
shared_name *
	container *
dtype0*(
_class
loc:@FC_Layer_2/Variable_1
­
!FC_Layer_2/Variable_1/Adam/AssignAssignFC_Layer_2/Variable_1/Adamzeros_14*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
z
FC_Layer_2/Variable_1/Adam/readIdentityFC_Layer_2/Variable_1/Adam*
T0*(
_class
loc:@FC_Layer_2/Variable_1
9
zeros_15Const*
valueBT*    *
dtype0

FC_Layer_2/Variable_1/Adam_1Variable*
shape:T*
shared_name *
	container *
dtype0*(
_class
loc:@FC_Layer_2/Variable_1
±
#FC_Layer_2/Variable_1/Adam_1/AssignAssignFC_Layer_2/Variable_1/Adam_1zeros_15*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
~
!FC_Layer_2/Variable_1/Adam_1/readIdentityFC_Layer_2/Variable_1/Adam_1*
T0*(
_class
loc:@FC_Layer_2/Variable_1
=
zeros_16Const*
valueBT+*    *
dtype0

FC_Layer_3/Variable/AdamVariable*
shape
:T+*
shared_name *
	container *
dtype0*&
_class
loc:@FC_Layer_3/Variable
§
FC_Layer_3/Variable/Adam/AssignAssignFC_Layer_3/Variable/Adamzeros_16*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
t
FC_Layer_3/Variable/Adam/readIdentityFC_Layer_3/Variable/Adam*
T0*&
_class
loc:@FC_Layer_3/Variable
=
zeros_17Const*
valueBT+*    *
dtype0

FC_Layer_3/Variable/Adam_1Variable*
shape
:T+*
shared_name *
	container *
dtype0*&
_class
loc:@FC_Layer_3/Variable
«
!FC_Layer_3/Variable/Adam_1/AssignAssignFC_Layer_3/Variable/Adam_1zeros_17*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
x
FC_Layer_3/Variable/Adam_1/readIdentityFC_Layer_3/Variable/Adam_1*
T0*&
_class
loc:@FC_Layer_3/Variable
9
zeros_18Const*
valueB+*    *
dtype0

FC_Layer_3/Variable_1/AdamVariable*
shape:+*
shared_name *
	container *
dtype0*(
_class
loc:@FC_Layer_3/Variable_1
­
!FC_Layer_3/Variable_1/Adam/AssignAssignFC_Layer_3/Variable_1/Adamzeros_18*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
z
FC_Layer_3/Variable_1/Adam/readIdentityFC_Layer_3/Variable_1/Adam*
T0*(
_class
loc:@FC_Layer_3/Variable_1
9
zeros_19Const*
valueB+*    *
dtype0

FC_Layer_3/Variable_1/Adam_1Variable*
shape:+*
shared_name *
	container *
dtype0*(
_class
loc:@FC_Layer_3/Variable_1
±
#FC_Layer_3/Variable_1/Adam_1/AssignAssignFC_Layer_3/Variable_1/Adam_1zeros_19*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
~
!FC_Layer_3/Variable_1/Adam_1/readIdentityFC_Layer_3/Variable_1/Adam_1*
T0*(
_class
loc:@FC_Layer_3/Variable_1
?
Adam/learning_rateConst*
valueB
 *o:*
dtype0
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0
ó
+Adam/update_Conv_Layer_1/Variable/ApplyAdam	ApplyAdamConv_Layer_1/VariableConv_Layer_1/Variable/AdamConv_Layer_1/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/Conv_Layer_1/WX_b_1/Conv2D_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@Conv_Layer_1/Variable
ś
-Adam/update_Conv_Layer_1/Variable_1/ApplyAdam	ApplyAdamConv_Layer_1/Variable_1Conv_Layer_1/Variable_1/AdamConv_Layer_1/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/Conv_Layer_1/WX_b_1/add_grad/tuple/control_dependency_1*
T0*
use_locking( **
_class 
loc:@Conv_Layer_1/Variable_1
ó
+Adam/update_Conv_Layer_2/Variable/ApplyAdam	ApplyAdamConv_Layer_2/VariableConv_Layer_2/Variable/AdamConv_Layer_2/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/Conv_Layer_2/WX_b_2/Conv2D_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@Conv_Layer_2/Variable
ś
-Adam/update_Conv_Layer_2/Variable_1/ApplyAdam	ApplyAdamConv_Layer_2/Variable_1Conv_Layer_2/Variable_1/AdamConv_Layer_2/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/Conv_Layer_2/WX_b_2/add_grad/tuple/control_dependency_1*
T0*
use_locking( **
_class 
loc:@Conv_Layer_2/Variable_1
ē
)Adam/update_FC_Layer_1/Variable/ApplyAdam	ApplyAdamFC_Layer_1/VariableFC_Layer_1/Variable/AdamFC_Layer_1/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonBgradients/FC_Layer_1/Wx_b_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *&
_class
loc:@FC_Layer_1/Variable
ī
+Adam/update_FC_Layer_1/Variable_1/ApplyAdam	ApplyAdamFC_Layer_1/Variable_1FC_Layer_1/Variable_1/AdamFC_Layer_1/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/FC_Layer_1/Wx_b_3/add_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@FC_Layer_1/Variable_1
ē
)Adam/update_FC_Layer_2/Variable/ApplyAdam	ApplyAdamFC_Layer_2/VariableFC_Layer_2/Variable/AdamFC_Layer_2/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonBgradients/FC_Layer_2/Wx_b_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *&
_class
loc:@FC_Layer_2/Variable
ī
+Adam/update_FC_Layer_2/Variable_1/ApplyAdam	ApplyAdamFC_Layer_2/Variable_1FC_Layer_2/Variable_1/AdamFC_Layer_2/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/FC_Layer_2/Wx_b_4/add_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@FC_Layer_2/Variable_1
ē
)Adam/update_FC_Layer_3/Variable/ApplyAdam	ApplyAdamFC_Layer_3/VariableFC_Layer_3/Variable/AdamFC_Layer_3/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonBgradients/FC_Layer_3/Wx_b_5/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *&
_class
loc:@FC_Layer_3/Variable
ī
+Adam/update_FC_Layer_3/Variable_1/ApplyAdam	ApplyAdamFC_Layer_3/Variable_1FC_Layer_3/Variable_1/AdamFC_Layer_3/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/FC_Layer_3/Wx_b_5/add_grad/tuple/control_dependency_1*
T0*
use_locking( *(
_class
loc:@FC_Layer_3/Variable_1
Ŗ
Adam/mulMulbeta1_power/read
Adam/beta1,^Adam/update_Conv_Layer_1/Variable/ApplyAdam.^Adam/update_Conv_Layer_1/Variable_1/ApplyAdam,^Adam/update_Conv_Layer_2/Variable/ApplyAdam.^Adam/update_Conv_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_1/Variable/ApplyAdam,^Adam/update_FC_Layer_1/Variable_1/ApplyAdam*^Adam/update_FC_Layer_2/Variable/ApplyAdam,^Adam/update_FC_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_3/Variable/ApplyAdam,^Adam/update_FC_Layer_3/Variable_1/ApplyAdam*
T0*(
_class
loc:@Conv_Layer_1/Variable

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
use_locking( *
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
¬

Adam/mul_1Mulbeta2_power/read
Adam/beta2,^Adam/update_Conv_Layer_1/Variable/ApplyAdam.^Adam/update_Conv_Layer_1/Variable_1/ApplyAdam,^Adam/update_Conv_Layer_2/Variable/ApplyAdam.^Adam/update_Conv_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_1/Variable/ApplyAdam,^Adam/update_FC_Layer_1/Variable_1/ApplyAdam*^Adam/update_FC_Layer_2/Variable/ApplyAdam,^Adam/update_FC_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_3/Variable/ApplyAdam,^Adam/update_FC_Layer_3/Variable_1/ApplyAdam*
T0*(
_class
loc:@Conv_Layer_1/Variable

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
use_locking( *
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
ō
AdamNoOp,^Adam/update_Conv_Layer_1/Variable/ApplyAdam.^Adam/update_Conv_Layer_1/Variable_1/ApplyAdam,^Adam/update_Conv_Layer_2/Variable/ApplyAdam.^Adam/update_Conv_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_1/Variable/ApplyAdam,^Adam/update_FC_Layer_1/Variable_1/ApplyAdam*^Adam/update_FC_Layer_2/Variable/ApplyAdam,^Adam/update_FC_Layer_2/Variable_1/ApplyAdam*^Adam/update_FC_Layer_3/Variable/ApplyAdam,^Adam/update_FC_Layer_3/Variable_1/ApplyAdam^Adam/Assign^Adam/Assign_1
:
ArgMax/dimensionConst*
value	B :*
dtype0
N
ArgMaxArgMaxFC_Layer_3/Wx_b_5/addArgMax/dimension*
T0*

Tidx0
<
ArgMax_1/dimensionConst*
value	B :*
dtype0
D
ArgMax_1ArgMaxone_hotArgMax_1/dimension*
T0*

Tidx0
)
EqualEqualArgMaxArgMax_1*
T0	
-
Cast_1CastEqual*

DstT0*

SrcT0


Rank_3RankCast_1*
T0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
<
rangeRangerange/startRank_3range/delta*

Tidx0
A
MeanMeanCast_1range*
	keep_dims( *
T0*

Tidx0
8

save/ConstConst*
valueB Bmodel*
dtype0

save/SaveV2/tensor_namesConst*Ó
valueÉBĘ BConv_Layer_1/VariableBConv_Layer_1/Variable/AdamBConv_Layer_1/Variable/Adam_1BConv_Layer_1/Variable_1BConv_Layer_1/Variable_1/AdamBConv_Layer_1/Variable_1/Adam_1BConv_Layer_2/VariableBConv_Layer_2/Variable/AdamBConv_Layer_2/Variable/Adam_1BConv_Layer_2/Variable_1BConv_Layer_2/Variable_1/AdamBConv_Layer_2/Variable_1/Adam_1BFC_Layer_1/VariableBFC_Layer_1/Variable/AdamBFC_Layer_1/Variable/Adam_1BFC_Layer_1/Variable_1BFC_Layer_1/Variable_1/AdamBFC_Layer_1/Variable_1/Adam_1BFC_Layer_2/VariableBFC_Layer_2/Variable/AdamBFC_Layer_2/Variable/Adam_1BFC_Layer_2/Variable_1BFC_Layer_2/Variable_1/AdamBFC_Layer_2/Variable_1/Adam_1BFC_Layer_3/VariableBFC_Layer_3/Variable/AdamBFC_Layer_3/Variable/Adam_1BFC_Layer_3/Variable_1BFC_Layer_3/Variable_1/AdamBFC_Layer_3/Variable_1/Adam_1Bbeta1_powerBbeta2_power*
dtype0

save/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Ē
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConv_Layer_1/VariableConv_Layer_1/Variable/AdamConv_Layer_1/Variable/Adam_1Conv_Layer_1/Variable_1Conv_Layer_1/Variable_1/AdamConv_Layer_1/Variable_1/Adam_1Conv_Layer_2/VariableConv_Layer_2/Variable/AdamConv_Layer_2/Variable/Adam_1Conv_Layer_2/Variable_1Conv_Layer_2/Variable_1/AdamConv_Layer_2/Variable_1/Adam_1FC_Layer_1/VariableFC_Layer_1/Variable/AdamFC_Layer_1/Variable/Adam_1FC_Layer_1/Variable_1FC_Layer_1/Variable_1/AdamFC_Layer_1/Variable_1/Adam_1FC_Layer_2/VariableFC_Layer_2/Variable/AdamFC_Layer_2/Variable/Adam_1FC_Layer_2/Variable_1FC_Layer_2/Variable_1/AdamFC_Layer_2/Variable_1/Adam_1FC_Layer_3/VariableFC_Layer_3/Variable/AdamFC_Layer_3/Variable/Adam_1FC_Layer_3/Variable_1FC_Layer_3/Variable_1/AdamFC_Layer_3/Variable_1/Adam_1beta1_powerbeta2_power*.
dtypes$
"2 
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
]
save/RestoreV2/tensor_namesConst**
value!BBConv_Layer_1/Variable*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2

save/AssignAssignConv_Layer_1/Variablesave/RestoreV2*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
d
save/RestoreV2_1/tensor_namesConst*/
value&B$BConv_Layer_1/Variable/Adam*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
”
save/Assign_1AssignConv_Layer_1/Variable/Adamsave/RestoreV2_1*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
f
save/RestoreV2_2/tensor_namesConst*1
value(B&BConv_Layer_1/Variable/Adam_1*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2
£
save/Assign_2AssignConv_Layer_1/Variable/Adam_1save/RestoreV2_2*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
a
save/RestoreV2_3/tensor_namesConst*,
value#B!BConv_Layer_1/Variable_1*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2
 
save/Assign_3AssignConv_Layer_1/Variable_1save/RestoreV2_3*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1
f
save/RestoreV2_4/tensor_namesConst*1
value(B&BConv_Layer_1/Variable_1/Adam*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2
„
save/Assign_4AssignConv_Layer_1/Variable_1/Adamsave/RestoreV2_4*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1
h
save/RestoreV2_5/tensor_namesConst*3
value*B(BConv_Layer_1/Variable_1/Adam_1*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2
§
save/Assign_5AssignConv_Layer_1/Variable_1/Adam_1save/RestoreV2_5*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_1/Variable_1
_
save/RestoreV2_6/tensor_namesConst**
value!BBConv_Layer_2/Variable*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2

save/Assign_6AssignConv_Layer_2/Variablesave/RestoreV2_6*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
d
save/RestoreV2_7/tensor_namesConst*/
value&B$BConv_Layer_2/Variable/Adam*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2
”
save/Assign_7AssignConv_Layer_2/Variable/Adamsave/RestoreV2_7*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
f
save/RestoreV2_8/tensor_namesConst*1
value(B&BConv_Layer_2/Variable/Adam_1*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2
£
save/Assign_8AssignConv_Layer_2/Variable/Adam_1save/RestoreV2_8*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_2/Variable
a
save/RestoreV2_9/tensor_namesConst*,
value#B!BConv_Layer_2/Variable_1*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2
 
save/Assign_9AssignConv_Layer_2/Variable_1save/RestoreV2_9*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1
g
save/RestoreV2_10/tensor_namesConst*1
value(B&BConv_Layer_2/Variable_1/Adam*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2
§
save/Assign_10AssignConv_Layer_2/Variable_1/Adamsave/RestoreV2_10*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1
i
save/RestoreV2_11/tensor_namesConst*3
value*B(BConv_Layer_2/Variable_1/Adam_1*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2
©
save/Assign_11AssignConv_Layer_2/Variable_1/Adam_1save/RestoreV2_11*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Conv_Layer_2/Variable_1
^
save/RestoreV2_12/tensor_namesConst*(
valueBBFC_Layer_1/Variable*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2

save/Assign_12AssignFC_Layer_1/Variablesave/RestoreV2_12*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
c
save/RestoreV2_13/tensor_namesConst*-
value$B"BFC_Layer_1/Variable/Adam*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2

save/Assign_13AssignFC_Layer_1/Variable/Adamsave/RestoreV2_13*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
e
save/RestoreV2_14/tensor_namesConst*/
value&B$BFC_Layer_1/Variable/Adam_1*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2
”
save/Assign_14AssignFC_Layer_1/Variable/Adam_1save/RestoreV2_14*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_1/Variable
`
save/RestoreV2_15/tensor_namesConst**
value!BBFC_Layer_1/Variable_1*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2

save/Assign_15AssignFC_Layer_1/Variable_1save/RestoreV2_15*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
e
save/RestoreV2_16/tensor_namesConst*/
value&B$BFC_Layer_1/Variable_1/Adam*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2
£
save/Assign_16AssignFC_Layer_1/Variable_1/Adamsave/RestoreV2_16*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
g
save/RestoreV2_17/tensor_namesConst*1
value(B&BFC_Layer_1/Variable_1/Adam_1*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2
„
save/Assign_17AssignFC_Layer_1/Variable_1/Adam_1save/RestoreV2_17*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_1/Variable_1
^
save/RestoreV2_18/tensor_namesConst*(
valueBBFC_Layer_2/Variable*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2

save/Assign_18AssignFC_Layer_2/Variablesave/RestoreV2_18*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
c
save/RestoreV2_19/tensor_namesConst*-
value$B"BFC_Layer_2/Variable/Adam*
dtype0
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2

save/Assign_19AssignFC_Layer_2/Variable/Adamsave/RestoreV2_19*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
e
save/RestoreV2_20/tensor_namesConst*/
value&B$BFC_Layer_2/Variable/Adam_1*
dtype0
O
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2
”
save/Assign_20AssignFC_Layer_2/Variable/Adam_1save/RestoreV2_20*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_2/Variable
`
save/RestoreV2_21/tensor_namesConst**
value!BBFC_Layer_2/Variable_1*
dtype0
O
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2

save/Assign_21AssignFC_Layer_2/Variable_1save/RestoreV2_21*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
e
save/RestoreV2_22/tensor_namesConst*/
value&B$BFC_Layer_2/Variable_1/Adam*
dtype0
O
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2
£
save/Assign_22AssignFC_Layer_2/Variable_1/Adamsave/RestoreV2_22*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
g
save/RestoreV2_23/tensor_namesConst*1
value(B&BFC_Layer_2/Variable_1/Adam_1*
dtype0
O
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2
„
save/Assign_23AssignFC_Layer_2/Variable_1/Adam_1save/RestoreV2_23*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_2/Variable_1
^
save/RestoreV2_24/tensor_namesConst*(
valueBBFC_Layer_3/Variable*
dtype0
O
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2

save/Assign_24AssignFC_Layer_3/Variablesave/RestoreV2_24*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
c
save/RestoreV2_25/tensor_namesConst*-
value$B"BFC_Layer_3/Variable/Adam*
dtype0
O
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2

save/Assign_25AssignFC_Layer_3/Variable/Adamsave/RestoreV2_25*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
e
save/RestoreV2_26/tensor_namesConst*/
value&B$BFC_Layer_3/Variable/Adam_1*
dtype0
O
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2
”
save/Assign_26AssignFC_Layer_3/Variable/Adam_1save/RestoreV2_26*
T0*
use_locking(*
validate_shape(*&
_class
loc:@FC_Layer_3/Variable
`
save/RestoreV2_27/tensor_namesConst**
value!BBFC_Layer_3/Variable_1*
dtype0
O
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2

save/Assign_27AssignFC_Layer_3/Variable_1save/RestoreV2_27*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
e
save/RestoreV2_28/tensor_namesConst*/
value&B$BFC_Layer_3/Variable_1/Adam*
dtype0
O
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2
£
save/Assign_28AssignFC_Layer_3/Variable_1/Adamsave/RestoreV2_28*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
g
save/RestoreV2_29/tensor_namesConst*1
value(B&BFC_Layer_3/Variable_1/Adam_1*
dtype0
O
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2
„
save/Assign_29AssignFC_Layer_3/Variable_1/Adam_1save/RestoreV2_29*
T0*
use_locking(*
validate_shape(*(
_class
loc:@FC_Layer_3/Variable_1
V
save/RestoreV2_30/tensor_namesConst* 
valueBBbeta1_power*
dtype0
O
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2

save/Assign_30Assignbeta1_powersave/RestoreV2_30*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
V
save/RestoreV2_31/tensor_namesConst* 
valueBBbeta2_power*
dtype0
O
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2

save/Assign_31Assignbeta2_powersave/RestoreV2_31*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Conv_Layer_1/Variable
¬
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31
O
MergeSummary/MergeSummaryMergeSummaryloss_function/ScalarSummary*
N
Ź
initNoOp^Conv_Layer_1/Variable/Assign^Conv_Layer_1/Variable_1/Assign^Conv_Layer_2/Variable/Assign^Conv_Layer_2/Variable_1/Assign^FC_Layer_1/Variable/Assign^FC_Layer_1/Variable_1/Assign^FC_Layer_2/Variable/Assign^FC_Layer_2/Variable_1/Assign^FC_Layer_3/Variable/Assign^FC_Layer_3/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign"^Conv_Layer_1/Variable/Adam/Assign$^Conv_Layer_1/Variable/Adam_1/Assign$^Conv_Layer_1/Variable_1/Adam/Assign&^Conv_Layer_1/Variable_1/Adam_1/Assign"^Conv_Layer_2/Variable/Adam/Assign$^Conv_Layer_2/Variable/Adam_1/Assign$^Conv_Layer_2/Variable_1/Adam/Assign&^Conv_Layer_2/Variable_1/Adam_1/Assign ^FC_Layer_1/Variable/Adam/Assign"^FC_Layer_1/Variable/Adam_1/Assign"^FC_Layer_1/Variable_1/Adam/Assign$^FC_Layer_1/Variable_1/Adam_1/Assign ^FC_Layer_2/Variable/Adam/Assign"^FC_Layer_2/Variable/Adam_1/Assign"^FC_Layer_2/Variable_1/Adam/Assign$^FC_Layer_2/Variable_1/Adam_1/Assign ^FC_Layer_3/Variable/Adam/Assign"^FC_Layer_3/Variable/Adam_1/Assign"^FC_Layer_3/Variable_1/Adam/Assign$^FC_Layer_3/Variable_1/Adam_1/Assign"".
	summaries!

loss_function/ScalarSummary:0"ū
trainable_variablesćą
U
Conv_Layer_1/Variable:0Conv_Layer_1/Variable/AssignConv_Layer_1/Variable/read:0
[
Conv_Layer_1/Variable_1:0Conv_Layer_1/Variable_1/AssignConv_Layer_1/Variable_1/read:0
U
Conv_Layer_2/Variable:0Conv_Layer_2/Variable/AssignConv_Layer_2/Variable/read:0
[
Conv_Layer_2/Variable_1:0Conv_Layer_2/Variable_1/AssignConv_Layer_2/Variable_1/read:0
O
FC_Layer_1/Variable:0FC_Layer_1/Variable/AssignFC_Layer_1/Variable/read:0
U
FC_Layer_1/Variable_1:0FC_Layer_1/Variable_1/AssignFC_Layer_1/Variable_1/read:0
O
FC_Layer_2/Variable:0FC_Layer_2/Variable/AssignFC_Layer_2/Variable/read:0
U
FC_Layer_2/Variable_1:0FC_Layer_2/Variable_1/AssignFC_Layer_2/Variable_1/read:0
O
FC_Layer_3/Variable:0FC_Layer_3/Variable/AssignFC_Layer_3/Variable/read:0
U
FC_Layer_3/Variable_1:0FC_Layer_3/Variable_1/AssignFC_Layer_3/Variable_1/read:0"
	variablesżś
U
Conv_Layer_1/Variable:0Conv_Layer_1/Variable/AssignConv_Layer_1/Variable/read:0
[
Conv_Layer_1/Variable_1:0Conv_Layer_1/Variable_1/AssignConv_Layer_1/Variable_1/read:0
U
Conv_Layer_2/Variable:0Conv_Layer_2/Variable/AssignConv_Layer_2/Variable/read:0
[
Conv_Layer_2/Variable_1:0Conv_Layer_2/Variable_1/AssignConv_Layer_2/Variable_1/read:0
O
FC_Layer_1/Variable:0FC_Layer_1/Variable/AssignFC_Layer_1/Variable/read:0
U
FC_Layer_1/Variable_1:0FC_Layer_1/Variable_1/AssignFC_Layer_1/Variable_1/read:0
O
FC_Layer_2/Variable:0FC_Layer_2/Variable/AssignFC_Layer_2/Variable/read:0
U
FC_Layer_2/Variable_1:0FC_Layer_2/Variable_1/AssignFC_Layer_2/Variable_1/read:0
O
FC_Layer_3/Variable:0FC_Layer_3/Variable/AssignFC_Layer_3/Variable/read:0
U
FC_Layer_3/Variable_1:0FC_Layer_3/Variable_1/AssignFC_Layer_3/Variable_1/read:0
7
beta1_power:0beta1_power/Assignbeta1_power/read:0
7
beta2_power:0beta2_power/Assignbeta2_power/read:0
d
Conv_Layer_1/Variable/Adam:0!Conv_Layer_1/Variable/Adam/Assign!Conv_Layer_1/Variable/Adam/read:0
j
Conv_Layer_1/Variable/Adam_1:0#Conv_Layer_1/Variable/Adam_1/Assign#Conv_Layer_1/Variable/Adam_1/read:0
j
Conv_Layer_1/Variable_1/Adam:0#Conv_Layer_1/Variable_1/Adam/Assign#Conv_Layer_1/Variable_1/Adam/read:0
p
 Conv_Layer_1/Variable_1/Adam_1:0%Conv_Layer_1/Variable_1/Adam_1/Assign%Conv_Layer_1/Variable_1/Adam_1/read:0
d
Conv_Layer_2/Variable/Adam:0!Conv_Layer_2/Variable/Adam/Assign!Conv_Layer_2/Variable/Adam/read:0
j
Conv_Layer_2/Variable/Adam_1:0#Conv_Layer_2/Variable/Adam_1/Assign#Conv_Layer_2/Variable/Adam_1/read:0
j
Conv_Layer_2/Variable_1/Adam:0#Conv_Layer_2/Variable_1/Adam/Assign#Conv_Layer_2/Variable_1/