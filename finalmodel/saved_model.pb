Мы
Ђј
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
Ћ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.7.02v2.7.0-0-gc256c071bb28Еь
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:2*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_1/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш**
shared_namelstm_1/lstm_cell_2/kernel

-lstm_1/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_2/kernel*
_output_shapes
:	Ш*
dtype0
Ѓ
#lstm_1/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*4
shared_name%#lstm_1/lstm_cell_2/recurrent_kernel

7lstm_1/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_2/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0

lstm_1/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*(
shared_namelstm_1/lstm_cell_2/bias

+lstm_1/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_2/bias*
_output_shapes	
:Ш*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш*1
shared_name" Adam/lstm_1/lstm_cell_2/kernel/m

4Adam/lstm_1/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_2/kernel/m*
_output_shapes
:	Ш*
dtype0
Б
*Adam/lstm_1/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*;
shared_name,*Adam/lstm_1/lstm_cell_2/recurrent_kernel/m
Њ
>Adam/lstm_1/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_2/recurrent_kernel/m*
_output_shapes
:	2Ш*
dtype0

Adam/lstm_1/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*/
shared_name Adam/lstm_1/lstm_cell_2/bias/m

2Adam/lstm_1/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_2/bias/m*
_output_shapes	
:Ш*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш*1
shared_name" Adam/lstm_1/lstm_cell_2/kernel/v

4Adam/lstm_1/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_2/kernel/v*
_output_shapes
:	Ш*
dtype0
Б
*Adam/lstm_1/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*;
shared_name,*Adam/lstm_1/lstm_cell_2/recurrent_kernel/v
Њ
>Adam/lstm_1/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_2/recurrent_kernel/v*
_output_shapes
:	2Ш*
dtype0

Adam/lstm_1/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*/
shared_name Adam/lstm_1/lstm_cell_2/bias/v

2Adam/lstm_1/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_2/bias/v*
_output_shapes	
:Ш*
dtype0

NoOpNoOp
Г 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ю
valueфBс Bк
П
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
	cell


state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api

iter

beta_1

beta_2
	decay
learning_ratem<m=m>m?m@vAvBvCvDvE
#
0
1
2
3
4
#
0
1
2
3
4
 
­
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses
 

"
state_size

kernel
recurrent_kernel
bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
 

0
1
2

0
1
2
 
Й

'states
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_1/lstm_cell_2/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_1/lstm_cell_2/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_1/lstm_cell_2/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

20
 
 
 

0
1
2

0
1
2
 
­
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
#	variables
$trainable_variables
%regularization_losses
 
 

	0
 
 
 
 
 
 
 
 
4
	8total
	9count
:	variables
;	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

80
91

:	variables
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_2/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_2/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_2/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_2/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_2/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_2/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_1_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
И
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_1_inputlstm_1/lstm_cell_2/kernellstm_1/lstm_cell_2/bias#lstm_1/lstm_cell_2/recurrent_kerneldense_1/kerneldense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_179505
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ч	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_1/lstm_cell_2/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_2/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_2/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_2/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_2/bias/v/Read/ReadVariableOpConst*#
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_181495
Њ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_1/lstm_cell_2/kernel#lstm_1/lstm_cell_2/recurrent_kernellstm_1/lstm_cell_2/biastotalcountAdam/dense_1/kernel/mAdam/dense_1/bias/m Adam/lstm_1/lstm_cell_2/kernel/m*Adam/lstm_1/lstm_cell_2/recurrent_kernel/mAdam/lstm_1/lstm_cell_2/bias/mAdam/dense_1/kernel/vAdam/dense_1/bias/v Adam/lstm_1/lstm_cell_2/kernel/v*Adam/lstm_1/lstm_cell_2/recurrent_kernel/vAdam/lstm_1/lstm_cell_2/bias/v*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_181571н
ч
і
-__inference_sequential_1_layer_call_fn_179093
lstm_1_input
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_179080o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_1_input
К
Ь
H__inference_sequential_1_layer_call_and_return_conditional_losses_179422

inputs 
lstm_1_179409:	Ш
lstm_1_179411:	Ш 
lstm_1_179413:	2Ш 
dense_1_179416:2
dense_1_179418:
identityЂdense_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallљ
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_179409lstm_1_179411lstm_1_179413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_179380
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_179416dense_1_179418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_179073w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ч<

B__inference_lstm_1_layer_call_and_return_conditional_losses_178776

inputs%
lstm_cell_2_178695:	Ш!
lstm_cell_2_178697:	Ш%
lstm_cell_2_178699:	2Ш
identityЂ#lstm_cell_2/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask№
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_178695lstm_cell_2_178697lstm_cell_2_178699*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178641n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Д
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_178695lstm_cell_2_178697lstm_cell_2_178699*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_178708*
condR
while_cond_178707*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_180770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180770___redundant_placeholder04
0while_while_cond_180770___redundant_placeholder14
0while_while_cond_180770___redundant_placeholder24
0while_while_cond_180770___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:

Ж
'__inference_lstm_1_layer_call_fn_180097
inputs_0
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_178776o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
К
Ь
H__inference_sequential_1_layer_call_and_return_conditional_losses_179080

inputs 
lstm_1_179056:	Ш
lstm_1_179058:	Ш 
lstm_1_179060:	2Ш 
dense_1_179074:2
dense_1_179076:
identityЂdense_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallљ
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_179056lstm_1_179058lstm_1_179060*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_179055
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_179074dense_1_179076*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_179073w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ж
'__inference_lstm_1_layer_call_fn_180086
inputs_0
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_178521o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Ю"
м
while_body_178708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_2_178732_0:	Ш)
while_lstm_cell_2_178734_0:	Ш-
while_lstm_cell_2_178736_0:	2Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_2_178732:	Ш'
while_lstm_cell_2_178734:	Ш+
while_lstm_cell_2_178736:	2ШЂ)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_178732_0while_lstm_cell_2_178734_0while_lstm_cell_2_178736_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178641л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_178732while_lstm_cell_2_178732_0"6
while_lstm_cell_2_178734while_lstm_cell_2_178734_0"6
while_lstm_cell_2_178736while_lstm_cell_2_178736_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
е
№
-__inference_sequential_1_layer_call_fn_179535

inputs
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_179422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
рФ
№
!__inference__wrapped_model_178307
lstm_1_inputP
=sequential_1_lstm_1_lstm_cell_2_split_readvariableop_resource:	ШN
?sequential_1_lstm_1_lstm_cell_2_split_1_readvariableop_resource:	ШJ
7sequential_1_lstm_1_lstm_cell_2_readvariableop_resource:	2ШE
3sequential_1_dense_1_matmul_readvariableop_resource:2B
4sequential_1_dense_1_biasadd_readvariableop_resource:
identityЂ+sequential_1/dense_1/BiasAdd/ReadVariableOpЂ*sequential_1/dense_1/MatMul/ReadVariableOpЂ.sequential_1/lstm_1/lstm_cell_2/ReadVariableOpЂ0sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_1Ђ0sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_2Ђ0sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_3Ђ4sequential_1/lstm_1/lstm_cell_2/split/ReadVariableOpЂ6sequential_1/lstm_1/lstm_cell_2/split_1/ReadVariableOpЂsequential_1/lstm_1/whileU
sequential_1/lstm_1/ShapeShapelstm_1_input*
T0*
_output_shapes
:q
'sequential_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!sequential_1/lstm_1/strided_sliceStridedSlice"sequential_1/lstm_1/Shape:output:00sequential_1/lstm_1/strided_slice/stack:output:02sequential_1/lstm_1/strided_slice/stack_1:output:02sequential_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential_1/lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential_1/lstm_1/zeros/mulMul*sequential_1/lstm_1/strided_slice:output:0(sequential_1/lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: c
 sequential_1/lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш
sequential_1/lstm_1/zeros/LessLess!sequential_1/lstm_1/zeros/mul:z:0)sequential_1/lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: d
"sequential_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Џ
 sequential_1/lstm_1/zeros/packedPack*sequential_1/lstm_1/strided_slice:output:0+sequential_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ј
sequential_1/lstm_1/zerosFill)sequential_1/lstm_1/zeros/packed:output:0(sequential_1/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
!sequential_1/lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential_1/lstm_1/zeros_1/mulMul*sequential_1/lstm_1/strided_slice:output:0*sequential_1/lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: e
"sequential_1/lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш
 sequential_1/lstm_1/zeros_1/LessLess#sequential_1/lstm_1/zeros_1/mul:z:0+sequential_1/lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: f
$sequential_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Г
"sequential_1/lstm_1/zeros_1/packedPack*sequential_1/lstm_1/strided_slice:output:0-sequential_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential_1/lstm_1/zeros_1Fill+sequential_1/lstm_1/zeros_1/packed:output:0*sequential_1/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
"sequential_1/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_1/lstm_1/transpose	Transposelstm_1_input+sequential_1/lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџl
sequential_1/lstm_1/Shape_1Shape!sequential_1/lstm_1/transpose:y:0*
T0*
_output_shapes
:s
)sequential_1/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_1/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_1/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_1/lstm_1/strided_slice_1StridedSlice$sequential_1/lstm_1/Shape_1:output:02sequential_1/lstm_1/strided_slice_1/stack:output:04sequential_1/lstm_1/strided_slice_1/stack_1:output:04sequential_1/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_1/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ№
!sequential_1/lstm_1/TensorArrayV2TensorListReserve8sequential_1/lstm_1/TensorArrayV2/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_1/transpose:y:0Rsequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвs
)sequential_1/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_1/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_1/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Э
#sequential_1/lstm_1/strided_slice_2StridedSlice!sequential_1/lstm_1/transpose:y:02sequential_1/lstm_1/strided_slice_2/stack:output:04sequential_1/lstm_1/strided_slice_2/stack_1:output:04sequential_1/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskq
/sequential_1/lstm_1/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Г
4sequential_1/lstm_1/lstm_cell_2/split/ReadVariableOpReadVariableOp=sequential_1_lstm_1_lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	Ш*
dtype0ў
%sequential_1/lstm_1/lstm_cell_2/splitSplit8sequential_1/lstm_1/lstm_cell_2/split/split_dim:output:0<sequential_1/lstm_1/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitР
&sequential_1/lstm_1/lstm_cell_2/MatMulMatMul,sequential_1/lstm_1/strided_slice_2:output:0.sequential_1/lstm_1/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Т
(sequential_1/lstm_1/lstm_cell_2/MatMul_1MatMul,sequential_1/lstm_1/strided_slice_2:output:0.sequential_1/lstm_1/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Т
(sequential_1/lstm_1/lstm_cell_2/MatMul_2MatMul,sequential_1/lstm_1/strided_slice_2:output:0.sequential_1/lstm_1/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Т
(sequential_1/lstm_1/lstm_cell_2/MatMul_3MatMul,sequential_1/lstm_1/strided_slice_2:output:0.sequential_1/lstm_1/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2s
1sequential_1/lstm_1/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Г
6sequential_1/lstm_1/lstm_cell_2/split_1/ReadVariableOpReadVariableOp?sequential_1_lstm_1_lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0є
'sequential_1/lstm_1/lstm_cell_2/split_1Split:sequential_1/lstm_1/lstm_cell_2/split_1/split_dim:output:0>sequential_1/lstm_1/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splitШ
'sequential_1/lstm_1/lstm_cell_2/BiasAddBiasAdd0sequential_1/lstm_1/lstm_cell_2/MatMul:product:00sequential_1/lstm_1/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ь
)sequential_1/lstm_1/lstm_cell_2/BiasAdd_1BiasAdd2sequential_1/lstm_1/lstm_cell_2/MatMul_1:product:00sequential_1/lstm_1/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ь
)sequential_1/lstm_1/lstm_cell_2/BiasAdd_2BiasAdd2sequential_1/lstm_1/lstm_cell_2/MatMul_2:product:00sequential_1/lstm_1/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ь
)sequential_1/lstm_1/lstm_cell_2/BiasAdd_3BiasAdd2sequential_1/lstm_1/lstm_cell_2/MatMul_3:product:00sequential_1/lstm_1/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2Ї
.sequential_1/lstm_1/lstm_cell_2/ReadVariableOpReadVariableOp7sequential_1_lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
3sequential_1/lstm_1/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
5sequential_1/lstm_1/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   
5sequential_1/lstm_1/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
-sequential_1/lstm_1/lstm_cell_2/strided_sliceStridedSlice6sequential_1/lstm_1/lstm_cell_2/ReadVariableOp:value:0<sequential_1/lstm_1/lstm_cell_2/strided_slice/stack:output:0>sequential_1/lstm_1/lstm_cell_2/strided_slice/stack_1:output:0>sequential_1/lstm_1/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskР
(sequential_1/lstm_1/lstm_cell_2/MatMul_4MatMul"sequential_1/lstm_1/zeros:output:06sequential_1/lstm_1/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ф
#sequential_1/lstm_1/lstm_cell_2/addAddV20sequential_1/lstm_1/lstm_cell_2/BiasAdd:output:02sequential_1/lstm_1/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%sequential_1/lstm_1/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>l
'sequential_1/lstm_1/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Е
#sequential_1/lstm_1/lstm_cell_2/MulMul'sequential_1/lstm_1/lstm_cell_2/add:z:0.sequential_1/lstm_1/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Л
%sequential_1/lstm_1/lstm_cell_2/Add_1AddV2'sequential_1/lstm_1/lstm_cell_2/Mul:z:00sequential_1/lstm_1/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
7sequential_1/lstm_1/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?п
5sequential_1/lstm_1/lstm_cell_2/clip_by_value/MinimumMinimum)sequential_1/lstm_1/lstm_cell_2/Add_1:z:0@sequential_1/lstm_1/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2t
/sequential_1/lstm_1/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    п
-sequential_1/lstm_1/lstm_cell_2/clip_by_valueMaximum9sequential_1/lstm_1/lstm_cell_2/clip_by_value/Minimum:z:08sequential_1/lstm_1/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Љ
0sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_1ReadVariableOp7sequential_1_lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
5sequential_1/lstm_1/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   
7sequential_1/lstm_1/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   
7sequential_1/lstm_1/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential_1/lstm_1/lstm_cell_2/strided_slice_1StridedSlice8sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_1:value:0>sequential_1/lstm_1/lstm_cell_2/strided_slice_1/stack:output:0@sequential_1/lstm_1/lstm_cell_2/strided_slice_1/stack_1:output:0@sequential_1/lstm_1/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskТ
(sequential_1/lstm_1/lstm_cell_2/MatMul_5MatMul"sequential_1/lstm_1/zeros:output:08sequential_1/lstm_1/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ш
%sequential_1/lstm_1/lstm_cell_2/add_2AddV22sequential_1/lstm_1/lstm_cell_2/BiasAdd_1:output:02sequential_1/lstm_1/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
'sequential_1/lstm_1/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>l
'sequential_1/lstm_1/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Л
%sequential_1/lstm_1/lstm_cell_2/Mul_1Mul)sequential_1/lstm_1/lstm_cell_2/add_2:z:00sequential_1/lstm_1/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Н
%sequential_1/lstm_1/lstm_cell_2/Add_3AddV2)sequential_1/lstm_1/lstm_cell_2/Mul_1:z:00sequential_1/lstm_1/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
9sequential_1/lstm_1/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?у
7sequential_1/lstm_1/lstm_cell_2/clip_by_value_1/MinimumMinimum)sequential_1/lstm_1/lstm_cell_2/Add_3:z:0Bsequential_1/lstm_1/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2v
1sequential_1/lstm_1/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
/sequential_1/lstm_1/lstm_cell_2/clip_by_value_1Maximum;sequential_1/lstm_1/lstm_cell_2/clip_by_value_1/Minimum:z:0:sequential_1/lstm_1/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Й
%sequential_1/lstm_1/lstm_cell_2/mul_2Mul3sequential_1/lstm_1/lstm_cell_2/clip_by_value_1:z:0$sequential_1/lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Љ
0sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_2ReadVariableOp7sequential_1_lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
5sequential_1/lstm_1/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   
7sequential_1/lstm_1/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
7sequential_1/lstm_1/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential_1/lstm_1/lstm_cell_2/strided_slice_2StridedSlice8sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_2:value:0>sequential_1/lstm_1/lstm_cell_2/strided_slice_2/stack:output:0@sequential_1/lstm_1/lstm_cell_2/strided_slice_2/stack_1:output:0@sequential_1/lstm_1/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskТ
(sequential_1/lstm_1/lstm_cell_2/MatMul_6MatMul"sequential_1/lstm_1/zeros:output:08sequential_1/lstm_1/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ш
%sequential_1/lstm_1/lstm_cell_2/add_4AddV22sequential_1/lstm_1/lstm_cell_2/BiasAdd_2:output:02sequential_1/lstm_1/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2
$sequential_1/lstm_1/lstm_cell_2/TanhTanh)sequential_1/lstm_1/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Л
%sequential_1/lstm_1/lstm_cell_2/mul_3Mul1sequential_1/lstm_1/lstm_cell_2/clip_by_value:z:0(sequential_1/lstm_1/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ж
%sequential_1/lstm_1/lstm_cell_2/add_5AddV2)sequential_1/lstm_1/lstm_cell_2/mul_2:z:0)sequential_1/lstm_1/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Љ
0sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_3ReadVariableOp7sequential_1_lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
5sequential_1/lstm_1/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       
7sequential_1/lstm_1/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7sequential_1/lstm_1/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential_1/lstm_1/lstm_cell_2/strided_slice_3StridedSlice8sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_3:value:0>sequential_1/lstm_1/lstm_cell_2/strided_slice_3/stack:output:0@sequential_1/lstm_1/lstm_cell_2/strided_slice_3/stack_1:output:0@sequential_1/lstm_1/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskТ
(sequential_1/lstm_1/lstm_cell_2/MatMul_7MatMul"sequential_1/lstm_1/zeros:output:08sequential_1/lstm_1/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ш
%sequential_1/lstm_1/lstm_cell_2/add_6AddV22sequential_1/lstm_1/lstm_cell_2/BiasAdd_3:output:02sequential_1/lstm_1/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
'sequential_1/lstm_1/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>l
'sequential_1/lstm_1/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Л
%sequential_1/lstm_1/lstm_cell_2/Mul_4Mul)sequential_1/lstm_1/lstm_cell_2/add_6:z:00sequential_1/lstm_1/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Н
%sequential_1/lstm_1/lstm_cell_2/Add_7AddV2)sequential_1/lstm_1/lstm_cell_2/Mul_4:z:00sequential_1/lstm_1/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
9sequential_1/lstm_1/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?у
7sequential_1/lstm_1/lstm_cell_2/clip_by_value_2/MinimumMinimum)sequential_1/lstm_1/lstm_cell_2/Add_7:z:0Bsequential_1/lstm_1/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2v
1sequential_1/lstm_1/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
/sequential_1/lstm_1/lstm_cell_2/clip_by_value_2Maximum;sequential_1/lstm_1/lstm_cell_2/clip_by_value_2/Minimum:z:0:sequential_1/lstm_1/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&sequential_1/lstm_1/lstm_cell_2/Tanh_1Tanh)sequential_1/lstm_1/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2П
%sequential_1/lstm_1/lstm_cell_2/mul_5Mul3sequential_1/lstm_1/lstm_cell_2/clip_by_value_2:z:0*sequential_1/lstm_1/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
1sequential_1/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   є
#sequential_1/lstm_1/TensorArrayV2_1TensorListReserve:sequential_1/lstm_1/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвZ
sequential_1/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_1/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџh
&sequential_1/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_1/lstm_1/whileWhile/sequential_1/lstm_1/while/loop_counter:output:05sequential_1/lstm_1/while/maximum_iterations:output:0!sequential_1/lstm_1/time:output:0,sequential_1/lstm_1/TensorArrayV2_1:handle:0"sequential_1/lstm_1/zeros:output:0$sequential_1/lstm_1/zeros_1:output:0,sequential_1/lstm_1/strided_slice_1:output:0Ksequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_1_lstm_1_lstm_cell_2_split_readvariableop_resource?sequential_1_lstm_1_lstm_cell_2_split_1_readvariableop_resource7sequential_1_lstm_1_lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_1_lstm_1_while_body_178161*1
cond)R'
%sequential_1_lstm_1_while_cond_178160*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ў
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_1/while:output:3Msequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0|
)sequential_1/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџu
+sequential_1/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_1/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
#sequential_1/lstm_1/strided_slice_3StridedSlice?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_1/strided_slice_3/stack:output:04sequential_1/lstm_1/strided_slice_3/stack_1:output:04sequential_1/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_masky
$sequential_1/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
sequential_1/lstm_1/transpose_1	Transpose?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Й
sequential_1/dense_1/MatMulMatMul,sequential_1/lstm_1/strided_slice_3:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџt
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџї
NoOpNoOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp/^sequential_1/lstm_1/lstm_cell_2/ReadVariableOp1^sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_11^sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_21^sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_35^sequential_1/lstm_1/lstm_cell_2/split/ReadVariableOp7^sequential_1/lstm_1/lstm_cell_2/split_1/ReadVariableOp^sequential_1/lstm_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp2`
.sequential_1/lstm_1/lstm_cell_2/ReadVariableOp.sequential_1/lstm_1/lstm_cell_2/ReadVariableOp2d
0sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_10sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_12d
0sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_20sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_22d
0sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_30sequential_1/lstm_1/lstm_cell_2/ReadVariableOp_32l
4sequential_1/lstm_1/lstm_cell_2/split/ReadVariableOp4sequential_1/lstm_1/lstm_cell_2/split/ReadVariableOp2p
6sequential_1/lstm_1/lstm_cell_2/split_1/ReadVariableOp6sequential_1/lstm_1/lstm_cell_2/split_1/ReadVariableOp26
sequential_1/lstm_1/whilesequential_1/lstm_1/while:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_1_input
Ю"
м
while_body_178453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_2_178477_0:	Ш)
while_lstm_cell_2_178479_0:	Ш-
while_lstm_cell_2_178481_0:	2Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_2_178477:	Ш'
while_lstm_cell_2_178479:	Ш+
while_lstm_cell_2_178481:	2ШЂ)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_178477_0while_lstm_cell_2_178479_0while_lstm_cell_2_178481_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178439л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_178477while_lstm_cell_2_178477_0"6
while_lstm_cell_2_178479while_lstm_cell_2_178479_0"6
while_lstm_cell_2_178481while_lstm_cell_2_178481_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ћ{
	
while_body_180243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	ШB
3while_lstm_cell_2_split_1_readvariableop_resource_0:	Ш>
+while_lstm_cell_2_readvariableop_resource_0:	2Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	Ш@
1while_lstm_cell_2_split_1_readvariableop_resource:	Ш<
)while_lstm_cell_2_readvariableop_resource:	2ШЂ while/lstm_cell_2/ReadVariableOpЂ"while/lstm_cell_2/ReadVariableOp_1Ђ"while/lstm_cell_2/ReadVariableOp_2Ђ"while/lstm_cell_2/ReadVariableOp_3Ђ&while/lstm_cell_2/split/ReadVariableOpЂ(while/lstm_cell_2/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0д
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitЈ
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ъ
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0v
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   x
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/MulMulwhile/lstm_cell_2/add:z:0 while/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_1AddV2while/lstm_cell_2/Mul:z:0"while/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
)while/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Е
'while/lstm_cell_2/clip_by_value/MinimumMinimumwhile/lstm_cell_2/Add_1:z:02while/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
while/lstm_cell_2/clip_by_valueMaximum+while/lstm_cell_2/clip_by_value/Minimum:z:0*while/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   z
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_1Mulwhile/lstm_cell_2/add_2:z:0"while/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_3AddV2while/lstm_cell_2/Mul_1:z:0"while/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_1/MinimumMinimumwhile/lstm_cell_2/Add_3:z:04while/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_1Maximum-while/lstm_cell_2/clip_by_value_1/Minimum:z:0,while/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_2Mul%while/lstm_cell_2/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2m
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_3Mul#while/lstm_cell_2/clip_by_value:z:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_5AddV2while/lstm_cell_2/mul_2:z:0while/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_6AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_4Mulwhile/lstm_cell_2/add_6:z:0"while/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_7AddV2while/lstm_cell_2/Mul_4:z:0"while/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_2/MinimumMinimumwhile/lstm_cell_2/Add_7:z:04while/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_2Maximum-while/lstm_cell_2/clip_by_value_2/Minimum:z:0,while/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_5Mul%while/lstm_cell_2/clip_by_value_2:z:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ф
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_5:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2x
while/Identity_5Identitywhile/lstm_cell_2/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2В

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
єЃ
л
H__inference_sequential_1_layer_call_and_return_conditional_losses_179805

inputsC
0lstm_1_lstm_cell_2_split_readvariableop_resource:	ШA
2lstm_1_lstm_cell_2_split_1_readvariableop_resource:	Ш=
*lstm_1_lstm_cell_2_readvariableop_resource:	2Ш8
&dense_1_matmul_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂ!lstm_1/lstm_cell_2/ReadVariableOpЂ#lstm_1/lstm_cell_2/ReadVariableOp_1Ђ#lstm_1/lstm_cell_2/ReadVariableOp_2Ђ#lstm_1/lstm_cell_2/ReadVariableOp_3Ђ'lstm_1/lstm_cell_2/split/ReadVariableOpЂ)lstm_1/lstm_cell_2/split_1/ReadVariableOpЂlstm_1/whileB
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2t
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: V
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шn
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: W
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2x
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: X
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шt
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: Y
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЩ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ѕ
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвf
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskd
"lstm_1/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'lstm_1/lstm_cell_2/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	Ш*
dtype0з
lstm_1/lstm_cell_2/splitSplit+lstm_1/lstm_cell_2/split/split_dim:output:0/lstm_1/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_split
lstm_1/lstm_cell_2/MatMulMatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/MatMul_1MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/MatMul_2MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/MatMul_3MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2f
$lstm_1/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)lstm_1/lstm_cell_2/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0Э
lstm_1/lstm_cell_2/split_1Split-lstm_1/lstm_cell_2/split_1/split_dim:output:01lstm_1/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splitЁ
lstm_1/lstm_cell_2/BiasAddBiasAdd#lstm_1/lstm_cell_2/MatMul:product:0#lstm_1/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_1/lstm_cell_2/BiasAdd_1BiasAdd%lstm_1/lstm_cell_2/MatMul_1:product:0#lstm_1/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_1/lstm_cell_2/BiasAdd_2BiasAdd%lstm_1/lstm_cell_2/MatMul_2:product:0#lstm_1/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_1/lstm_cell_2/BiasAdd_3BiasAdd%lstm_1/lstm_cell_2/MatMul_3:product:0#lstm_1/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
!lstm_1/lstm_cell_2/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0w
&lstm_1/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_1/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   y
(lstm_1/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
 lstm_1/lstm_cell_2/strided_sliceStridedSlice)lstm_1/lstm_cell_2/ReadVariableOp:value:0/lstm_1/lstm_cell_2/strided_slice/stack:output:01lstm_1/lstm_cell_2/strided_slice/stack_1:output:01lstm_1/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_1/lstm_cell_2/MatMul_4MatMullstm_1/zeros:output:0)lstm_1/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/addAddV2#lstm_1/lstm_cell_2/BiasAdd:output:0%lstm_1/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
lstm_1/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>_
lstm_1/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_1/lstm_cell_2/MulMullstm_1/lstm_cell_2/add:z:0!lstm_1/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/Add_1AddV2lstm_1/lstm_cell_2/Mul:z:0#lstm_1/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
*lstm_1/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?И
(lstm_1/lstm_cell_2/clip_by_value/MinimumMinimumlstm_1/lstm_cell_2/Add_1:z:03lstm_1/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
"lstm_1/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    И
 lstm_1/lstm_cell_2/clip_by_valueMaximum,lstm_1/lstm_cell_2/clip_by_value/Minimum:z:0+lstm_1/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_1/lstm_cell_2/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0y
(lstm_1/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   {
*lstm_1/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   {
*lstm_1/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
"lstm_1/lstm_cell_2/strided_slice_1StridedSlice+lstm_1/lstm_cell_2/ReadVariableOp_1:value:01lstm_1/lstm_cell_2/strided_slice_1/stack:output:03lstm_1/lstm_cell_2/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_1/lstm_cell_2/MatMul_5MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/lstm_cell_2/add_2AddV2%lstm_1/lstm_cell_2/BiasAdd_1:output:0%lstm_1/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_1/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>_
lstm_1/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_1/lstm_cell_2/Mul_1Mullstm_1/lstm_cell_2/add_2:z:0#lstm_1/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/Add_3AddV2lstm_1/lstm_cell_2/Mul_1:z:0#lstm_1/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
,lstm_1/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?М
*lstm_1/lstm_cell_2/clip_by_value_1/MinimumMinimumlstm_1/lstm_cell_2/Add_3:z:05lstm_1/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
$lstm_1/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    О
"lstm_1/lstm_cell_2/clip_by_value_1Maximum.lstm_1/lstm_cell_2/clip_by_value_1/Minimum:z:0-lstm_1/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/mul_2Mul&lstm_1/lstm_cell_2/clip_by_value_1:z:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_1/lstm_cell_2/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0y
(lstm_1/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   {
*lstm_1/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*lstm_1/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
"lstm_1/lstm_cell_2/strided_slice_2StridedSlice+lstm_1/lstm_cell_2/ReadVariableOp_2:value:01lstm_1/lstm_cell_2/strided_slice_2/stack:output:03lstm_1/lstm_cell_2/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_1/lstm_cell_2/MatMul_6MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/lstm_cell_2/add_4AddV2%lstm_1/lstm_cell_2/BiasAdd_2:output:0%lstm_1/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
lstm_1/lstm_cell_2/TanhTanhlstm_1/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/mul_3Mul$lstm_1/lstm_cell_2/clip_by_value:z:0lstm_1/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/add_5AddV2lstm_1/lstm_cell_2/mul_2:z:0lstm_1/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_1/lstm_cell_2/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0y
(lstm_1/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*lstm_1/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_1/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
"lstm_1/lstm_cell_2/strided_slice_3StridedSlice+lstm_1/lstm_cell_2/ReadVariableOp_3:value:01lstm_1/lstm_cell_2/strided_slice_3/stack:output:03lstm_1/lstm_cell_2/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_1/lstm_cell_2/MatMul_7MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/lstm_cell_2/add_6AddV2%lstm_1/lstm_cell_2/BiasAdd_3:output:0%lstm_1/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_1/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>_
lstm_1/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_1/lstm_cell_2/Mul_4Mullstm_1/lstm_cell_2/add_6:z:0#lstm_1/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/Add_7AddV2lstm_1/lstm_cell_2/Mul_4:z:0#lstm_1/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
,lstm_1/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?М
*lstm_1/lstm_cell_2/clip_by_value_2/MinimumMinimumlstm_1/lstm_cell_2/Add_7:z:05lstm_1/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
$lstm_1/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    О
"lstm_1/lstm_cell_2/clip_by_value_2Maximum.lstm_1/lstm_cell_2/clip_by_value_2/Minimum:z:0-lstm_1/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
lstm_1/lstm_cell_2/Tanh_1Tanhlstm_1/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/mul_5Mul&lstm_1/lstm_cell_2/clip_by_value_2:z:0lstm_1/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2u
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Э
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвM
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ[
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : з
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_2_split_readvariableop_resource2lstm_1_lstm_cell_2_split_1_readvariableop_resource*lstm_1_lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_1_while_body_179659*$
condR
lstm_1_while_cond_179658*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   з
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџh
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_1/MatMulMatMullstm_1/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp"^lstm_1/lstm_cell_2/ReadVariableOp$^lstm_1/lstm_cell_2/ReadVariableOp_1$^lstm_1/lstm_cell_2/ReadVariableOp_2$^lstm_1/lstm_cell_2/ReadVariableOp_3(^lstm_1/lstm_cell_2/split/ReadVariableOp*^lstm_1/lstm_cell_2/split_1/ReadVariableOp^lstm_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2F
!lstm_1/lstm_cell_2/ReadVariableOp!lstm_1/lstm_cell_2/ReadVariableOp2J
#lstm_1/lstm_cell_2/ReadVariableOp_1#lstm_1/lstm_cell_2/ReadVariableOp_12J
#lstm_1/lstm_cell_2/ReadVariableOp_2#lstm_1/lstm_cell_2/ReadVariableOp_22J
#lstm_1/lstm_cell_2/ReadVariableOp_3#lstm_1/lstm_cell_2/ReadVariableOp_32R
'lstm_1/lstm_cell_2/split/ReadVariableOp'lstm_1/lstm_cell_2/split/ReadVariableOp2V
)lstm_1/lstm_cell_2/split_1/ReadVariableOp)lstm_1/lstm_cell_2/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ	
Я
lstm_1_while_cond_179658*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_179658___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_179658___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_179658___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_179658___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ы

lstm_1_while_body_179659*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_1_while_lstm_cell_2_split_readvariableop_resource_0:	ШI
:lstm_1_while_lstm_cell_2_split_1_readvariableop_resource_0:	ШE
2lstm_1_while_lstm_cell_2_readvariableop_resource_0:	2Ш
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorI
6lstm_1_while_lstm_cell_2_split_readvariableop_resource:	ШG
8lstm_1_while_lstm_cell_2_split_1_readvariableop_resource:	ШC
0lstm_1_while_lstm_cell_2_readvariableop_resource:	2ШЂ'lstm_1/while/lstm_cell_2/ReadVariableOpЂ)lstm_1/while/lstm_cell_2/ReadVariableOp_1Ђ)lstm_1/while/lstm_cell_2/ReadVariableOp_2Ђ)lstm_1/while/lstm_cell_2/ReadVariableOp_3Ђ-lstm_1/while/lstm_cell_2/split/ReadVariableOpЂ/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Щ
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0j
(lstm_1/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
-lstm_1/while/lstm_cell_2/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0щ
lstm_1/while/lstm_cell_2/splitSplit1lstm_1/while/lstm_cell_2/split/split_dim:output:05lstm_1/while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitН
lstm_1/while/lstm_cell_2/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2П
!lstm_1/while/lstm_cell_2/MatMul_1MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2П
!lstm_1/while/lstm_cell_2/MatMul_2MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2П
!lstm_1/while/lstm_cell_2/MatMul_3MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2l
*lstm_1/while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ї
/lstm_1/while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0п
 lstm_1/while/lstm_cell_2/split_1Split3lstm_1/while/lstm_cell_2/split_1/split_dim:output:07lstm_1/while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splitГ
 lstm_1/while/lstm_cell_2/BiasAddBiasAdd)lstm_1/while/lstm_cell_2/MatMul:product:0)lstm_1/while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
"lstm_1/while/lstm_cell_2/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_2/MatMul_1:product:0)lstm_1/while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2З
"lstm_1/while/lstm_cell_2/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_2/MatMul_2:product:0)lstm_1/while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2З
"lstm_1/while/lstm_cell_2/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_2/MatMul_3:product:0)lstm_1/while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
'lstm_1/while/lstm_cell_2/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0}
,lstm_1/while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.lstm_1/while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   
.lstm_1/while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
&lstm_1/while/lstm_cell_2/strided_sliceStridedSlice/lstm_1/while/lstm_cell_2/ReadVariableOp:value:05lstm_1/while/lstm_cell_2/strided_slice/stack:output:07lstm_1/while/lstm_cell_2/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskЊ
!lstm_1/while/lstm_cell_2/MatMul_4MatMullstm_1_while_placeholder_2/lstm_1/while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Џ
lstm_1/while/lstm_cell_2/addAddV2)lstm_1/while/lstm_cell_2/BiasAdd:output:0+lstm_1/while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm_1/while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>e
 lstm_1/while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ? 
lstm_1/while/lstm_cell_2/MulMul lstm_1/while/lstm_cell_2/add:z:0'lstm_1/while/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
lstm_1/while/lstm_cell_2/Add_1AddV2 lstm_1/while/lstm_cell_2/Mul:z:0)lstm_1/while/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2u
0lstm_1/while/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ъ
.lstm_1/while/lstm_cell_2/clip_by_value/MinimumMinimum"lstm_1/while/lstm_cell_2/Add_1:z:09lstm_1/while/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2m
(lstm_1/while/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
&lstm_1/while/lstm_cell_2/clip_by_valueMaximum2lstm_1/while/lstm_cell_2/clip_by_value/Minimum:z:01lstm_1/while/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
)lstm_1/while/lstm_cell_2/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
.lstm_1/while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   
0lstm_1/while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   
0lstm_1/while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ђ
(lstm_1/while/lstm_cell_2/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_2/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_2/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_2/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskЌ
!lstm_1/while/lstm_cell_2/MatMul_5MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Г
lstm_1/while/lstm_cell_2/add_2AddV2+lstm_1/while/lstm_cell_2/BiasAdd_1:output:0+lstm_1/while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2e
 lstm_1/while/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>e
 lstm_1/while/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
lstm_1/while/lstm_cell_2/Mul_1Mul"lstm_1/while/lstm_cell_2/add_2:z:0)lstm_1/while/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
lstm_1/while/lstm_cell_2/Add_3AddV2"lstm_1/while/lstm_cell_2/Mul_1:z:0)lstm_1/while/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
2lstm_1/while/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ю
0lstm_1/while/lstm_cell_2/clip_by_value_1/MinimumMinimum"lstm_1/while/lstm_cell_2/Add_3:z:0;lstm_1/while/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
*lstm_1/while/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    а
(lstm_1/while/lstm_cell_2/clip_by_value_1Maximum4lstm_1/while/lstm_cell_2/clip_by_value_1/Minimum:z:03lstm_1/while/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/while/lstm_cell_2/mul_2Mul,lstm_1/while/lstm_cell_2/clip_by_value_1:z:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
)lstm_1/while/lstm_cell_2/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
.lstm_1/while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   
0lstm_1/while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
0lstm_1/while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ђ
(lstm_1/while/lstm_cell_2/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_2/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_2/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_2/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskЌ
!lstm_1/while/lstm_cell_2/MatMul_6MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Г
lstm_1/while/lstm_cell_2/add_4AddV2+lstm_1/while/lstm_cell_2/BiasAdd_2:output:0+lstm_1/while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_1/while/lstm_cell_2/TanhTanh"lstm_1/while/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
lstm_1/while/lstm_cell_2/mul_3Mul*lstm_1/while/lstm_cell_2/clip_by_value:z:0!lstm_1/while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/while/lstm_cell_2/add_5AddV2"lstm_1/while/lstm_cell_2/mul_2:z:0"lstm_1/while/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
)lstm_1/while/lstm_cell_2/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
.lstm_1/while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       
0lstm_1/while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
0lstm_1/while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ђ
(lstm_1/while/lstm_cell_2/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_2/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_2/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_2/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskЌ
!lstm_1/while/lstm_cell_2/MatMul_7MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Г
lstm_1/while/lstm_cell_2/add_6AddV2+lstm_1/while/lstm_cell_2/BiasAdd_3:output:0+lstm_1/while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2e
 lstm_1/while/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>e
 lstm_1/while/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
lstm_1/while/lstm_cell_2/Mul_4Mul"lstm_1/while/lstm_cell_2/add_6:z:0)lstm_1/while/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
lstm_1/while/lstm_cell_2/Add_7AddV2"lstm_1/while/lstm_cell_2/Mul_4:z:0)lstm_1/while/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
2lstm_1/while/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ю
0lstm_1/while/lstm_cell_2/clip_by_value_2/MinimumMinimum"lstm_1/while/lstm_cell_2/Add_7:z:0;lstm_1/while/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
*lstm_1/while/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    а
(lstm_1/while/lstm_cell_2/clip_by_value_2Maximum4lstm_1/while/lstm_cell_2/clip_by_value_2/Minimum:z:03lstm_1/while/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm_1/while/lstm_cell_2/Tanh_1Tanh"lstm_1/while/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
lstm_1/while/lstm_cell_2/mul_5Mul,lstm_1/while/lstm_cell_2/clip_by_value_2:z:0#lstm_1/while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2р
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_2/mul_5:z:0*
_output_shapes
: *
element_dtype0:щшвT
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: 
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: 
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: 
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_2/mul_5:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_2/add_5:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2у
lstm_1/while/NoOpNoOp(^lstm_1/while/lstm_cell_2/ReadVariableOp*^lstm_1/while/lstm_cell_2/ReadVariableOp_1*^lstm_1/while/lstm_cell_2/ReadVariableOp_2*^lstm_1/while/lstm_cell_2/ReadVariableOp_3.^lstm_1/while/lstm_cell_2/split/ReadVariableOp0^lstm_1/while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_2_readvariableop_resource2lstm_1_while_lstm_cell_2_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_2_split_1_readvariableop_resource:lstm_1_while_lstm_cell_2_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_2_split_readvariableop_resource8lstm_1_while_lstm_cell_2_split_readvariableop_resource_0"Ф
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2R
'lstm_1/while/lstm_cell_2/ReadVariableOp'lstm_1/while/lstm_cell_2/ReadVariableOp2V
)lstm_1/while/lstm_cell_2/ReadVariableOp_1)lstm_1/while/lstm_cell_2/ReadVariableOp_12V
)lstm_1/while/lstm_cell_2/ReadVariableOp_2)lstm_1/while/lstm_cell_2/ReadVariableOp_22V
)lstm_1/while/lstm_cell_2/ReadVariableOp_3)lstm_1/while/lstm_cell_2/ReadVariableOp_32^
-lstm_1/while/lstm_cell_2/split/ReadVariableOp-lstm_1/while/lstm_cell_2/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
єЃ
л
H__inference_sequential_1_layer_call_and_return_conditional_losses_180075

inputsC
0lstm_1_lstm_cell_2_split_readvariableop_resource:	ШA
2lstm_1_lstm_cell_2_split_1_readvariableop_resource:	Ш=
*lstm_1_lstm_cell_2_readvariableop_resource:	2Ш8
&dense_1_matmul_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂ!lstm_1/lstm_cell_2/ReadVariableOpЂ#lstm_1/lstm_cell_2/ReadVariableOp_1Ђ#lstm_1/lstm_cell_2/ReadVariableOp_2Ђ#lstm_1/lstm_cell_2/ReadVariableOp_3Ђ'lstm_1/lstm_cell_2/split/ReadVariableOpЂ)lstm_1/lstm_cell_2/split_1/ReadVariableOpЂlstm_1/whileB
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2t
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: V
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шn
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: W
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2x
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: X
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шt
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: Y
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЩ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ѕ
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвf
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskd
"lstm_1/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'lstm_1/lstm_cell_2/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	Ш*
dtype0з
lstm_1/lstm_cell_2/splitSplit+lstm_1/lstm_cell_2/split/split_dim:output:0/lstm_1/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_split
lstm_1/lstm_cell_2/MatMulMatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/MatMul_1MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/MatMul_2MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/MatMul_3MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2f
$lstm_1/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)lstm_1/lstm_cell_2/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0Э
lstm_1/lstm_cell_2/split_1Split-lstm_1/lstm_cell_2/split_1/split_dim:output:01lstm_1/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splitЁ
lstm_1/lstm_cell_2/BiasAddBiasAdd#lstm_1/lstm_cell_2/MatMul:product:0#lstm_1/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_1/lstm_cell_2/BiasAdd_1BiasAdd%lstm_1/lstm_cell_2/MatMul_1:product:0#lstm_1/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_1/lstm_cell_2/BiasAdd_2BiasAdd%lstm_1/lstm_cell_2/MatMul_2:product:0#lstm_1/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_1/lstm_cell_2/BiasAdd_3BiasAdd%lstm_1/lstm_cell_2/MatMul_3:product:0#lstm_1/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
!lstm_1/lstm_cell_2/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0w
&lstm_1/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_1/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   y
(lstm_1/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
 lstm_1/lstm_cell_2/strided_sliceStridedSlice)lstm_1/lstm_cell_2/ReadVariableOp:value:0/lstm_1/lstm_cell_2/strided_slice/stack:output:01lstm_1/lstm_cell_2/strided_slice/stack_1:output:01lstm_1/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_1/lstm_cell_2/MatMul_4MatMullstm_1/zeros:output:0)lstm_1/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/addAddV2#lstm_1/lstm_cell_2/BiasAdd:output:0%lstm_1/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
lstm_1/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>_
lstm_1/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_1/lstm_cell_2/MulMullstm_1/lstm_cell_2/add:z:0!lstm_1/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/Add_1AddV2lstm_1/lstm_cell_2/Mul:z:0#lstm_1/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
*lstm_1/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?И
(lstm_1/lstm_cell_2/clip_by_value/MinimumMinimumlstm_1/lstm_cell_2/Add_1:z:03lstm_1/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
"lstm_1/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    И
 lstm_1/lstm_cell_2/clip_by_valueMaximum,lstm_1/lstm_cell_2/clip_by_value/Minimum:z:0+lstm_1/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_1/lstm_cell_2/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0y
(lstm_1/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   {
*lstm_1/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   {
*lstm_1/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
"lstm_1/lstm_cell_2/strided_slice_1StridedSlice+lstm_1/lstm_cell_2/ReadVariableOp_1:value:01lstm_1/lstm_cell_2/strided_slice_1/stack:output:03lstm_1/lstm_cell_2/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_1/lstm_cell_2/MatMul_5MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/lstm_cell_2/add_2AddV2%lstm_1/lstm_cell_2/BiasAdd_1:output:0%lstm_1/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_1/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>_
lstm_1/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_1/lstm_cell_2/Mul_1Mullstm_1/lstm_cell_2/add_2:z:0#lstm_1/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/Add_3AddV2lstm_1/lstm_cell_2/Mul_1:z:0#lstm_1/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
,lstm_1/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?М
*lstm_1/lstm_cell_2/clip_by_value_1/MinimumMinimumlstm_1/lstm_cell_2/Add_3:z:05lstm_1/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
$lstm_1/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    О
"lstm_1/lstm_cell_2/clip_by_value_1Maximum.lstm_1/lstm_cell_2/clip_by_value_1/Minimum:z:0-lstm_1/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/mul_2Mul&lstm_1/lstm_cell_2/clip_by_value_1:z:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_1/lstm_cell_2/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0y
(lstm_1/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   {
*lstm_1/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*lstm_1/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
"lstm_1/lstm_cell_2/strided_slice_2StridedSlice+lstm_1/lstm_cell_2/ReadVariableOp_2:value:01lstm_1/lstm_cell_2/strided_slice_2/stack:output:03lstm_1/lstm_cell_2/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_1/lstm_cell_2/MatMul_6MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/lstm_cell_2/add_4AddV2%lstm_1/lstm_cell_2/BiasAdd_2:output:0%lstm_1/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
lstm_1/lstm_cell_2/TanhTanhlstm_1/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/mul_3Mul$lstm_1/lstm_cell_2/clip_by_value:z:0lstm_1/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/add_5AddV2lstm_1/lstm_cell_2/mul_2:z:0lstm_1/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_1/lstm_cell_2/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0y
(lstm_1/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*lstm_1/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_1/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
"lstm_1/lstm_cell_2/strided_slice_3StridedSlice+lstm_1/lstm_cell_2/ReadVariableOp_3:value:01lstm_1/lstm_cell_2/strided_slice_3/stack:output:03lstm_1/lstm_cell_2/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_1/lstm_cell_2/MatMul_7MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/lstm_cell_2/add_6AddV2%lstm_1/lstm_cell_2/BiasAdd_3:output:0%lstm_1/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_1/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>_
lstm_1/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_1/lstm_cell_2/Mul_4Mullstm_1/lstm_cell_2/add_6:z:0#lstm_1/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/Add_7AddV2lstm_1/lstm_cell_2/Mul_4:z:0#lstm_1/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
,lstm_1/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?М
*lstm_1/lstm_cell_2/clip_by_value_2/MinimumMinimumlstm_1/lstm_cell_2/Add_7:z:05lstm_1/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
$lstm_1/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    О
"lstm_1/lstm_cell_2/clip_by_value_2Maximum.lstm_1/lstm_cell_2/clip_by_value_2/Minimum:z:0-lstm_1/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
lstm_1/lstm_cell_2/Tanh_1Tanhlstm_1/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_2/mul_5Mul&lstm_1/lstm_cell_2/clip_by_value_2:z:0lstm_1/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2u
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Э
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвM
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ[
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : з
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_2_split_readvariableop_resource2lstm_1_lstm_cell_2_split_1_readvariableop_resource*lstm_1_lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_1_while_body_179929*$
condR
lstm_1_while_cond_179928*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   з
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџh
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_1/MatMulMatMullstm_1/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp"^lstm_1/lstm_cell_2/ReadVariableOp$^lstm_1/lstm_cell_2/ReadVariableOp_1$^lstm_1/lstm_cell_2/ReadVariableOp_2$^lstm_1/lstm_cell_2/ReadVariableOp_3(^lstm_1/lstm_cell_2/split/ReadVariableOp*^lstm_1/lstm_cell_2/split_1/ReadVariableOp^lstm_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2F
!lstm_1/lstm_cell_2/ReadVariableOp!lstm_1/lstm_cell_2/ReadVariableOp2J
#lstm_1/lstm_cell_2/ReadVariableOp_1#lstm_1/lstm_cell_2/ReadVariableOp_12J
#lstm_1/lstm_cell_2/ReadVariableOp_2#lstm_1/lstm_cell_2/ReadVariableOp_22J
#lstm_1/lstm_cell_2/ReadVariableOp_3#lstm_1/lstm_cell_2/ReadVariableOp_32R
'lstm_1/lstm_cell_2/split/ReadVariableOp'lstm_1/lstm_cell_2/split/ReadVariableOp2V
)lstm_1/lstm_cell_2/split_1/ReadVariableOp)lstm_1/lstm_cell_2/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_178452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178452___redundant_placeholder04
0while_while_cond_178452___redundant_placeholder14
0while_while_cond_178452___redundant_placeholder24
0while_while_cond_178452___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ц	
є
C__inference_dense_1_layer_call_and_return_conditional_losses_181194

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ЗJ
Ј
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178641

inputs

states
states_10
split_readvariableop_resource:	Ш.
split_1_readvariableop_resource:	Ш*
readvariableop_resource:	2Ш
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskd
MatMul_4MatMulstatesstrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskf
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskf
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2I
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskf
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2K
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
Ь
в
H__inference_sequential_1_layer_call_and_return_conditional_losses_179466
lstm_1_input 
lstm_1_179453:	Ш
lstm_1_179455:	Ш 
lstm_1_179457:	2Ш 
dense_1_179460:2
dense_1_179462:
identityЂdense_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallџ
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_179453lstm_1_179455lstm_1_179457*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_179055
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_179460dense_1_179462*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_179073w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_1_input
щ
ѕ
,__inference_lstm_cell_2_layer_call_fn_181211

inputs
states_0
states_1
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178439o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
Е
У
while_cond_179239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_179239___redundant_placeholder04
0while_while_cond_179239___redundant_placeholder14
0while_while_cond_179239___redundant_placeholder24
0while_while_cond_179239___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ч<

B__inference_lstm_1_layer_call_and_return_conditional_losses_178521

inputs%
lstm_cell_2_178440:	Ш!
lstm_cell_2_178442:	Ш%
lstm_cell_2_178444:	2Ш
identityЂ#lstm_cell_2/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask№
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_178440lstm_cell_2_178442lstm_cell_2_178444*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178439n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Д
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_178440lstm_cell_2_178442lstm_cell_2_178444*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_178453*
condR
while_cond_178452*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ѕ
Д
'__inference_lstm_1_layer_call_fn_180119

inputs
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_179380o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
п
B__inference_lstm_1_layer_call_and_return_conditional_losses_180383
inputs_0<
)lstm_cell_2_split_readvariableop_resource:	Ш:
+lstm_cell_2_split_1_readvariableop_resource:	Ш6
#lstm_cell_2_readvariableop_resource:	2Ш
identityЂlstm_cell_2/ReadVariableOpЂlstm_cell_2/ReadVariableOp_1Ђlstm_cell_2/ReadVariableOp_2Ђlstm_cell_2/ReadVariableOp_3Ђ lstm_cell_2/split/ReadVariableOpЂ"lstm_cell_2/split_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	Ш*
dtype0Т
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_split
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0И
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   r
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_4MatMulzeros:output:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_2/MulMullstm_cell_2/add:z:0lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_1AddV2lstm_cell_2/Mul:z:0lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ѓ
!lstm_cell_2/clip_by_value/MinimumMinimumlstm_cell_2/Add_1:z:0,lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
lstm_cell_2/clip_by_valueMaximum%lstm_cell_2/clip_by_value/Minimum:z:0$lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   t
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_5MatMulzeros:output:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_1Mullstm_cell_2/add_2:z:0lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_3AddV2lstm_cell_2/Mul_1:z:0lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_1/MinimumMinimumlstm_cell_2/Add_3:z:0.lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_1Maximum'lstm_cell_2/clip_by_value_1/Minimum:z:0&lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm_cell_2/mul_2Mullstm_cell_2/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_6MatMulzeros:output:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
lstm_cell_2/TanhTanhlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_3Mullstm_cell_2/clip_by_value:z:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_cell_2/add_5AddV2lstm_cell_2/mul_2:z:0lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_7MatMulzeros:output:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_6AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_4Mullstm_cell_2/add_6:z:0lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_7AddV2lstm_cell_2/Mul_4:z:0lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_2/MinimumMinimumlstm_cell_2/Add_7:z:0.lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_2Maximum'lstm_cell_2/clip_by_value_2/Minimum:z:0&lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_5Mullstm_cell_2/clip_by_value_2:z:0lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѕ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_180243*
condR
while_cond_180242*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Е
У
while_cond_178914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178914___redundant_placeholder04
0while_while_cond_178914___redundant_placeholder14
0while_while_cond_178914___redundant_placeholder24
0while_while_cond_178914___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
е
№
-__inference_sequential_1_layer_call_fn_179520

inputs
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_179080o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ХJ
Њ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_181406

inputs
states_0
states_10
split_readvariableop_resource:	Ш.
split_1_readvariableop_resource:	Ш*
readvariableop_resource:	2Ш
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskf
MatMul_4MatMulstates_0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskh
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskh
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2I
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskh
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2K
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
Ћ{
	
while_body_180771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	ШB
3while_lstm_cell_2_split_1_readvariableop_resource_0:	Ш>
+while_lstm_cell_2_readvariableop_resource_0:	2Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	Ш@
1while_lstm_cell_2_split_1_readvariableop_resource:	Ш<
)while_lstm_cell_2_readvariableop_resource:	2ШЂ while/lstm_cell_2/ReadVariableOpЂ"while/lstm_cell_2/ReadVariableOp_1Ђ"while/lstm_cell_2/ReadVariableOp_2Ђ"while/lstm_cell_2/ReadVariableOp_3Ђ&while/lstm_cell_2/split/ReadVariableOpЂ(while/lstm_cell_2/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0д
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitЈ
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ъ
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0v
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   x
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/MulMulwhile/lstm_cell_2/add:z:0 while/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_1AddV2while/lstm_cell_2/Mul:z:0"while/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
)while/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Е
'while/lstm_cell_2/clip_by_value/MinimumMinimumwhile/lstm_cell_2/Add_1:z:02while/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
while/lstm_cell_2/clip_by_valueMaximum+while/lstm_cell_2/clip_by_value/Minimum:z:0*while/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   z
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_1Mulwhile/lstm_cell_2/add_2:z:0"while/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_3AddV2while/lstm_cell_2/Mul_1:z:0"while/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_1/MinimumMinimumwhile/lstm_cell_2/Add_3:z:04while/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_1Maximum-while/lstm_cell_2/clip_by_value_1/Minimum:z:0,while/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_2Mul%while/lstm_cell_2/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2m
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_3Mul#while/lstm_cell_2/clip_by_value:z:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_5AddV2while/lstm_cell_2/mul_2:z:0while/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_6AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_4Mulwhile/lstm_cell_2/add_6:z:0"while/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_7AddV2while/lstm_cell_2/Mul_4:z:0"while/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_2/MinimumMinimumwhile/lstm_cell_2/Add_7:z:04while/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_2Maximum-while/lstm_cell_2/clip_by_value_2/Minimum:z:0,while/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_5Mul%while/lstm_cell_2/clip_by_value_2:z:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ф
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_5:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2x
while/Identity_5Identitywhile/lstm_cell_2/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2В

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ц
г
%sequential_1_lstm_1_while_cond_178160D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3F
Bsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_178160___redundant_placeholder0\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_178160___redundant_placeholder1\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_178160___redundant_placeholder2\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_178160___redundant_placeholder3&
"sequential_1_lstm_1_while_identity
В
sequential_1/lstm_1/while/LessLess%sequential_1_lstm_1_while_placeholderBsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1*
T0*
_output_shapes
: s
"sequential_1/lstm_1/while/IdentityIdentity"sequential_1/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ѕ
н
B__inference_lstm_1_layer_call_and_return_conditional_losses_179380

inputs<
)lstm_cell_2_split_readvariableop_resource:	Ш:
+lstm_cell_2_split_1_readvariableop_resource:	Ш6
#lstm_cell_2_readvariableop_resource:	2Ш
identityЂlstm_cell_2/ReadVariableOpЂlstm_cell_2/ReadVariableOp_1Ђlstm_cell_2/ReadVariableOp_2Ђlstm_cell_2/ReadVariableOp_3Ђ lstm_cell_2/split/ReadVariableOpЂ"lstm_cell_2/split_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	Ш*
dtype0Т
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_split
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0И
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   r
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_4MatMulzeros:output:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_2/MulMullstm_cell_2/add:z:0lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_1AddV2lstm_cell_2/Mul:z:0lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ѓ
!lstm_cell_2/clip_by_value/MinimumMinimumlstm_cell_2/Add_1:z:0,lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
lstm_cell_2/clip_by_valueMaximum%lstm_cell_2/clip_by_value/Minimum:z:0$lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   t
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_5MatMulzeros:output:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_1Mullstm_cell_2/add_2:z:0lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_3AddV2lstm_cell_2/Mul_1:z:0lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_1/MinimumMinimumlstm_cell_2/Add_3:z:0.lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_1Maximum'lstm_cell_2/clip_by_value_1/Minimum:z:0&lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm_cell_2/mul_2Mullstm_cell_2/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_6MatMulzeros:output:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
lstm_cell_2/TanhTanhlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_3Mullstm_cell_2/clip_by_value:z:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_cell_2/add_5AddV2lstm_cell_2/mul_2:z:0lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_7MatMulzeros:output:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_6AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_4Mullstm_cell_2/add_6:z:0lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_7AddV2lstm_cell_2/Mul_4:z:0lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_2/MinimumMinimumlstm_cell_2/Add_7:z:0.lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_2Maximum'lstm_cell_2/clip_by_value_2/Minimum:z:0&lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_5Mullstm_cell_2/clip_by_value_2:z:0lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѕ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_179240*
condR
while_cond_179239*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѕ
н
B__inference_lstm_1_layer_call_and_return_conditional_losses_179055

inputs<
)lstm_cell_2_split_readvariableop_resource:	Ш:
+lstm_cell_2_split_1_readvariableop_resource:	Ш6
#lstm_cell_2_readvariableop_resource:	2Ш
identityЂlstm_cell_2/ReadVariableOpЂlstm_cell_2/ReadVariableOp_1Ђlstm_cell_2/ReadVariableOp_2Ђlstm_cell_2/ReadVariableOp_3Ђ lstm_cell_2/split/ReadVariableOpЂ"lstm_cell_2/split_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	Ш*
dtype0Т
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_split
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0И
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   r
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_4MatMulzeros:output:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_2/MulMullstm_cell_2/add:z:0lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_1AddV2lstm_cell_2/Mul:z:0lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ѓ
!lstm_cell_2/clip_by_value/MinimumMinimumlstm_cell_2/Add_1:z:0,lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
lstm_cell_2/clip_by_valueMaximum%lstm_cell_2/clip_by_value/Minimum:z:0$lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   t
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_5MatMulzeros:output:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_1Mullstm_cell_2/add_2:z:0lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_3AddV2lstm_cell_2/Mul_1:z:0lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_1/MinimumMinimumlstm_cell_2/Add_3:z:0.lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_1Maximum'lstm_cell_2/clip_by_value_1/Minimum:z:0&lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm_cell_2/mul_2Mullstm_cell_2/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_6MatMulzeros:output:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
lstm_cell_2/TanhTanhlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_3Mullstm_cell_2/clip_by_value:z:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_cell_2/add_5AddV2lstm_cell_2/mul_2:z:0lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_7MatMulzeros:output:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_6AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_4Mullstm_cell_2/add_6:z:0lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_7AddV2lstm_cell_2/Mul_4:z:0lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_2/MinimumMinimumlstm_cell_2/Add_7:z:0.lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_2Maximum'lstm_cell_2/clip_by_value_2/Minimum:z:0&lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_5Mullstm_cell_2/clip_by_value_2:z:0lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѕ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_178915*
condR
while_cond_178914*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ч
і
-__inference_sequential_1_layer_call_fn_179450
lstm_1_input
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_179422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_1_input
ѕ
н
B__inference_lstm_1_layer_call_and_return_conditional_losses_180911

inputs<
)lstm_cell_2_split_readvariableop_resource:	Ш:
+lstm_cell_2_split_1_readvariableop_resource:	Ш6
#lstm_cell_2_readvariableop_resource:	2Ш
identityЂlstm_cell_2/ReadVariableOpЂlstm_cell_2/ReadVariableOp_1Ђlstm_cell_2/ReadVariableOp_2Ђlstm_cell_2/ReadVariableOp_3Ђ lstm_cell_2/split/ReadVariableOpЂ"lstm_cell_2/split_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	Ш*
dtype0Т
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_split
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0И
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   r
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_4MatMulzeros:output:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_2/MulMullstm_cell_2/add:z:0lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_1AddV2lstm_cell_2/Mul:z:0lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ѓ
!lstm_cell_2/clip_by_value/MinimumMinimumlstm_cell_2/Add_1:z:0,lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
lstm_cell_2/clip_by_valueMaximum%lstm_cell_2/clip_by_value/Minimum:z:0$lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   t
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_5MatMulzeros:output:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_1Mullstm_cell_2/add_2:z:0lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_3AddV2lstm_cell_2/Mul_1:z:0lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_1/MinimumMinimumlstm_cell_2/Add_3:z:0.lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_1Maximum'lstm_cell_2/clip_by_value_1/Minimum:z:0&lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm_cell_2/mul_2Mullstm_cell_2/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_6MatMulzeros:output:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
lstm_cell_2/TanhTanhlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_3Mullstm_cell_2/clip_by_value:z:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_cell_2/add_5AddV2lstm_cell_2/mul_2:z:0lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_7MatMulzeros:output:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_6AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_4Mullstm_cell_2/add_6:z:0lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_7AddV2lstm_cell_2/Mul_4:z:0lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_2/MinimumMinimumlstm_cell_2/Add_7:z:0.lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_2Maximum'lstm_cell_2/clip_by_value_2/Minimum:z:0&lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_5Mullstm_cell_2/clip_by_value_2:z:0lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѕ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_180771*
condR
while_cond_180770*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
З
э
$__inference_signature_wrapper_179505
lstm_1_input
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_178307o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_1_input
§4


__inference__traced_save_181495
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_1_lstm_cell_2_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_2_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_2_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_2_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_2_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_2_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_2_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_2_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ѕ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ю

valueФ
BС
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_1_lstm_cell_2_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_2_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_2_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_2_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_2_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop;savev2_adam_lstm_1_lstm_cell_2_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_2_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ў
_input_shapes
: :2:: : : : : :	Ш:	2Ш:Ш: : :2::	Ш:	2Ш:Ш:2::	Ш:	2Ш:Ш: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ш:%	!

_output_shapes
:	2Ш:!


_output_shapes	
:Ш:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	Ш:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	Ш:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:

_output_shapes
: 
ЗJ
Ј
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178439

inputs

states
states_10
split_readvariableop_resource:	Ш.
split_1_readvariableop_resource:	Ш*
readvariableop_resource:	2Ш
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskd
MatMul_4MatMulstatesstrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskf
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskf
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2I
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskf
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2K
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
Њ
п
B__inference_lstm_1_layer_call_and_return_conditional_losses_180647
inputs_0<
)lstm_cell_2_split_readvariableop_resource:	Ш:
+lstm_cell_2_split_1_readvariableop_resource:	Ш6
#lstm_cell_2_readvariableop_resource:	2Ш
identityЂlstm_cell_2/ReadVariableOpЂlstm_cell_2/ReadVariableOp_1Ђlstm_cell_2/ReadVariableOp_2Ђlstm_cell_2/ReadVariableOp_3Ђ lstm_cell_2/split/ReadVariableOpЂ"lstm_cell_2/split_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	Ш*
dtype0Т
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_split
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0И
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   r
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_4MatMulzeros:output:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_2/MulMullstm_cell_2/add:z:0lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_1AddV2lstm_cell_2/Mul:z:0lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ѓ
!lstm_cell_2/clip_by_value/MinimumMinimumlstm_cell_2/Add_1:z:0,lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
lstm_cell_2/clip_by_valueMaximum%lstm_cell_2/clip_by_value/Minimum:z:0$lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   t
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_5MatMulzeros:output:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_1Mullstm_cell_2/add_2:z:0lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_3AddV2lstm_cell_2/Mul_1:z:0lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_1/MinimumMinimumlstm_cell_2/Add_3:z:0.lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_1Maximum'lstm_cell_2/clip_by_value_1/Minimum:z:0&lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm_cell_2/mul_2Mullstm_cell_2/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_6MatMulzeros:output:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
lstm_cell_2/TanhTanhlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_3Mullstm_cell_2/clip_by_value:z:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_cell_2/add_5AddV2lstm_cell_2/mul_2:z:0lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_7MatMulzeros:output:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_6AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_4Mullstm_cell_2/add_6:z:0lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_7AddV2lstm_cell_2/Mul_4:z:0lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_2/MinimumMinimumlstm_cell_2/Add_7:z:0.lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_2Maximum'lstm_cell_2/clip_by_value_2/Minimum:z:0&lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_5Mullstm_cell_2/clip_by_value_2:z:0lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѕ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_180507*
condR
while_cond_180506*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Ц	
є
C__inference_dense_1_layer_call_and_return_conditional_losses_179073

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ѕ
н
B__inference_lstm_1_layer_call_and_return_conditional_losses_181175

inputs<
)lstm_cell_2_split_readvariableop_resource:	Ш:
+lstm_cell_2_split_1_readvariableop_resource:	Ш6
#lstm_cell_2_readvariableop_resource:	2Ш
identityЂlstm_cell_2/ReadVariableOpЂlstm_cell_2/ReadVariableOp_1Ђlstm_cell_2/ReadVariableOp_2Ђlstm_cell_2/ReadVariableOp_3Ђ lstm_cell_2/split/ReadVariableOpЂ"lstm_cell_2/split_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	Ш*
dtype0Т
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_split
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2_
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0И
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   r
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_4MatMulzeros:output:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_2/MulMullstm_cell_2/add:z:0lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_1AddV2lstm_cell_2/Mul:z:0lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ѓ
!lstm_cell_2/clip_by_value/MinimumMinimumlstm_cell_2/Add_1:z:0,lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
lstm_cell_2/clip_by_valueMaximum%lstm_cell_2/clip_by_value/Minimum:z:0$lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   t
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_5MatMulzeros:output:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_1Mullstm_cell_2/add_2:z:0lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_3AddV2lstm_cell_2/Mul_1:z:0lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_1/MinimumMinimumlstm_cell_2/Add_3:z:0.lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_1Maximum'lstm_cell_2/clip_by_value_1/Minimum:z:0&lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm_cell_2/mul_2Mullstm_cell_2/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_6MatMulzeros:output:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
lstm_cell_2/TanhTanhlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_3Mullstm_cell_2/clip_by_value:z:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_cell_2/add_5AddV2lstm_cell_2/mul_2:z:0lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0r
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
lstm_cell_2/MatMul_7MatMulzeros:output:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/add_6AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>X
lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_2/Mul_4Mullstm_cell_2/add_6:z:0lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/Add_7AddV2lstm_cell_2/Mul_4:z:0lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
%lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
#lstm_cell_2/clip_by_value_2/MinimumMinimumlstm_cell_2/Add_7:z:0.lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
lstm_cell_2/clip_by_value_2Maximum'lstm_cell_2/clip_by_value_2/Minimum:z:0&lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_2/mul_5Mullstm_cell_2/clip_by_value_2:z:0lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѕ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_181035*
condR
while_cond_181034*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_181034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_181034___redundant_placeholder04
0while_while_cond_181034___redundant_placeholder14
0while_while_cond_181034___redundant_placeholder24
0while_while_cond_181034___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
щ
ѕ
,__inference_lstm_cell_2_layer_call_fn_181228

inputs
states_0
states_1
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178641o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
Е
У
while_cond_180506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180506___redundant_placeholder04
0while_while_cond_180506___redundant_placeholder14
0while_while_cond_180506___redundant_placeholder24
0while_while_cond_180506___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ь
в
H__inference_sequential_1_layer_call_and_return_conditional_losses_179482
lstm_1_input 
lstm_1_179469:	Ш
lstm_1_179471:	Ш 
lstm_1_179473:	2Ш 
dense_1_179476:2
dense_1_179478:
identityЂdense_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallџ
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_179469lstm_1_179471lstm_1_179473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_179380
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_179476dense_1_179478*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_179073w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_1_input
Ћ{
	
while_body_180507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	ШB
3while_lstm_cell_2_split_1_readvariableop_resource_0:	Ш>
+while_lstm_cell_2_readvariableop_resource_0:	2Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	Ш@
1while_lstm_cell_2_split_1_readvariableop_resource:	Ш<
)while_lstm_cell_2_readvariableop_resource:	2ШЂ while/lstm_cell_2/ReadVariableOpЂ"while/lstm_cell_2/ReadVariableOp_1Ђ"while/lstm_cell_2/ReadVariableOp_2Ђ"while/lstm_cell_2/ReadVariableOp_3Ђ&while/lstm_cell_2/split/ReadVariableOpЂ(while/lstm_cell_2/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0д
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitЈ
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ъ
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0v
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   x
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/MulMulwhile/lstm_cell_2/add:z:0 while/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_1AddV2while/lstm_cell_2/Mul:z:0"while/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
)while/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Е
'while/lstm_cell_2/clip_by_value/MinimumMinimumwhile/lstm_cell_2/Add_1:z:02while/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
while/lstm_cell_2/clip_by_valueMaximum+while/lstm_cell_2/clip_by_value/Minimum:z:0*while/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   z
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_1Mulwhile/lstm_cell_2/add_2:z:0"while/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_3AddV2while/lstm_cell_2/Mul_1:z:0"while/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_1/MinimumMinimumwhile/lstm_cell_2/Add_3:z:04while/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_1Maximum-while/lstm_cell_2/clip_by_value_1/Minimum:z:0,while/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_2Mul%while/lstm_cell_2/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2m
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_3Mul#while/lstm_cell_2/clip_by_value:z:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_5AddV2while/lstm_cell_2/mul_2:z:0while/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_6AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_4Mulwhile/lstm_cell_2/add_6:z:0"while/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_7AddV2while/lstm_cell_2/Mul_4:z:0"while/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_2/MinimumMinimumwhile/lstm_cell_2/Add_7:z:04while/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_2Maximum-while/lstm_cell_2/clip_by_value_2/Minimum:z:0,while/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_5Mul%while/lstm_cell_2/clip_by_value_2:z:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ф
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_5:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2x
while/Identity_5Identitywhile/lstm_cell_2/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2В

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ХJ
Њ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_181317

inputs
states_0
states_10
split_readvariableop_resource:	Ш.
split_1_readvariableop_resource:	Ш*
readvariableop_resource:	2Ш
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskf
MatMul_4MatMulstates_0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskh
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskh
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2I
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2Ш*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskh
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2K
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
ЯЇ
д
%sequential_1_lstm_1_while_body_178161D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3C
?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0
{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0X
Esequential_1_lstm_1_while_lstm_cell_2_split_readvariableop_resource_0:	ШV
Gsequential_1_lstm_1_while_lstm_cell_2_split_1_readvariableop_resource_0:	ШR
?sequential_1_lstm_1_while_lstm_cell_2_readvariableop_resource_0:	2Ш&
"sequential_1_lstm_1_while_identity(
$sequential_1_lstm_1_while_identity_1(
$sequential_1_lstm_1_while_identity_2(
$sequential_1_lstm_1_while_identity_3(
$sequential_1_lstm_1_while_identity_4(
$sequential_1_lstm_1_while_identity_5A
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1}
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensorV
Csequential_1_lstm_1_while_lstm_cell_2_split_readvariableop_resource:	ШT
Esequential_1_lstm_1_while_lstm_cell_2_split_1_readvariableop_resource:	ШP
=sequential_1_lstm_1_while_lstm_cell_2_readvariableop_resource:	2ШЂ4sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOpЂ6sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_1Ђ6sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_2Ђ6sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_3Ђ:sequential_1/lstm_1/while/lstm_cell_2/split/ReadVariableOpЂ<sequential_1/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_1_while_placeholderTsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0w
5sequential_1/lstm_1/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :С
:sequential_1/lstm_1/while/lstm_cell_2/split/ReadVariableOpReadVariableOpEsequential_1_lstm_1_while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0
+sequential_1/lstm_1/while/lstm_cell_2/splitSplit>sequential_1/lstm_1/while/lstm_cell_2/split/split_dim:output:0Bsequential_1/lstm_1/while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitф
,sequential_1/lstm_1/while/lstm_cell_2/MatMulMatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_1/lstm_1/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2ц
.sequential_1/lstm_1/while/lstm_cell_2/MatMul_1MatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_1/lstm_1/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2ц
.sequential_1/lstm_1/while/lstm_cell_2/MatMul_2MatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_1/lstm_1/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2ц
.sequential_1/lstm_1/while/lstm_cell_2/MatMul_3MatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_1/lstm_1/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2y
7sequential_1/lstm_1/while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : С
<sequential_1/lstm_1/while/lstm_cell_2/split_1/ReadVariableOpReadVariableOpGsequential_1_lstm_1_while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0
-sequential_1/lstm_1/while/lstm_cell_2/split_1Split@sequential_1/lstm_1/while/lstm_cell_2/split_1/split_dim:output:0Dsequential_1/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splitк
-sequential_1/lstm_1/while/lstm_cell_2/BiasAddBiasAdd6sequential_1/lstm_1/while/lstm_cell_2/MatMul:product:06sequential_1/lstm_1/while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2о
/sequential_1/lstm_1/while/lstm_cell_2/BiasAdd_1BiasAdd8sequential_1/lstm_1/while/lstm_cell_2/MatMul_1:product:06sequential_1/lstm_1/while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2о
/sequential_1/lstm_1/while/lstm_cell_2/BiasAdd_2BiasAdd8sequential_1/lstm_1/while/lstm_cell_2/MatMul_2:product:06sequential_1/lstm_1/while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2о
/sequential_1/lstm_1/while/lstm_cell_2/BiasAdd_3BiasAdd8sequential_1/lstm_1/while/lstm_cell_2/MatMul_3:product:06sequential_1/lstm_1/while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2Е
4sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOpReadVariableOp?sequential_1_lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
9sequential_1/lstm_1/while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
;sequential_1/lstm_1/while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   
;sequential_1/lstm_1/while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
3sequential_1/lstm_1/while/lstm_cell_2/strided_sliceStridedSlice<sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp:value:0Bsequential_1/lstm_1/while/lstm_cell_2/strided_slice/stack:output:0Dsequential_1/lstm_1/while/lstm_cell_2/strided_slice/stack_1:output:0Dsequential_1/lstm_1/while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskб
.sequential_1/lstm_1/while/lstm_cell_2/MatMul_4MatMul'sequential_1_lstm_1_while_placeholder_2<sequential_1/lstm_1/while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2ж
)sequential_1/lstm_1/while/lstm_cell_2/addAddV26sequential_1/lstm_1/while/lstm_cell_2/BiasAdd:output:08sequential_1/lstm_1/while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+sequential_1/lstm_1/while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>r
-sequential_1/lstm_1/while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ч
)sequential_1/lstm_1/while/lstm_cell_2/MulMul-sequential_1/lstm_1/while/lstm_cell_2/add:z:04sequential_1/lstm_1/while/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Э
+sequential_1/lstm_1/while/lstm_cell_2/Add_1AddV2-sequential_1/lstm_1/while/lstm_cell_2/Mul:z:06sequential_1/lstm_1/while/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
=sequential_1/lstm_1/while/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ё
;sequential_1/lstm_1/while/lstm_cell_2/clip_by_value/MinimumMinimum/sequential_1/lstm_1/while/lstm_cell_2/Add_1:z:0Fsequential_1/lstm_1/while/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
5sequential_1/lstm_1/while/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
3sequential_1/lstm_1/while/lstm_cell_2/clip_by_valueMaximum?sequential_1/lstm_1/while/lstm_cell_2/clip_by_value/Minimum:z:0>sequential_1/lstm_1/while/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
6sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_1ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
;sequential_1/lstm_1/while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   
=sequential_1/lstm_1/while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   
=sequential_1/lstm_1/while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Г
5sequential_1/lstm_1/while/lstm_cell_2/strided_slice_1StridedSlice>sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_1:value:0Dsequential_1/lstm_1/while/lstm_cell_2/strided_slice_1/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_2/strided_slice_1/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskг
.sequential_1/lstm_1/while/lstm_cell_2/MatMul_5MatMul'sequential_1_lstm_1_while_placeholder_2>sequential_1/lstm_1/while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2к
+sequential_1/lstm_1/while/lstm_cell_2/add_2AddV28sequential_1/lstm_1/while/lstm_cell_2/BiasAdd_1:output:08sequential_1/lstm_1/while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
-sequential_1/lstm_1/while/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>r
-sequential_1/lstm_1/while/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Э
+sequential_1/lstm_1/while/lstm_cell_2/Mul_1Mul/sequential_1/lstm_1/while/lstm_cell_2/add_2:z:06sequential_1/lstm_1/while/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Я
+sequential_1/lstm_1/while/lstm_cell_2/Add_3AddV2/sequential_1/lstm_1/while/lstm_cell_2/Mul_1:z:06sequential_1/lstm_1/while/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
?sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ѕ
=sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_1/MinimumMinimum/sequential_1/lstm_1/while/lstm_cell_2/Add_3:z:0Hsequential_1/lstm_1/while/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
7sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ї
5sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_1MaximumAsequential_1/lstm_1/while/lstm_cell_2/clip_by_value_1/Minimum:z:0@sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ш
+sequential_1/lstm_1/while/lstm_cell_2/mul_2Mul9sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_1:z:0'sequential_1_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2З
6sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_2ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
;sequential_1/lstm_1/while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   
=sequential_1/lstm_1/while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
=sequential_1/lstm_1/while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Г
5sequential_1/lstm_1/while/lstm_cell_2/strided_slice_2StridedSlice>sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_2:value:0Dsequential_1/lstm_1/while/lstm_cell_2/strided_slice_2/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_2/strided_slice_2/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskг
.sequential_1/lstm_1/while/lstm_cell_2/MatMul_6MatMul'sequential_1_lstm_1_while_placeholder_2>sequential_1/lstm_1/while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2к
+sequential_1/lstm_1/while/lstm_cell_2/add_4AddV28sequential_1/lstm_1/while/lstm_cell_2/BiasAdd_2:output:08sequential_1/lstm_1/while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2
*sequential_1/lstm_1/while/lstm_cell_2/TanhTanh/sequential_1/lstm_1/while/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Э
+sequential_1/lstm_1/while/lstm_cell_2/mul_3Mul7sequential_1/lstm_1/while/lstm_cell_2/clip_by_value:z:0.sequential_1/lstm_1/while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ш
+sequential_1/lstm_1/while/lstm_cell_2/add_5AddV2/sequential_1/lstm_1/while/lstm_cell_2/mul_2:z:0/sequential_1/lstm_1/while/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
6sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_3ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
;sequential_1/lstm_1/while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       
=sequential_1/lstm_1/while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
=sequential_1/lstm_1/while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Г
5sequential_1/lstm_1/while/lstm_cell_2/strided_slice_3StridedSlice>sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_3:value:0Dsequential_1/lstm_1/while/lstm_cell_2/strided_slice_3/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_2/strided_slice_3/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskг
.sequential_1/lstm_1/while/lstm_cell_2/MatMul_7MatMul'sequential_1_lstm_1_while_placeholder_2>sequential_1/lstm_1/while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2к
+sequential_1/lstm_1/while/lstm_cell_2/add_6AddV28sequential_1/lstm_1/while/lstm_cell_2/BiasAdd_3:output:08sequential_1/lstm_1/while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
-sequential_1/lstm_1/while/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>r
-sequential_1/lstm_1/while/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Э
+sequential_1/lstm_1/while/lstm_cell_2/Mul_4Mul/sequential_1/lstm_1/while/lstm_cell_2/add_6:z:06sequential_1/lstm_1/while/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Я
+sequential_1/lstm_1/while/lstm_cell_2/Add_7AddV2/sequential_1/lstm_1/while/lstm_cell_2/Mul_4:z:06sequential_1/lstm_1/while/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
?sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ѕ
=sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_2/MinimumMinimum/sequential_1/lstm_1/while/lstm_cell_2/Add_7:z:0Hsequential_1/lstm_1/while/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
7sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ї
5sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_2MaximumAsequential_1/lstm_1/while/lstm_cell_2/clip_by_value_2/Minimum:z:0@sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
,sequential_1/lstm_1/while/lstm_cell_2/Tanh_1Tanh/sequential_1/lstm_1/while/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2б
+sequential_1/lstm_1/while/lstm_cell_2/mul_5Mul9sequential_1/lstm_1/while/lstm_cell_2/clip_by_value_2:z:00sequential_1/lstm_1/while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_1_while_placeholder_1%sequential_1_lstm_1_while_placeholder/sequential_1/lstm_1/while/lstm_cell_2/mul_5:z:0*
_output_shapes
: *
element_dtype0:щшвa
sequential_1/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_1/lstm_1/while/addAddV2%sequential_1_lstm_1_while_placeholder(sequential_1/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_1/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
sequential_1/lstm_1/while/add_1AddV2@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counter*sequential_1/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
"sequential_1/lstm_1/while/IdentityIdentity#sequential_1/lstm_1/while/add_1:z:0^sequential_1/lstm_1/while/NoOp*
T0*
_output_shapes
: К
$sequential_1/lstm_1/while/Identity_1IdentityFsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations^sequential_1/lstm_1/while/NoOp*
T0*
_output_shapes
: 
$sequential_1/lstm_1/while/Identity_2Identity!sequential_1/lstm_1/while/add:z:0^sequential_1/lstm_1/while/NoOp*
T0*
_output_shapes
: Т
$sequential_1/lstm_1/while/Identity_3IdentityNsequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_1/lstm_1/while/NoOp*
T0*
_output_shapes
: Д
$sequential_1/lstm_1/while/Identity_4Identity/sequential_1/lstm_1/while/lstm_cell_2/mul_5:z:0^sequential_1/lstm_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Д
$sequential_1/lstm_1/while/Identity_5Identity/sequential_1/lstm_1/while/lstm_cell_2/add_5:z:0^sequential_1/lstm_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2О
sequential_1/lstm_1/while/NoOpNoOp5^sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_2/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0"U
$sequential_1_lstm_1_while_identity_1-sequential_1/lstm_1/while/Identity_1:output:0"U
$sequential_1_lstm_1_while_identity_2-sequential_1/lstm_1/while/Identity_2:output:0"U
$sequential_1_lstm_1_while_identity_3-sequential_1/lstm_1/while/Identity_3:output:0"U
$sequential_1_lstm_1_while_identity_4-sequential_1/lstm_1/while/Identity_4:output:0"U
$sequential_1_lstm_1_while_identity_5-sequential_1/lstm_1/while/Identity_5:output:0"
=sequential_1_lstm_1_while_lstm_cell_2_readvariableop_resource?sequential_1_lstm_1_while_lstm_cell_2_readvariableop_resource_0"
Esequential_1_lstm_1_while_lstm_cell_2_split_1_readvariableop_resourceGsequential_1_lstm_1_while_lstm_cell_2_split_1_readvariableop_resource_0"
Csequential_1_lstm_1_while_lstm_cell_2_split_readvariableop_resourceEsequential_1_lstm_1_while_lstm_cell_2_split_readvariableop_resource_0"
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0"ј
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2l
4sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp4sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp2p
6sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_16sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_12p
6sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_26sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_22p
6sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_36sequential_1/lstm_1/while/lstm_cell_2/ReadVariableOp_32x
:sequential_1/lstm_1/while/lstm_cell_2/split/ReadVariableOp:sequential_1/lstm_1/while/lstm_cell_2/split/ReadVariableOp2|
<sequential_1/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp<sequential_1/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ы

lstm_1_while_body_179929*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_1_while_lstm_cell_2_split_readvariableop_resource_0:	ШI
:lstm_1_while_lstm_cell_2_split_1_readvariableop_resource_0:	ШE
2lstm_1_while_lstm_cell_2_readvariableop_resource_0:	2Ш
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorI
6lstm_1_while_lstm_cell_2_split_readvariableop_resource:	ШG
8lstm_1_while_lstm_cell_2_split_1_readvariableop_resource:	ШC
0lstm_1_while_lstm_cell_2_readvariableop_resource:	2ШЂ'lstm_1/while/lstm_cell_2/ReadVariableOpЂ)lstm_1/while/lstm_cell_2/ReadVariableOp_1Ђ)lstm_1/while/lstm_cell_2/ReadVariableOp_2Ђ)lstm_1/while/lstm_cell_2/ReadVariableOp_3Ђ-lstm_1/while/lstm_cell_2/split/ReadVariableOpЂ/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Щ
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0j
(lstm_1/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
-lstm_1/while/lstm_cell_2/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0щ
lstm_1/while/lstm_cell_2/splitSplit1lstm_1/while/lstm_cell_2/split/split_dim:output:05lstm_1/while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitН
lstm_1/while/lstm_cell_2/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2П
!lstm_1/while/lstm_cell_2/MatMul_1MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2П
!lstm_1/while/lstm_cell_2/MatMul_2MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2П
!lstm_1/while/lstm_cell_2/MatMul_3MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2l
*lstm_1/while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ї
/lstm_1/while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0п
 lstm_1/while/lstm_cell_2/split_1Split3lstm_1/while/lstm_cell_2/split_1/split_dim:output:07lstm_1/while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_splitГ
 lstm_1/while/lstm_cell_2/BiasAddBiasAdd)lstm_1/while/lstm_cell_2/MatMul:product:0)lstm_1/while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
"lstm_1/while/lstm_cell_2/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_2/MatMul_1:product:0)lstm_1/while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2З
"lstm_1/while/lstm_cell_2/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_2/MatMul_2:product:0)lstm_1/while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2З
"lstm_1/while/lstm_cell_2/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_2/MatMul_3:product:0)lstm_1/while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
'lstm_1/while/lstm_cell_2/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0}
,lstm_1/while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.lstm_1/while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   
.lstm_1/while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
&lstm_1/while/lstm_cell_2/strided_sliceStridedSlice/lstm_1/while/lstm_cell_2/ReadVariableOp:value:05lstm_1/while/lstm_cell_2/strided_slice/stack:output:07lstm_1/while/lstm_cell_2/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskЊ
!lstm_1/while/lstm_cell_2/MatMul_4MatMullstm_1_while_placeholder_2/lstm_1/while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Џ
lstm_1/while/lstm_cell_2/addAddV2)lstm_1/while/lstm_cell_2/BiasAdd:output:0+lstm_1/while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm_1/while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>e
 lstm_1/while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ? 
lstm_1/while/lstm_cell_2/MulMul lstm_1/while/lstm_cell_2/add:z:0'lstm_1/while/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
lstm_1/while/lstm_cell_2/Add_1AddV2 lstm_1/while/lstm_cell_2/Mul:z:0)lstm_1/while/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2u
0lstm_1/while/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ъ
.lstm_1/while/lstm_cell_2/clip_by_value/MinimumMinimum"lstm_1/while/lstm_cell_2/Add_1:z:09lstm_1/while/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2m
(lstm_1/while/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
&lstm_1/while/lstm_cell_2/clip_by_valueMaximum2lstm_1/while/lstm_cell_2/clip_by_value/Minimum:z:01lstm_1/while/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
)lstm_1/while/lstm_cell_2/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
.lstm_1/while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   
0lstm_1/while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   
0lstm_1/while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ђ
(lstm_1/while/lstm_cell_2/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_2/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_2/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_2/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskЌ
!lstm_1/while/lstm_cell_2/MatMul_5MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Г
lstm_1/while/lstm_cell_2/add_2AddV2+lstm_1/while/lstm_cell_2/BiasAdd_1:output:0+lstm_1/while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2e
 lstm_1/while/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>e
 lstm_1/while/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
lstm_1/while/lstm_cell_2/Mul_1Mul"lstm_1/while/lstm_cell_2/add_2:z:0)lstm_1/while/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
lstm_1/while/lstm_cell_2/Add_3AddV2"lstm_1/while/lstm_cell_2/Mul_1:z:0)lstm_1/while/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
2lstm_1/while/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ю
0lstm_1/while/lstm_cell_2/clip_by_value_1/MinimumMinimum"lstm_1/while/lstm_cell_2/Add_3:z:0;lstm_1/while/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
*lstm_1/while/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    а
(lstm_1/while/lstm_cell_2/clip_by_value_1Maximum4lstm_1/while/lstm_cell_2/clip_by_value_1/Minimum:z:03lstm_1/while/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/while/lstm_cell_2/mul_2Mul,lstm_1/while/lstm_cell_2/clip_by_value_1:z:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
)lstm_1/while/lstm_cell_2/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
.lstm_1/while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   
0lstm_1/while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
0lstm_1/while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ђ
(lstm_1/while/lstm_cell_2/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_2/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_2/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_2/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskЌ
!lstm_1/while/lstm_cell_2/MatMul_6MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Г
lstm_1/while/lstm_cell_2/add_4AddV2+lstm_1/while/lstm_cell_2/BiasAdd_2:output:0+lstm_1/while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_1/while/lstm_cell_2/TanhTanh"lstm_1/while/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
lstm_1/while/lstm_cell_2/mul_3Mul*lstm_1/while/lstm_cell_2/clip_by_value:z:0!lstm_1/while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_1/while/lstm_cell_2/add_5AddV2"lstm_1/while/lstm_cell_2/mul_2:z:0"lstm_1/while/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
)lstm_1/while/lstm_cell_2/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0
.lstm_1/while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       
0lstm_1/while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
0lstm_1/while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ђ
(lstm_1/while/lstm_cell_2/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_2/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_2/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_2/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_maskЌ
!lstm_1/while/lstm_cell_2/MatMul_7MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Г
lstm_1/while/lstm_cell_2/add_6AddV2+lstm_1/while/lstm_cell_2/BiasAdd_3:output:0+lstm_1/while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2e
 lstm_1/while/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>e
 lstm_1/while/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
lstm_1/while/lstm_cell_2/Mul_4Mul"lstm_1/while/lstm_cell_2/add_6:z:0)lstm_1/while/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
lstm_1/while/lstm_cell_2/Add_7AddV2"lstm_1/while/lstm_cell_2/Mul_4:z:0)lstm_1/while/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
2lstm_1/while/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ю
0lstm_1/while/lstm_cell_2/clip_by_value_2/MinimumMinimum"lstm_1/while/lstm_cell_2/Add_7:z:0;lstm_1/while/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
*lstm_1/while/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    а
(lstm_1/while/lstm_cell_2/clip_by_value_2Maximum4lstm_1/while/lstm_cell_2/clip_by_value_2/Minimum:z:03lstm_1/while/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm_1/while/lstm_cell_2/Tanh_1Tanh"lstm_1/while/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
lstm_1/while/lstm_cell_2/mul_5Mul,lstm_1/while/lstm_cell_2/clip_by_value_2:z:0#lstm_1/while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2р
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_2/mul_5:z:0*
_output_shapes
: *
element_dtype0:щшвT
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: 
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: 
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: 
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_2/mul_5:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_2/add_5:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2у
lstm_1/while/NoOpNoOp(^lstm_1/while/lstm_cell_2/ReadVariableOp*^lstm_1/while/lstm_cell_2/ReadVariableOp_1*^lstm_1/while/lstm_cell_2/ReadVariableOp_2*^lstm_1/while/lstm_cell_2/ReadVariableOp_3.^lstm_1/while/lstm_cell_2/split/ReadVariableOp0^lstm_1/while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_2_readvariableop_resource2lstm_1_while_lstm_cell_2_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_2_split_1_readvariableop_resource:lstm_1_while_lstm_cell_2_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_2_split_readvariableop_resource8lstm_1_while_lstm_cell_2_split_readvariableop_resource_0"Ф
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2R
'lstm_1/while/lstm_cell_2/ReadVariableOp'lstm_1/while/lstm_cell_2/ReadVariableOp2V
)lstm_1/while/lstm_cell_2/ReadVariableOp_1)lstm_1/while/lstm_cell_2/ReadVariableOp_12V
)lstm_1/while/lstm_cell_2/ReadVariableOp_2)lstm_1/while/lstm_cell_2/ReadVariableOp_22V
)lstm_1/while/lstm_cell_2/ReadVariableOp_3)lstm_1/while/lstm_cell_2/ReadVariableOp_32^
-lstm_1/while/lstm_cell_2/split/ReadVariableOp-lstm_1/while/lstm_cell_2/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp/lstm_1/while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Р

(__inference_dense_1_layer_call_fn_181184

inputs
unknown:2
	unknown_0:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_179073o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Е
У
while_cond_180242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180242___redundant_placeholder04
0while_while_cond_180242___redundant_placeholder14
0while_while_cond_180242___redundant_placeholder24
0while_while_cond_180242___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ћ{
	
while_body_178915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	ШB
3while_lstm_cell_2_split_1_readvariableop_resource_0:	Ш>
+while_lstm_cell_2_readvariableop_resource_0:	2Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	Ш@
1while_lstm_cell_2_split_1_readvariableop_resource:	Ш<
)while_lstm_cell_2_readvariableop_resource:	2ШЂ while/lstm_cell_2/ReadVariableOpЂ"while/lstm_cell_2/ReadVariableOp_1Ђ"while/lstm_cell_2/ReadVariableOp_2Ђ"while/lstm_cell_2/ReadVariableOp_3Ђ&while/lstm_cell_2/split/ReadVariableOpЂ(while/lstm_cell_2/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0д
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitЈ
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ъ
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0v
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   x
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/MulMulwhile/lstm_cell_2/add:z:0 while/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_1AddV2while/lstm_cell_2/Mul:z:0"while/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
)while/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Е
'while/lstm_cell_2/clip_by_value/MinimumMinimumwhile/lstm_cell_2/Add_1:z:02while/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
while/lstm_cell_2/clip_by_valueMaximum+while/lstm_cell_2/clip_by_value/Minimum:z:0*while/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   z
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_1Mulwhile/lstm_cell_2/add_2:z:0"while/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_3AddV2while/lstm_cell_2/Mul_1:z:0"while/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_1/MinimumMinimumwhile/lstm_cell_2/Add_3:z:04while/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_1Maximum-while/lstm_cell_2/clip_by_value_1/Minimum:z:0,while/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_2Mul%while/lstm_cell_2/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2m
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_3Mul#while/lstm_cell_2/clip_by_value:z:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_5AddV2while/lstm_cell_2/mul_2:z:0while/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_6AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_4Mulwhile/lstm_cell_2/add_6:z:0"while/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_7AddV2while/lstm_cell_2/Mul_4:z:0"while/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_2/MinimumMinimumwhile/lstm_cell_2/Add_7:z:04while/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_2Maximum-while/lstm_cell_2/clip_by_value_2/Minimum:z:0,while/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_5Mul%while/lstm_cell_2/clip_by_value_2:z:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ф
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_5:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2x
while/Identity_5Identitywhile/lstm_cell_2/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2В

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_178707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178707___redundant_placeholder04
0while_while_cond_178707___redundant_placeholder14
0while_while_cond_178707___redundant_placeholder24
0while_while_cond_178707___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
љ	
Я
lstm_1_while_cond_179928*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_179928___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_179928___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_179928___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_179928___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ѕ
Д
'__inference_lstm_1_layer_call_fn_180108

inputs
unknown:	Ш
	unknown_0:	Ш
	unknown_1:	2Ш
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_179055o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
гZ

"__inference__traced_restore_181571
file_prefix1
assignvariableop_dense_1_kernel:2-
assignvariableop_1_dense_1_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: ?
,assignvariableop_7_lstm_1_lstm_cell_2_kernel:	ШI
6assignvariableop_8_lstm_1_lstm_cell_2_recurrent_kernel:	2Ш9
*assignvariableop_9_lstm_1_lstm_cell_2_bias:	Ш#
assignvariableop_10_total: #
assignvariableop_11_count: ;
)assignvariableop_12_adam_dense_1_kernel_m:25
'assignvariableop_13_adam_dense_1_bias_m:G
4assignvariableop_14_adam_lstm_1_lstm_cell_2_kernel_m:	ШQ
>assignvariableop_15_adam_lstm_1_lstm_cell_2_recurrent_kernel_m:	2ШA
2assignvariableop_16_adam_lstm_1_lstm_cell_2_bias_m:	Ш;
)assignvariableop_17_adam_dense_1_kernel_v:25
'assignvariableop_18_adam_dense_1_bias_v:G
4assignvariableop_19_adam_lstm_1_lstm_cell_2_kernel_v:	ШQ
>assignvariableop_20_adam_lstm_1_lstm_cell_2_recurrent_kernel_v:	2ШA
2assignvariableop_21_adam_lstm_1_lstm_cell_2_bias_v:	Ш
identity_23ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ј
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ю

valueФ
BС
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp,assignvariableop_7_lstm_1_lstm_cell_2_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_8AssignVariableOp6assignvariableop_8_lstm_1_lstm_cell_2_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp*assignvariableop_9_lstm_1_lstm_cell_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp)assignvariableop_12_adam_dense_1_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_dense_1_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_14AssignVariableOp4assignvariableop_14_adam_lstm_1_lstm_cell_2_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_15AssignVariableOp>assignvariableop_15_adam_lstm_1_lstm_cell_2_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adam_lstm_1_lstm_cell_2_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_1_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_1_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_lstm_1_lstm_cell_2_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_20AssignVariableOp>assignvariableop_20_adam_lstm_1_lstm_cell_2_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_lstm_1_lstm_cell_2_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Г
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
:  
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ћ{
	
while_body_181035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	ШB
3while_lstm_cell_2_split_1_readvariableop_resource_0:	Ш>
+while_lstm_cell_2_readvariableop_resource_0:	2Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	Ш@
1while_lstm_cell_2_split_1_readvariableop_resource:	Ш<
)while_lstm_cell_2_readvariableop_resource:	2ШЂ while/lstm_cell_2/ReadVariableOpЂ"while/lstm_cell_2/ReadVariableOp_1Ђ"while/lstm_cell_2/ReadVariableOp_2Ђ"while/lstm_cell_2/ReadVariableOp_3Ђ&while/lstm_cell_2/split/ReadVariableOpЂ(while/lstm_cell_2/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0д
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitЈ
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ъ
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0v
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   x
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/MulMulwhile/lstm_cell_2/add:z:0 while/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_1AddV2while/lstm_cell_2/Mul:z:0"while/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
)while/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Е
'while/lstm_cell_2/clip_by_value/MinimumMinimumwhile/lstm_cell_2/Add_1:z:02while/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
while/lstm_cell_2/clip_by_valueMaximum+while/lstm_cell_2/clip_by_value/Minimum:z:0*while/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   z
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_1Mulwhile/lstm_cell_2/add_2:z:0"while/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_3AddV2while/lstm_cell_2/Mul_1:z:0"while/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_1/MinimumMinimumwhile/lstm_cell_2/Add_3:z:04while/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_1Maximum-while/lstm_cell_2/clip_by_value_1/Minimum:z:0,while/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_2Mul%while/lstm_cell_2/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2m
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_3Mul#while/lstm_cell_2/clip_by_value:z:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_5AddV2while/lstm_cell_2/mul_2:z:0while/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_6AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_4Mulwhile/lstm_cell_2/add_6:z:0"while/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_7AddV2while/lstm_cell_2/Mul_4:z:0"while/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_2/MinimumMinimumwhile/lstm_cell_2/Add_7:z:04while/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_2Maximum-while/lstm_cell_2/clip_by_value_2/Minimum:z:0,while/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_5Mul%while/lstm_cell_2/clip_by_value_2:z:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ф
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_5:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2x
while/Identity_5Identitywhile/lstm_cell_2/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2В

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ћ{
	
while_body_179240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	ШB
3while_lstm_cell_2_split_1_readvariableop_resource_0:	Ш>
+while_lstm_cell_2_readvariableop_resource_0:	2Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	Ш@
1while_lstm_cell_2_split_1_readvariableop_resource:	Ш<
)while_lstm_cell_2_readvariableop_resource:	2ШЂ while/lstm_cell_2/ReadVariableOpЂ"while/lstm_cell_2/ReadVariableOp_1Ђ"while/lstm_cell_2/ReadVariableOp_2Ђ"while/lstm_cell_2/ReadVariableOp_3Ђ&while/lstm_cell_2/split/ReadVariableOpЂ(while/lstm_cell_2/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0д
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2:2:2:2*
	num_splitЈ
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Њ
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ъ
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0v
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   x
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/MulMulwhile/lstm_cell_2/add:z:0 while/lstm_cell_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_1AddV2while/lstm_cell_2/Mul:z:0"while/lstm_cell_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
)while/lstm_cell_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Е
'while/lstm_cell_2/clip_by_value/MinimumMinimumwhile/lstm_cell_2/Add_1:z:02while/lstm_cell_2/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
while/lstm_cell_2/clip_by_valueMaximum+while/lstm_cell_2/clip_by_value/Minimum:z:0*while/lstm_cell_2/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   z
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_1Mulwhile/lstm_cell_2/add_2:z:0"while/lstm_cell_2/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_3AddV2while/lstm_cell_2/Mul_1:z:0"while/lstm_cell_2/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_1/MinimumMinimumwhile/lstm_cell_2/Add_3:z:04while/lstm_cell_2/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_1Maximum-while/lstm_cell_2/clip_by_value_1/Minimum:z:0,while/lstm_cell_2/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_2Mul%while/lstm_cell_2/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2m
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_3Mul#while/lstm_cell_2/clip_by_value:z:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_5AddV2while/lstm_cell_2/mul_2:z:0while/lstm_cell_2/mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0x
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask
while/lstm_cell_2/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/add_6AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
while/lstm_cell_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>^
while/lstm_cell_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell_2/Mul_4Mulwhile/lstm_cell_2/add_6:z:0"while/lstm_cell_2/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/Add_7AddV2while/lstm_cell_2/Mul_4:z:0"while/lstm_cell_2/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
+while/lstm_cell_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Й
)while/lstm_cell_2/clip_by_value_2/MinimumMinimumwhile/lstm_cell_2/Add_7:z:04while/lstm_cell_2/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
#while/lstm_cell_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
!while/lstm_cell_2/clip_by_value_2Maximum-while/lstm_cell_2/clip_by_value_2/Minimum:z:0,while/lstm_cell_2/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_2/mul_5Mul%while/lstm_cell_2/clip_by_value_2:z:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ф
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_5:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2x
while/Identity_5Identitywhile/lstm_cell_2/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2В

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: "L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*И
serving_defaultЄ
I
lstm_1_input9
serving_default_lstm_1_input:0џџџџџџџџџ;
dense_10
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ёb
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
F__call__
*G&call_and_return_all_conditional_losses
H_default_save_signature"
_tf_keras_sequential
У
	cell


state_spec
	variables
trainable_variables
regularization_losses
	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Л

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
­
iter

beta_1

beta_2
	decay
learning_ratem<m=m>m?m@vAvBvCvDvE"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses
F__call__
H_default_save_signature
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
,
Mserving_default"
signature_map
с
"
state_size

kernel
recurrent_kernel
bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

'states
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
 :22dense_1/kernel
:2dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	Ш2lstm_1/lstm_cell_2/kernel
6:4	2Ш2#lstm_1/lstm_cell_2/recurrent_kernel
&:$Ш2lstm_1/lstm_cell_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
#	variables
$trainable_variables
%regularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
	0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	8total
	9count
:	variables
;	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
80
91"
trackable_list_wrapper
-
:	variables"
_generic_user_object
%:#22Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
1:/	Ш2 Adam/lstm_1/lstm_cell_2/kernel/m
;:9	2Ш2*Adam/lstm_1/lstm_cell_2/recurrent_kernel/m
+:)Ш2Adam/lstm_1/lstm_cell_2/bias/m
%:#22Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
1:/	Ш2 Adam/lstm_1/lstm_cell_2/kernel/v
;:9	2Ш2*Adam/lstm_1/lstm_cell_2/recurrent_kernel/v
+:)Ш2Adam/lstm_1/lstm_cell_2/bias/v
2џ
-__inference_sequential_1_layer_call_fn_179093
-__inference_sequential_1_layer_call_fn_179520
-__inference_sequential_1_layer_call_fn_179535
-__inference_sequential_1_layer_call_fn_179450Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_179805
H__inference_sequential_1_layer_call_and_return_conditional_losses_180075
H__inference_sequential_1_layer_call_and_return_conditional_losses_179466
H__inference_sequential_1_layer_call_and_return_conditional_losses_179482Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
бBЮ
!__inference__wrapped_model_178307lstm_1_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џ2ќ
'__inference_lstm_1_layer_call_fn_180086
'__inference_lstm_1_layer_call_fn_180097
'__inference_lstm_1_layer_call_fn_180108
'__inference_lstm_1_layer_call_fn_180119е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ы2ш
B__inference_lstm_1_layer_call_and_return_conditional_losses_180383
B__inference_lstm_1_layer_call_and_return_conditional_losses_180647
B__inference_lstm_1_layer_call_and_return_conditional_losses_180911
B__inference_lstm_1_layer_call_and_return_conditional_losses_181175е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
в2Я
(__inference_dense_1_layer_call_fn_181184Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_181194Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
аBЭ
$__inference_signature_wrapper_179505lstm_1_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 2
,__inference_lstm_cell_2_layer_call_fn_181211
,__inference_lstm_cell_2_layer_call_fn_181228О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ж2г
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_181317
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_181406О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
!__inference__wrapped_model_178307u9Ђ6
/Ђ,
*'
lstm_1_inputџџџџџџџџџ
Њ "1Њ.
,
dense_1!
dense_1џџџџџџџџџЃ
C__inference_dense_1_layer_call_and_return_conditional_losses_181194\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_dense_1_layer_call_fn_181184O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "џџџџџџџџџУ
B__inference_lstm_1_layer_call_and_return_conditional_losses_180383}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ2
 У
B__inference_lstm_1_layer_call_and_return_conditional_losses_180647}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ2
 Г
B__inference_lstm_1_layer_call_and_return_conditional_losses_180911m?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ2
 Г
B__inference_lstm_1_layer_call_and_return_conditional_losses_181175m?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ2
 
'__inference_lstm_1_layer_call_fn_180086pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ2
'__inference_lstm_1_layer_call_fn_180097pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ2
'__inference_lstm_1_layer_call_fn_180108`?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ2
'__inference_lstm_1_layer_call_fn_180119`?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ2Щ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_181317§Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ2
EB

0/1/0џџџџџџџџџ2

0/1/1џџџџџџџџџ2
 Щ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_181406§Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p
Њ "sЂp
iЂf

0/0џџџџџџџџџ2
EB

0/1/0џџџџџџџџџ2

0/1/1џџџџџџџџџ2
 
,__inference_lstm_cell_2_layer_call_fn_181211эЂ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p 
Њ "cЂ`

0џџџџџџџџџ2
A>

1/0џџџџџџџџџ2

1/1џџџџџџџџџ2
,__inference_lstm_cell_2_layer_call_fn_181228эЂ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p
Њ "cЂ`

0џџџџџџџџџ2
A>

1/0џџџџџџџџџ2

1/1џџџџџџџџџ2Н
H__inference_sequential_1_layer_call_and_return_conditional_losses_179466qAЂ>
7Ђ4
*'
lstm_1_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Н
H__inference_sequential_1_layer_call_and_return_conditional_losses_179482qAЂ>
7Ђ4
*'
lstm_1_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 З
H__inference_sequential_1_layer_call_and_return_conditional_losses_179805k;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 З
H__inference_sequential_1_layer_call_and_return_conditional_losses_180075k;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
-__inference_sequential_1_layer_call_fn_179093dAЂ>
7Ђ4
*'
lstm_1_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_179450dAЂ>
7Ђ4
*'
lstm_1_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_179520^;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_179535^;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџЎ
$__inference_signature_wrapper_179505IЂF
Ђ 
?Њ<
:
lstm_1_input*'
lstm_1_inputџџџџџџџџџ"1Њ.
,
dense_1!
dense_1џџџџџџџџџ