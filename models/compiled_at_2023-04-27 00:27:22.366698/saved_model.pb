БЃ%
 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
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
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
d
Shape

input"T&
output"out_typeэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
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

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.12.02unknown8Єж#

Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/v

.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:*
dtype0
Љ
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
Ђ
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*-
shared_nameAdam/lstm/lstm_cell/kernel/v

0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	2*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@*
dtype0

Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш2*,
shared_nameAdam/embedding/embeddings/v

/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	ш2*
dtype0

Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/m

.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:*
dtype0
Љ
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
Ђ
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*-
shared_nameAdam/lstm/lstm_cell/kernel/m

0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	2*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@*
dtype0

Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш2*,
shared_nameAdam/embedding/embeddings/m

/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	ш2*
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:*
dtype0

lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*0
shared_name!lstm/lstm_cell/recurrent_kernel

3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	2*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0

embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш2*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	ш2*
dtype0

serving_default_embedding_inputPlaceholder*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*%
shape:џџџџџџџџџџџџџџџџџџ
Ф
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/biaslstm/lstm_cell/recurrent_kerneldense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_3675419

NoOpNoOp
5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ю4
valueФ4BС4 BК4
С
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
 
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
І
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
%1
&2
'3
#4
$5*
.
0
%1
&2
'3
#4
$5*
* 
А
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
-trace_0
.trace_1
/trace_2
0trace_3* 
6
1trace_0
2trace_1
3trace_2
4trace_3* 
* 
А
5iter

6beta_1

7beta_2
	8decay
9learning_ratems#mt$mu%mv&mw'mxvy#vz$v{%v|&v}'v~*

:serving_default* 

0*

0*
* 

;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

@trace_0* 

Atrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1
'2*

%0
&1
'2*
* 


Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
* 
у
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
W
state_size

%kernel
&recurrent_kernel
'bias*
* 

#0
$1*

#0
$1*
* 

Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

%0
&1
'2*

%0
&1
'2*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

ftrace_0
gtrace_1* 

htrace_0
itrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
j	variables
k	keras_api
	ltotal
	mcount*
H
n	variables
o	keras_api
	ptotal
	qcount
r
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 

l0
m1*

j	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

p0
q1*

n	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ч
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/vConst*(
Tin!
2*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_3677977
т
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*'
Tin 
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_3678068й"
Л
д
A__inference_lstm_layer_call_and_return_conditional_losses_3675227

inputs
mask
:
'lstm_cell_split_readvariableop_resource:	28
)lstm_cell_split_1_readvariableop_resource:	4
!lstm_cell_readvariableop_resource:	@
identityЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
:џџџџџџџџџ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
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
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџv

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџe
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџf
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
valueB"џџџџ2   р
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
:џџџџџџџџџ2*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	2*
dtype0М
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0В
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџИ
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ц
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ_

zeros_like	ZerosLikelstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
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
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_3675074*
condR
while_cond_3675073*`
output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
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
:џџџџџџџџџ@*
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџџџџџџџџџџ2:џџџџџџџџџџџџџџџџџџ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
КD
Љ
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3677792

inputs
states_0
states_10
split_readvariableop_resource:	2.
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::эЯT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::эЯV
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?}
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Z
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Z
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Z
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	2*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@^
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
mul_6Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
mul_7Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
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
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   h
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

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ@:џџџџџџџџџ@: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_1:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_0:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
­$
е
while_body_3674373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_3674397_0:	2(
while_lstm_cell_3674399_0:	,
while_lstm_cell_3674401_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_3674397:	2&
while_lstm_cell_3674399:	*
while_lstm_cell_3674401:	@Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ј
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3674397_0while_lstm_cell_3674399_0while_lstm_cell_3674401_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3674358r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"4
while_lstm_cell_3674397while_lstm_cell_3674397_0"4
while_lstm_cell_3674399while_lstm_cell_3674399_0"4
while_lstm_cell_3674401while_lstm_cell_3674401_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
в


while_cond_3677019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice_15
1while_while_cond_3677019___redundant_placeholder05
1while_while_cond_3677019___redundant_placeholder15
1while_while_cond_3677019___redundant_placeholder25
1while_while_cond_3677019___redundant_placeholder35
1while_while_cond_3677019___redundant_placeholder4
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
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: ::::::	

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

Ь
A__inference_lstm_layer_call_and_return_conditional_losses_3676836
inputs_0:
'lstm_cell_split_readvariableop_resource:	28
)lstm_cell_split_1_readvariableop_resource:	4
!lstm_cell_readvariableop_resource:	@
identityЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
:џџџџџџџџџ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
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
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB"џџџџ2   р
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
:џџџџџџџџџ2*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	2*
dtype0М
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0В
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3676701*
condR
while_cond_3676700*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
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
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0
­$
е
while_body_3674176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_3674200_0:	2(
while_lstm_cell_3674202_0:	,
while_lstm_cell_3674204_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_3674200:	2&
while_lstm_cell_3674202:	*
while_lstm_cell_3674204:	@Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ј
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3674200_0while_lstm_cell_3674202_0while_lstm_cell_3674204_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3674161r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"4
while_lstm_cell_3674200while_lstm_cell_3674200_0"4
while_lstm_cell_3674202while_lstm_cell_3674202_0"4
while_lstm_cell_3674204while_lstm_cell_3674204_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
јu
т
#__inference__traced_restore_3678068
file_prefix8
%assignvariableop_embedding_embeddings:	ш21
assignvariableop_1_dense_kernel:@+
assignvariableop_2_dense_bias:;
(assignvariableop_3_lstm_lstm_cell_kernel:	2E
2assignvariableop_4_lstm_lstm_cell_recurrent_kernel:	@5
&assignvariableop_5_lstm_lstm_cell_bias:	&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: B
/assignvariableop_15_adam_embedding_embeddings_m:	ш29
'assignvariableop_16_adam_dense_kernel_m:@3
%assignvariableop_17_adam_dense_bias_m:C
0assignvariableop_18_adam_lstm_lstm_cell_kernel_m:	2M
:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_m:	@=
.assignvariableop_20_adam_lstm_lstm_cell_bias_m:	B
/assignvariableop_21_adam_embedding_embeddings_v:	ш29
'assignvariableop_22_adam_dense_kernel_v:@3
%assignvariableop_23_adam_dense_bias_v:C
0assignvariableop_24_adam_lstm_lstm_cell_kernel_v:	2M
:assignvariableop_25_adam_lstm_lstm_cell_recurrent_kernel_v:	@=
.assignvariableop_26_adam_lstm_lstm_cell_bias_v:	
identity_28ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*І
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЈ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ћ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp(assignvariableop_3_lstm_lstm_cell_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_4AssignVariableOp2assignvariableop_4_lstm_lstm_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_5AssignVariableOp&assignvariableop_5_lstm_lstm_cell_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:Г
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_embedding_embeddings_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_mIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_lstm_lstm_cell_kernel_mIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_19AssignVariableOp:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_lstm_lstm_cell_bias_mIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_vIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_vIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_lstm_lstm_cell_kernel_vIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_25AssignVariableOp:assignvariableop_25_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_lstm_lstm_cell_bias_vIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ё
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ВФ

"__inference__wrapped_model_3673983
embedding_input@
-sequential_embedding_embedding_lookup_3673700:	ш2J
7sequential_lstm_lstm_cell_split_readvariableop_resource:	2H
9sequential_lstm_lstm_cell_split_1_readvariableop_resource:	D
1sequential_lstm_lstm_cell_readvariableop_resource:	@A
/sequential_dense_matmul_readvariableop_resource:@>
0sequential_dense_biasadd_readvariableop_resource:
identityЂ'sequential/dense/BiasAdd/ReadVariableOpЂ&sequential/dense/MatMul/ReadVariableOpЂ%sequential/embedding/embedding_lookupЂ(sequential/lstm/lstm_cell/ReadVariableOpЂ*sequential/lstm/lstm_cell/ReadVariableOp_1Ђ*sequential/lstm/lstm_cell/ReadVariableOp_2Ђ*sequential/lstm/lstm_cell/ReadVariableOp_3Ђ.sequential/lstm/lstm_cell/split/ReadVariableOpЂ0sequential/lstm/lstm_cell/split_1/ReadVariableOpЂsequential/lstm/while|
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
%sequential/embedding/embedding_lookupResourceGather-sequential_embedding_embedding_lookup_3673700sequential/embedding/Cast:y:0*
Tindices0*@
_class6
42loc:@sequential/embedding/embedding_lookup/3673700*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
dtype0ы
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*@
_class6
42loc:@sequential/embedding/embedding_lookup/3673700*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Д
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2d
sequential/embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/embedding/NotEqualNotEqualembedding_input(sequential/embedding/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
sequential/lstm/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::эЯm
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Ѓ
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@b
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Ї
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Щ
sequential/lstm/transpose	Transpose9sequential/embedding/embedding_lookup/Identity_1:output:0'sequential/lstm/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2r
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
::эЯo
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
sequential/lstm/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџГ
sequential/lstm/ExpandDims
ExpandDims!sequential/embedding/NotEqual:z:0'sequential/lstm/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџu
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          З
sequential/lstm/transpose_1	Transpose#sequential/lstm/ExpandDims:output:0)sequential/lstm/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџv
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџф
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвo
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
)sequential/lstm/lstm_cell/ones_like/ShapeShape(sequential/lstm/strided_slice_2:output:0*
T0*
_output_shapes
::эЯn
)sequential/lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Х
#sequential/lstm/lstm_cell/ones_likeFill2sequential/lstm/lstm_cell/ones_like/Shape:output:02sequential/lstm/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
+sequential/lstm/lstm_cell/ones_like_1/ShapeShapesequential/lstm/zeros:output:0*
T0*
_output_shapes
::эЯp
+sequential/lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ы
%sequential/lstm/lstm_cell/ones_like_1Fill4sequential/lstm/lstm_cell/ones_like_1/Shape:output:04sequential/lstm/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ў
sequential/lstm/lstm_cell/mulMul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2А
sequential/lstm/lstm_cell/mul_1Mul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2А
sequential/lstm/lstm_cell/mul_2Mul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2А
sequential/lstm/lstm_cell/mul_3Mul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2k
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
.sequential/lstm/lstm_cell/split/ReadVariableOpReadVariableOp7sequential_lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	2*
dtype0ь
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:06sequential/lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_splitЉ
 sequential/lstm/lstm_cell/MatMulMatMul!sequential/lstm/lstm_cell/mul:z:0(sequential/lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@­
"sequential/lstm/lstm_cell/MatMul_1MatMul#sequential/lstm/lstm_cell/mul_1:z:0(sequential/lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@­
"sequential/lstm/lstm_cell/MatMul_2MatMul#sequential/lstm/lstm_cell/mul_2:z:0(sequential/lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@­
"sequential/lstm/lstm_cell/MatMul_3MatMul#sequential/lstm/lstm_cell/mul_3:z:0(sequential/lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@m
+sequential/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ї
0sequential/lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp9sequential_lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0т
!sequential/lstm/lstm_cell/split_1Split4sequential/lstm/lstm_cell/split_1/split_dim:output:08sequential/lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitЖ
!sequential/lstm/lstm_cell/BiasAddBiasAdd*sequential/lstm/lstm_cell/MatMul:product:0*sequential/lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@К
#sequential/lstm/lstm_cell/BiasAdd_1BiasAdd,sequential/lstm/lstm_cell/MatMul_1:product:0*sequential/lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@К
#sequential/lstm/lstm_cell/BiasAdd_2BiasAdd,sequential/lstm/lstm_cell/MatMul_2:product:0*sequential/lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@К
#sequential/lstm/lstm_cell/BiasAdd_3BiasAdd,sequential/lstm/lstm_cell/MatMul_3:product:0*sequential/lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@Ј
sequential/lstm/lstm_cell/mul_4Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ј
sequential/lstm/lstm_cell/mul_5Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ј
sequential/lstm/lstm_cell/mul_6Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ј
sequential/lstm/lstm_cell/mul_7Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(sequential/lstm/lstm_cell/ReadVariableOpReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0~
-sequential/lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
/sequential/lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
/sequential/lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
'sequential/lstm/lstm_cell/strided_sliceStridedSlice0sequential/lstm/lstm_cell/ReadVariableOp:value:06sequential/lstm/lstm_cell/strided_slice/stack:output:08sequential/lstm/lstm_cell/strided_slice/stack_1:output:08sequential/lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЕ
"sequential/lstm/lstm_cell/MatMul_4MatMul#sequential/lstm/lstm_cell/mul_4:z:00sequential/lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@В
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/BiasAdd:output:0,sequential/lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
!sequential/lstm/lstm_cell/SigmoidSigmoid!sequential/lstm/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
*sequential/lstm/lstm_cell/ReadVariableOp_1ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0
/sequential/lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
1sequential/lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
1sequential/lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
)sequential/lstm/lstm_cell/strided_slice_1StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_1:value:08sequential/lstm/lstm_cell/strided_slice_1/stack:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЗ
"sequential/lstm/lstm_cell/MatMul_5MatMul#sequential/lstm/lstm_cell/mul_5:z:02sequential/lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ж
sequential/lstm/lstm_cell/add_1AddV2,sequential/lstm/lstm_cell/BiasAdd_1:output:0,sequential/lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
#sequential/lstm/lstm_cell/Sigmoid_1Sigmoid#sequential/lstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
sequential/lstm/lstm_cell/mul_8Mul'sequential/lstm/lstm_cell/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
*sequential/lstm/lstm_cell/ReadVariableOp_2ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0
/sequential/lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
1sequential/lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   
1sequential/lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
)sequential/lstm/lstm_cell/strided_slice_2StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_2:value:08sequential/lstm/lstm_cell/strided_slice_2/stack:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЗ
"sequential/lstm/lstm_cell/MatMul_6MatMul#sequential/lstm/lstm_cell/mul_6:z:02sequential/lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ж
sequential/lstm/lstm_cell/add_2AddV2,sequential/lstm/lstm_cell/BiasAdd_2:output:0,sequential/lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
sequential/lstm/lstm_cell/TanhTanh#sequential/lstm/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
sequential/lstm/lstm_cell/mul_9Mul%sequential/lstm/lstm_cell/Sigmoid:y:0"sequential/lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
sequential/lstm/lstm_cell/add_3AddV2#sequential/lstm/lstm_cell/mul_8:z:0#sequential/lstm/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
*sequential/lstm/lstm_cell/ReadVariableOp_3ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0
/sequential/lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   
1sequential/lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1sequential/lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
)sequential/lstm/lstm_cell/strided_slice_3StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_3:value:08sequential/lstm/lstm_cell/strided_slice_3/stack:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЗ
"sequential/lstm/lstm_cell/MatMul_7MatMul#sequential/lstm/lstm_cell/mul_7:z:02sequential/lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ж
sequential/lstm/lstm_cell/add_4AddV2,sequential/lstm/lstm_cell/BiasAdd_3:output:0,sequential/lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
#sequential/lstm/lstm_cell/Sigmoid_2Sigmoid#sequential/lstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 sequential/lstm/lstm_cell/Tanh_1Tanh#sequential/lstm/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ј
 sequential/lstm/lstm_cell/mul_10Mul'sequential/lstm/lstm_cell/Sigmoid_2:y:0$sequential/lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   n
,sequential/lstm/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ѕ
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:05sequential/lstm/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвV
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential/lstm/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџш
sequential/lstm/TensorArrayV2_2TensorListReserve6sequential/lstm/TensorArrayV2_2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
Gsequential/lstm/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
9sequential/lstm/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose_1:y:0Psequential/lstm/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
sequential/lstm/zeros_like	ZerosLike$sequential/lstm/lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџd
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ш
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros_like:y:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Isequential/lstm/TensorArrayUnstack_1/TensorListFromTensor:output_handle:07sequential_lstm_lstm_cell_split_readvariableop_resource9sequential_lstm_lstm_cell_split_1_readvariableop_resource1sequential_lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *.
body&R$
"sequential_lstm_while_body_3673823*.
cond&R$
"sequential_lstm_while_cond_3673822*`
output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsx
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџq
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_masku
 sequential/lstm/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
sequential/lstm/transpose_2	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_2/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@k
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0­
sequential/dense/MatMulMatMul(sequential/lstm/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
sequential/dense/SoftmaxSoftmax!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџq
IdentityIdentity"sequential/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџя
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup)^sequential/lstm/lstm_cell/ReadVariableOp+^sequential/lstm/lstm_cell/ReadVariableOp_1+^sequential/lstm/lstm_cell/ReadVariableOp_2+^sequential/lstm/lstm_cell/ReadVariableOp_3/^sequential/lstm/lstm_cell/split/ReadVariableOp1^sequential/lstm/lstm_cell/split_1/ReadVariableOp^sequential/lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2X
*sequential/lstm/lstm_cell/ReadVariableOp_1*sequential/lstm/lstm_cell/ReadVariableOp_12X
*sequential/lstm/lstm_cell/ReadVariableOp_2*sequential/lstm/lstm_cell/ReadVariableOp_22X
*sequential/lstm/lstm_cell/ReadVariableOp_3*sequential/lstm/lstm_cell/ReadVariableOp_32T
(sequential/lstm/lstm_cell/ReadVariableOp(sequential/lstm/lstm_cell/ReadVariableOp2`
.sequential/lstm/lstm_cell/split/ReadVariableOp.sequential/lstm/lstm_cell/split/ReadVariableOp2d
0sequential/lstm/lstm_cell/split_1/ReadVariableOp0sequential/lstm/lstm_cell/split_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while:a ]
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
)
_user_specified_nameembedding_input
ї

lstm_while_cond_3675643&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3
lstm_while_placeholder_4(
$lstm_while_less_lstm_strided_slice_1?
;lstm_while_lstm_while_cond_3675643___redundant_placeholder0?
;lstm_while_lstm_while_cond_3675643___redundant_placeholder1?
;lstm_while_lstm_while_cond_3675643___redundant_placeholder2?
;lstm_while_lstm_while_cond_3675643___redundant_placeholder3?
;lstm_while_lstm_while_cond_3675643___redundant_placeholder4
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: ::::::	

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :UQ

_output_shapes
: 
7
_user_specified_namelstm/while/maximum_iterations:O K

_output_shapes
: 
1
_user_specified_namelstm/while/loop_counter
	
Н
&__inference_lstm_layer_call_fn_3676206

inputs
mask

unknown:	2
	unknown_0:	
	unknown_1:	@
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_3674921o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџџџџџџџџџџ2:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
ЭІ

G__inference_sequential_layer_call_and_return_conditional_losses_3676155

inputs5
"embedding_embedding_lookup_3675872:	ш2?
,lstm_lstm_cell_split_readvariableop_resource:	2=
.lstm_lstm_cell_split_1_readvariableop_resource:	9
&lstm_lstm_cell_readvariableop_resource:	@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂembedding/embedding_lookupЂlstm/lstm_cell/ReadVariableOpЂlstm/lstm_cell/ReadVariableOp_1Ђlstm/lstm_cell/ReadVariableOp_2Ђlstm/lstm_cell/ReadVariableOp_3Ђ#lstm/lstm_cell/split/ReadVariableOpЂ%lstm/lstm_cell/split_1/ReadVariableOpЂ
lstm/whileh
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџю
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_3675872embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/3675872*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
dtype0Ъ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/3675872*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџv

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::эЯb
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ј
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2\
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
::эЯd
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
lstm/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
lstm/ExpandDims
ExpandDimsembedding/NotEqual:z:0lstm/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm/transpose_1	Transposelstm/ExpandDims:output:0lstm/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџУ
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   я
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_masky
lstm/lstm_cell/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
::эЯc
lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Є
lstm/lstm_cell/ones_likeFill'lstm/lstm_cell/ones_like/Shape:output:0'lstm/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
 lstm/lstm_cell/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
::эЯe
 lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Њ
lstm/lstm_cell/ones_like_1Fill)lstm/lstm_cell/ones_like_1/Shape:output:0)lstm/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mulMullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm/lstm_cell/mul_1Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm/lstm_cell/mul_2Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm/lstm_cell/mul_3Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	2*
dtype0Ы
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
lstm/lstm_cell/MatMulMatMullstm/lstm_cell/mul:z:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/MatMul_1MatMullstm/lstm_cell/mul_1:z:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/MatMul_2MatMullstm/lstm_cell/mul_2:z:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/MatMul_3MatMullstm/lstm_cell/mul_3:z:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@b
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0С
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_4Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_5Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_6Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_7Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ж
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_4MatMullstm/lstm_cell/mul_4:z:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Р
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_5MatMullstm/lstm_cell/mul_5:z:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/add_1AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_8Mullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Р
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_6MatMullstm/lstm_cell/mul_6:z:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@g
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_9Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/add_3AddV2lstm/lstm_cell/mul_8:z:0lstm/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Р
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_7MatMullstm/lstm_cell/mul_7:z:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_10Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   c
!lstm/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :д
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0*lstm/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : m
"lstm/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЧ
lstm/TensorArrayV2_2TensorListReserve+lstm/TensorArrayV2_2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
<lstm/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ѕ
.lstm/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorlstm/transpose_1:y:0Elstm/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШi
lstm/zeros_like	ZerosLikelstm/lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџY
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : И

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros_like:y:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0>lstm/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *#
bodyR
lstm_while_body_3675995*#
condR
lstm_while_cond_3675994*`
output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   х
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsm
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџf
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskj
lstm/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
lstm/transpose_2	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_2/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџb
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџf
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
фб
д
A__inference_lstm_layer_call_and_return_conditional_losses_3677237

inputs
mask
:
'lstm_cell_split_readvariableop_resource:	28
)lstm_cell_split_1_readvariableop_resource:	4
!lstm_cell_readvariableop_resource:	@
identityЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
:џџџџџџџџџ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
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
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџv

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџe
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџf
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
valueB"џџџџ2   р
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
:џџџџџџџџџ2*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯ 
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ф
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Л
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	2*
dtype0М
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0В
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџИ
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ц
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ_

zeros_like	ZerosLikelstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
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
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_3677020*
condR
while_cond_3677019*`
output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
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
:џџџџџџџџџ@*
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџџџџџџџџџџ2:џџџџџџџџџџџџџџџџџџ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
ѓ

G__inference_sequential_layer_call_and_return_conditional_losses_3675868

inputs5
"embedding_embedding_lookup_3675457:	ш2?
,lstm_lstm_cell_split_readvariableop_resource:	2=
.lstm_lstm_cell_split_1_readvariableop_resource:	9
&lstm_lstm_cell_readvariableop_resource:	@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂembedding/embedding_lookupЂlstm/lstm_cell/ReadVariableOpЂlstm/lstm_cell/ReadVariableOp_1Ђlstm/lstm_cell/ReadVariableOp_2Ђlstm/lstm_cell/ReadVariableOp_3Ђ#lstm/lstm_cell/split/ReadVariableOpЂ%lstm/lstm_cell/split_1/ReadVariableOpЂ
lstm/whileh
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџю
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_3675457embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/3675457*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
dtype0Ъ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/3675457*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџv

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::эЯb
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ј
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2\
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
::эЯd
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
lstm/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
lstm/ExpandDims
ExpandDimsembedding/NotEqual:z:0lstm/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm/transpose_1	Transposelstm/ExpandDims:output:0lstm/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџУ
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   я
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_masky
lstm/lstm_cell/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
::эЯc
lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Є
lstm/lstm_cell/ones_likeFill'lstm/lstm_cell/ones_like/Shape:output:0'lstm/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
lstm/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/dropout/MulMul!lstm/lstm_cell/ones_like:output:0%lstm/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm/lstm_cell/dropout/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЊ
3lstm/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform%lstm/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0j
%lstm/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>г
#lstm/lstm_cell/dropout/GreaterEqualGreaterEqual<lstm/lstm_cell/dropout/random_uniform/RandomUniform:output:0.lstm/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Я
lstm/lstm_cell/dropout/SelectV2SelectV2'lstm/lstm_cell/dropout/GreaterEqual:z:0lstm/lstm_cell/dropout/Mul:z:0'lstm/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
lstm/lstm_cell/dropout_1/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm/lstm_cell/dropout_1/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЎ
5lstm/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0l
'lstm/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>й
%lstm/lstm_cell/dropout_1/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_1/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2e
 lstm/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    з
!lstm/lstm_cell/dropout_1/SelectV2SelectV2)lstm/lstm_cell/dropout_1/GreaterEqual:z:0 lstm/lstm_cell/dropout_1/Mul:z:0)lstm/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
lstm/lstm_cell/dropout_2/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm/lstm_cell/dropout_2/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЎ
5lstm/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0l
'lstm/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>й
%lstm/lstm_cell/dropout_2/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_2/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2e
 lstm/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    з
!lstm/lstm_cell/dropout_2/SelectV2SelectV2)lstm/lstm_cell/dropout_2/GreaterEqual:z:0 lstm/lstm_cell/dropout_2/Mul:z:0)lstm/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
lstm/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
lstm/lstm_cell/dropout_3/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
lstm/lstm_cell/dropout_3/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЎ
5lstm/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0l
'lstm/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>й
%lstm/lstm_cell/dropout_3/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_3/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2e
 lstm/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    з
!lstm/lstm_cell/dropout_3/SelectV2SelectV2)lstm/lstm_cell/dropout_3/GreaterEqual:z:0 lstm/lstm_cell/dropout_3/Mul:z:0)lstm/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
 lstm/lstm_cell/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
::эЯe
 lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Њ
lstm/lstm_cell/ones_like_1Fill)lstm/lstm_cell/ones_like_1/Shape:output:0)lstm/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
lstm/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ѓ
lstm/lstm_cell/dropout_4/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/dropout_4/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЎ
5lstm/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0l
'lstm/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>й
%lstm/lstm_cell/dropout_4/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_4/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
 lstm/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    з
!lstm/lstm_cell/dropout_4/SelectV2SelectV2)lstm/lstm_cell/dropout_4/GreaterEqual:z:0 lstm/lstm_cell/dropout_4/Mul:z:0)lstm/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
lstm/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ѓ
lstm/lstm_cell/dropout_5/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/dropout_5/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЎ
5lstm/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0l
'lstm/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>й
%lstm/lstm_cell/dropout_5/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_5/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
 lstm/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    з
!lstm/lstm_cell/dropout_5/SelectV2SelectV2)lstm/lstm_cell/dropout_5/GreaterEqual:z:0 lstm/lstm_cell/dropout_5/Mul:z:0)lstm/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
lstm/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ѓ
lstm/lstm_cell/dropout_6/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/dropout_6/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЎ
5lstm/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0l
'lstm/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>й
%lstm/lstm_cell/dropout_6/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_6/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
 lstm/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    з
!lstm/lstm_cell/dropout_6/SelectV2SelectV2)lstm/lstm_cell/dropout_6/GreaterEqual:z:0 lstm/lstm_cell/dropout_6/Mul:z:0)lstm/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
lstm/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ѓ
lstm/lstm_cell/dropout_7/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/dropout_7/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЎ
5lstm/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0l
'lstm/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>й
%lstm/lstm_cell/dropout_7/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_7/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
 lstm/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    з
!lstm/lstm_cell/dropout_7/SelectV2SelectV2)lstm/lstm_cell/dropout_7/GreaterEqual:z:0 lstm/lstm_cell/dropout_7/Mul:z:0)lstm/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mulMullstm/strided_slice_2:output:0(lstm/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm/lstm_cell/mul_1Mullstm/strided_slice_2:output:0*lstm/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm/lstm_cell/mul_2Mullstm/strided_slice_2:output:0*lstm/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm/lstm_cell/mul_3Mullstm/strided_slice_2:output:0*lstm/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	2*
dtype0Ы
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
lstm/lstm_cell/MatMulMatMullstm/lstm_cell/mul:z:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/MatMul_1MatMullstm/lstm_cell/mul_1:z:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/MatMul_2MatMullstm/lstm_cell/mul_2:z:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/MatMul_3MatMullstm/lstm_cell/mul_3:z:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@b
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0С
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_4Mullstm/zeros:output:0*lstm/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_5Mullstm/zeros:output:0*lstm/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_6Mullstm/zeros:output:0*lstm/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_7Mullstm/zeros:output:0*lstm/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ж
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_4MatMullstm/lstm_cell/mul_4:z:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Р
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_5MatMullstm/lstm_cell/mul_5:z:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/add_1AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_8Mullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Р
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_6MatMullstm/lstm_cell/mul_6:z:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@g
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_9Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/add_3AddV2lstm/lstm_cell/mul_8:z:0lstm/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Р
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_7MatMullstm/lstm_cell/mul_7:z:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/lstm_cell/mul_10Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   c
!lstm/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :д
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0*lstm/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : m
"lstm/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЧ
lstm/TensorArrayV2_2TensorListReserve+lstm/TensorArrayV2_2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
<lstm/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ѕ
.lstm/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorlstm/transpose_1:y:0Elstm/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШi
lstm/zeros_like	ZerosLikelstm/lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџY
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : И

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros_like:y:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0>lstm/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *#
bodyR
lstm_while_body_3675644*#
condR
lstm_while_cond_3675643*`
output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   х
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsm
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџf
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskj
lstm/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
lstm/transpose_2	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_2/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџb
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџf
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ш

while_body_3675074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	2@
1while_lstm_cell_split_1_readvariableop_resource_0:	<
)while_lstm_cell_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	2>
/while_lstm_cell_split_1_readvariableop_resource:	:
'while_lstm_cell_readvariableop_resource:	@Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ў
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0

while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_3*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ђ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype0Ю
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ф
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_4Mulwhile_placeholder_3$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_5Mulwhile_placeholder_3$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_6Mulwhile_placeholder_3$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_7Mulwhile_placeholder_3$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell/mul_10:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџg
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell/mul_10:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell/add_3:z:0while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/SelectV2:output:0*
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
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@І

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"А
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

Е
&__inference_lstm_layer_call_fn_3676183
inputs_0
unknown:	2
	unknown_0:	
	unknown_1:	@
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_3674246o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0
ч	
Ѕ
F__inference_embedding_layer_call_and_return_conditional_losses_3676172

inputs+
embedding_lookup_3676166:	ш2
identityЂembedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџЦ
embedding_lookupResourceGatherembedding_lookup_3676166Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3676166*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
dtype0Ќ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3676166*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџџџџџџџџџџ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Љ
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3677710

inputs
states_0
states_10
split_readvariableop_resource:	2.
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::эЯT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::эЯV
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?}
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?v
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?v
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?v
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?v
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	2*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@e
mul_4Mulstates_0dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
mul_5Mulstates_0dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
mul_6Mulstates_0dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
mul_7Mulstates_0dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
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
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   h
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

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ@:џџџџџџџџџ@: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_1:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_0:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs

Е
&__inference_lstm_layer_call_fn_3676194
inputs_0
unknown:	2
	unknown_0:	
	unknown_1:	@
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_3674443o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0
	
Ш
while_cond_3674372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3674372___redundant_placeholder05
1while_while_cond_3674372___redundant_placeholder15
1while_while_cond_3674372___redundant_placeholder25
1while_while_cond_3674372___redundant_placeholder3
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
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
фб
д
A__inference_lstm_layer_call_and_return_conditional_losses_3674921

inputs
mask
:
'lstm_cell_split_readvariableop_resource:	28
)lstm_cell_split_1_readvariableop_resource:	4
!lstm_cell_readvariableop_resource:	@
identityЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
:џџџџџџџџџ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
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
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџv

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџe
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџf
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
valueB"џџџџ2   р
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
:џџџџџџџџџ2*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯ 
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ф
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Л
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	2*
dtype0М
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0В
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџИ
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ц
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ_

zeros_like	ZerosLikelstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
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
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_3674704*
condR
while_cond_3674703*`
output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
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
:џџџџџџџџџ@*
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџџџџџџџџџџ2:џџџџџџџџџџџџџџџџџџ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
і8
њ
A__inference_lstm_layer_call_and_return_conditional_losses_3674246

inputs$
lstm_cell_3674162:	2 
lstm_cell_3674164:	$
lstm_cell_3674166:	@
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
:џџџџџџџџџ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
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
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB"џџџџ2   р
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
:џџџџџџџџџ2*
shrink_axis_maskъ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3674162lstm_cell_3674164lstm_cell_3674166*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3674161n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3674162lstm_cell_3674164lstm_cell_3674166*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3674176*
condR
while_cond_3674175*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
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
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
	
Ш
while_cond_3674175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3674175___redundant_placeholder05
1while_while_cond_3674175___redundant_placeholder15
1while_while_cond_3674175___redundant_placeholder25
1while_while_cond_3674175___redundant_placeholder3
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
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
рг
ш

while_body_3677020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	2@
1while_lstm_cell_split_1_readvariableop_resource_0:	<
)while_lstm_cell_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	2>
/while_lstm_cell_split_1_readvariableop_resource:	:
'while_lstm_cell_readvariableop_resource:	@Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ў
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0

while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ? 
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЌ
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ж
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    г
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Є
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Є
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Є
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_3*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Љ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype0Ю
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ф
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_4Mulwhile_placeholder_3+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_5Mulwhile_placeholder_3+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_6Mulwhile_placeholder_3+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_7Mulwhile_placeholder_3+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell/mul_10:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџg
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell/mul_10:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell/add_3:z:0while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/SelectV2:output:0*
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
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@І

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"А
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter


G__inference_sequential_layer_call_and_return_conditional_losses_3674947
embedding_input$
embedding_3674516:	ш2
lstm_3674922:	2
lstm_3674924:	
lstm_3674926:	@
dense_3674941:@
dense_3674943:
identityЂdense/StatefulPartitionedCallЂ!embedding/StatefulPartitionedCallЂlstm/StatefulPartitionedCallј
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_3674516*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_3674515Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding/NotEqualNotEqualembedding_inputembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџА
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0embedding/NotEqual:z:0lstm_3674922lstm_3674924lstm_3674926*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_3674921
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_3674941dense_3674943*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3674940u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЉ
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
)
_user_specified_nameembedding_input
ф

G__inference_sequential_layer_call_and_return_conditional_losses_3675265

inputs$
embedding_3675247:	ш2
lstm_3675252:	2
lstm_3675254:	
lstm_3675256:	@
dense_3675259:@
dense_3675261:
identityЂdense/StatefulPartitionedCallЂ!embedding/StatefulPartitionedCallЂlstm/StatefulPartitionedCallя
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3675247*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_3674515Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџА
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0embedding/NotEqual:z:0lstm_3675252lstm_3675254lstm_3675256*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_3674921
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_3675259dense_3675261*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3674940u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЉ
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ї

lstm_while_cond_3675994&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3
lstm_while_placeholder_4(
$lstm_while_less_lstm_strided_slice_1?
;lstm_while_lstm_while_cond_3675994___redundant_placeholder0?
;lstm_while_lstm_while_cond_3675994___redundant_placeholder1?
;lstm_while_lstm_while_cond_3675994___redundant_placeholder2?
;lstm_while_lstm_while_cond_3675994___redundant_placeholder3?
;lstm_while_lstm_while_cond_3675994___redundant_placeholder4
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: ::::::	

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :UQ

_output_shapes
: 
7
_user_specified_namelstm/while/maximum_iterations:O K

_output_shapes
: 
1
_user_specified_namelstm/while/loop_counter
л
Е
lstm_while_body_3675995&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3
lstm_while_placeholder_4%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0e
alstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensor_0G
4lstm_while_lstm_cell_split_readvariableop_resource_0:	2E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	A
.lstm_while_lstm_cell_readvariableop_resource_0:	@
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5
lstm_while_identity_6#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorc
_lstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensorE
2lstm_while_lstm_cell_split_readvariableop_resource:	2C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	?
,lstm_while_lstm_cell_readvariableop_resource:	@Ђ#lstm/while/lstm_cell/ReadVariableOpЂ%lstm/while/lstm_cell/ReadVariableOp_1Ђ%lstm/while/lstm_cell/ReadVariableOp_2Ђ%lstm/while/lstm_cell/ReadVariableOp_3Ђ)lstm/while/lstm_cell/split/ReadVariableOpЂ+lstm/while/lstm_cell/split_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   П
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
>lstm/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ч
0lstm/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemalstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensor_0lstm_while_placeholderGlstm/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0

$lstm/while/lstm_cell/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯi
$lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ж
lstm/while/lstm_cell/ones_likeFill-lstm/while/lstm_cell/ones_like/Shape:output:0-lstm/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
&lstm/while/lstm_cell/ones_like_1/ShapeShapelstm_while_placeholder_3*
T0*
_output_shapes
::эЯk
&lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?М
 lstm/while/lstm_cell/ones_like_1Fill/lstm/while/lstm_cell/ones_like_1/Shape:output:0/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Б
lstm/while/lstm_cell/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Г
lstm/while/lstm_cell/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Г
lstm/while/lstm_cell/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Г
lstm/while/lstm_cell/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype0н
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
lstm/while/lstm_cell/MatMulMatMullstm/while/lstm_cell/mul:z:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/MatMul_1MatMullstm/while/lstm_cell/mul_1:z:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/MatMul_2MatMullstm/while/lstm_cell/mul_2:z:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/MatMul_3MatMullstm/while/lstm_cell/mul_3:z:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@h
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0г
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitЇ
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_4Mullstm_while_placeholder_3)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_5Mullstm_while_placeholder_3)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_6Mullstm_while_placeholder_3)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_7Mullstm_while_placeholder_3)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskІ
lstm/while/lstm_cell/MatMul_4MatMullstm/while/lstm_cell/mul_4:z:0+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
lstm/while/lstm_cell/SigmoidSigmoidlstm/while/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЈ
lstm/while/lstm_cell/MatMul_5MatMullstm/while/lstm_cell/mul_5:z:0-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ї
lstm/while/lstm_cell/add_1AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm/while/lstm_cell/Sigmoid_1Sigmoidlstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_8Mul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЈ
lstm/while/lstm_cell/MatMul_6MatMullstm/while/lstm_cell/mul_6:z:0-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ї
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_9Mul lstm/while/lstm_cell/Sigmoid:y:0lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/add_3AddV2lstm/while/lstm_cell/mul_8:z:0lstm/while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЈ
lstm/while/lstm_cell/MatMul_7MatMullstm/while/lstm_cell/mul_7:z:0-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ї
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm/while/lstm_cell/Sigmoid_2Sigmoidlstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_10Mul"lstm/while/lstm_cell/Sigmoid_2:y:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@j
lstm/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      І
lstm/while/TileTile7lstm/while/TensorArrayV2Read_1/TensorListGetItem:item:0"lstm/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџІ
lstm/while/SelectV2SelectV2lstm/while/Tile:output:0lstm/while/lstm_cell/mul_10:z:0lstm_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@l
lstm/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Њ
lstm/while/Tile_1Tile7lstm/while/TensorArrayV2Read_1/TensorListGetItem:item:0$lstm/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџl
lstm/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Њ
lstm/while/Tile_2Tile7lstm/while/TensorArrayV2Read_1/TensorListGetItem:item:0$lstm/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџЊ
lstm/while/SelectV2_1SelectV2lstm/while/Tile_1:output:0lstm/while/lstm_cell/mul_10:z:0lstm_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@Љ
lstm/while/SelectV2_2SelectV2lstm/while/Tile_2:output:0lstm/while/lstm_cell/add_3:z:0lstm_while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@w
5lstm/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ќ
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1>lstm/while/TensorArrayV2Write/TensorListSetItem/index:output:0lstm/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_4Identitylstm/while/SelectV2:output:0^lstm/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/Identity_5Identitylstm/while/SelectV2_1:output:0^lstm/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/Identity_6Identitylstm/while/SelectV2_2:output:0^lstm/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"7
lstm_while_identity_6lstm/while/Identity_6:output:0"3
lstm_while_identitylstm/while/Identity:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"Ф
_lstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensoralstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensor_0"М
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :UQ

_output_shapes
: 
7
_user_specified_namelstm/while/maximum_iterations:O K

_output_shapes
: 
1
_user_specified_namelstm/while/loop_counter


ѓ
B__inference_dense_layer_call_and_return_conditional_losses_3674940

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

ш

while_body_3677357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	2@
1while_lstm_cell_split_1_readvariableop_resource_0:	<
)while_lstm_cell_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	2>
/while_lstm_cell_split_1_readvariableop_resource:	:
'while_lstm_cell_readvariableop_resource:	@Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ў
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0

while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_3*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ђ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype0Ю
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ф
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_4Mulwhile_placeholder_3$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_5Mulwhile_placeholder_3$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_6Mulwhile_placeholder_3$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_7Mulwhile_placeholder_3$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell/mul_10:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџg
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell/mul_10:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell/add_3:z:0while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/SelectV2:output:0*
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
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@І

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"А
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Л
д
A__inference_lstm_layer_call_and_return_conditional_losses_3677510

inputs
mask
:
'lstm_cell_split_readvariableop_resource:	28
)lstm_cell_split_1_readvariableop_resource:	4
!lstm_cell_readvariableop_resource:	@
identityЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
:џџџџџџџџџ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
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
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџv

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџe
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџf
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
valueB"џџџџ2   р
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
:џџџџџџџџџ2*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	2*
dtype0М
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0В
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџИ
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ц
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ_

zeros_like	ZerosLikelstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
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
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_3677357*
condR
while_cond_3677356*`
output_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
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
:џџџџџџџџџ@*
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџџџџџџџџџџ2:џџџџџџџџџџџџџџџџџџ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
дs
	
while_body_3676701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	2@
1while_lstm_cell_split_1_readvariableop_resource_0:	<
)while_lstm_cell_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	2>
/while_lstm_cell_split_1_readvariableop_resource:	:
'while_lstm_cell_readvariableop_resource:	@Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ђ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype0Ю
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ф
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@І

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
і8
њ
A__inference_lstm_layer_call_and_return_conditional_losses_3674443

inputs$
lstm_cell_3674359:	2 
lstm_cell_3674361:	$
lstm_cell_3674363:	@
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
:џџџџџџџџџ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
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
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB"џџџџ2   р
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
:џџџџџџџџџ2*
shrink_axis_maskъ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3674359lstm_cell_3674361lstm_cell_3674363*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3674358n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3674359lstm_cell_3674361lstm_cell_3674363*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3674373*
condR
while_cond_3674372*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
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
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs


ѓ
B__inference_dense_layer_call_and_return_conditional_losses_3677530

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
О

'__inference_dense_layer_call_fn_3677519

inputs
unknown:@
	unknown_0:
identityЂStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3674940o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
сЎ
ј
"sequential_lstm_while_body_3673823<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3'
#sequential_lstm_while_placeholder_4;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0{
wsequential_lstm_while_tensorarrayv2read_1_tensorlistgetitem_sequential_lstm_tensorarrayunstack_1_tensorlistfromtensor_0R
?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0:	2P
Asequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0:	L
9sequential_lstm_while_lstm_cell_readvariableop_resource_0:	@"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_5$
 sequential_lstm_while_identity_69
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensory
usequential_lstm_while_tensorarrayv2read_1_tensorlistgetitem_sequential_lstm_tensorarrayunstack_1_tensorlistfromtensorP
=sequential_lstm_while_lstm_cell_split_readvariableop_resource:	2N
?sequential_lstm_while_lstm_cell_split_1_readvariableop_resource:	J
7sequential_lstm_while_lstm_cell_readvariableop_resource:	@Ђ.sequential/lstm/while/lstm_cell/ReadVariableOpЂ0sequential/lstm/while/lstm_cell/ReadVariableOp_1Ђ0sequential/lstm/while/lstm_cell/ReadVariableOp_2Ђ0sequential/lstm/while/lstm_cell/ReadVariableOp_3Ђ4sequential/lstm/while/lstm_cell/split/ReadVariableOpЂ6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   і
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
Isequential/lstm/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ў
;sequential/lstm/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemwsequential_lstm_while_tensorarrayv2read_1_tensorlistgetitem_sequential_lstm_tensorarrayunstack_1_tensorlistfromtensor_0!sequential_lstm_while_placeholderRsequential/lstm/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
­
/sequential/lstm/while/lstm_cell/ones_like/ShapeShape@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯt
/sequential/lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?з
)sequential/lstm/while/lstm_cell/ones_likeFill8sequential/lstm/while/lstm_cell/ones_like/Shape:output:08sequential/lstm/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
1sequential/lstm/while/lstm_cell/ones_like_1/ShapeShape#sequential_lstm_while_placeholder_3*
T0*
_output_shapes
::эЯv
1sequential/lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?н
+sequential/lstm/while/lstm_cell/ones_like_1Fill:sequential/lstm/while/lstm_cell/ones_like_1/Shape:output:0:sequential/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@в
#sequential/lstm/while/lstm_cell/mulMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2д
%sequential/lstm/while/lstm_cell/mul_1Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2д
%sequential/lstm/while/lstm_cell/mul_2Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2д
%sequential/lstm/while/lstm_cell/mul_3Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
/sequential/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
4sequential/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype0ў
%sequential/lstm/while/lstm_cell/splitSplit8sequential/lstm/while/lstm_cell/split/split_dim:output:0<sequential/lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_splitЛ
&sequential/lstm/while/lstm_cell/MatMulMatMul'sequential/lstm/while/lstm_cell/mul:z:0.sequential/lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@П
(sequential/lstm/while/lstm_cell/MatMul_1MatMul)sequential/lstm/while/lstm_cell/mul_1:z:0.sequential/lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@П
(sequential/lstm/while/lstm_cell/MatMul_2MatMul)sequential/lstm/while/lstm_cell/mul_2:z:0.sequential/lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@П
(sequential/lstm/while/lstm_cell/MatMul_3MatMul)sequential/lstm/while/lstm_cell/mul_3:z:0.sequential/lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@s
1sequential/lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Е
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpAsequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0є
'sequential/lstm/while/lstm_cell/split_1Split:sequential/lstm/while/lstm_cell/split_1/split_dim:output:0>sequential/lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitШ
'sequential/lstm/while/lstm_cell/BiasAddBiasAdd0sequential/lstm/while/lstm_cell/MatMul:product:00sequential/lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ь
)sequential/lstm/while/lstm_cell/BiasAdd_1BiasAdd2sequential/lstm/while/lstm_cell/MatMul_1:product:00sequential/lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@Ь
)sequential/lstm/while/lstm_cell/BiasAdd_2BiasAdd2sequential/lstm/while/lstm_cell/MatMul_2:product:00sequential/lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@Ь
)sequential/lstm/while/lstm_cell/BiasAdd_3BiasAdd2sequential/lstm/while/lstm_cell/MatMul_3:product:00sequential/lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@Й
%sequential/lstm/while/lstm_cell/mul_4Mul#sequential_lstm_while_placeholder_34sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Й
%sequential/lstm/while/lstm_cell/mul_5Mul#sequential_lstm_while_placeholder_34sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Й
%sequential/lstm/while/lstm_cell/mul_6Mul#sequential_lstm_while_placeholder_34sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Й
%sequential/lstm/while/lstm_cell/mul_7Mul#sequential_lstm_while_placeholder_34sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Љ
.sequential/lstm/while/lstm_cell/ReadVariableOpReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
3sequential/lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
5sequential/lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
5sequential/lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
-sequential/lstm/while/lstm_cell/strided_sliceStridedSlice6sequential/lstm/while/lstm_cell/ReadVariableOp:value:0<sequential/lstm/while/lstm_cell/strided_slice/stack:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_1:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЧ
(sequential/lstm/while/lstm_cell/MatMul_4MatMul)sequential/lstm/while/lstm_cell/mul_4:z:06sequential/lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ф
#sequential/lstm/while/lstm_cell/addAddV20sequential/lstm/while/lstm_cell/BiasAdd:output:02sequential/lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
'sequential/lstm/while/lstm_cell/SigmoidSigmoid'sequential/lstm/while/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
0sequential/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
5sequential/lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential/lstm/while/lstm_cell/strided_slice_1StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_1:value:0>sequential/lstm/while/lstm_cell/strided_slice_1/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЩ
(sequential/lstm/while/lstm_cell/MatMul_5MatMul)sequential/lstm/while/lstm_cell/mul_5:z:08sequential/lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ш
%sequential/lstm/while/lstm_cell/add_1AddV22sequential/lstm/while/lstm_cell/BiasAdd_1:output:02sequential/lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)sequential/lstm/while/lstm_cell/Sigmoid_1Sigmoid)sequential/lstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@В
%sequential/lstm/while/lstm_cell/mul_8Mul-sequential/lstm/while/lstm_cell/Sigmoid_1:y:0#sequential_lstm_while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
0sequential/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
5sequential/lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential/lstm/while/lstm_cell/strided_slice_2StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_2:value:0>sequential/lstm/while/lstm_cell/strided_slice_2/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЩ
(sequential/lstm/while/lstm_cell/MatMul_6MatMul)sequential/lstm/while/lstm_cell/mul_6:z:08sequential/lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ш
%sequential/lstm/while/lstm_cell/add_2AddV22sequential/lstm/while/lstm_cell/BiasAdd_2:output:02sequential/lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
$sequential/lstm/while/lstm_cell/TanhTanh)sequential/lstm/while/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Е
%sequential/lstm/while/lstm_cell/mul_9Mul+sequential/lstm/while/lstm_cell/Sigmoid:y:0(sequential/lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ж
%sequential/lstm/while/lstm_cell/add_3AddV2)sequential/lstm/while/lstm_cell/mul_8:z:0)sequential/lstm/while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
0sequential/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
5sequential/lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential/lstm/while/lstm_cell/strided_slice_3StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_3:value:0>sequential/lstm/while/lstm_cell/strided_slice_3/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЩ
(sequential/lstm/while/lstm_cell/MatMul_7MatMul)sequential/lstm/while/lstm_cell/mul_7:z:08sequential/lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ш
%sequential/lstm/while/lstm_cell/add_4AddV22sequential/lstm/while/lstm_cell/BiasAdd_3:output:02sequential/lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)sequential/lstm/while/lstm_cell/Sigmoid_2Sigmoid)sequential/lstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
&sequential/lstm/while/lstm_cell/Tanh_1Tanh)sequential/lstm/while/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@К
&sequential/lstm/while/lstm_cell/mul_10Mul-sequential/lstm/while/lstm_cell/Sigmoid_2:y:0*sequential/lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
$sequential/lstm/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ч
sequential/lstm/while/TileTileBsequential/lstm/while/TensorArrayV2Read_1/TensorListGetItem:item:0-sequential/lstm/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџв
sequential/lstm/while/SelectV2SelectV2#sequential/lstm/while/Tile:output:0*sequential/lstm/while/lstm_cell/mul_10:z:0#sequential_lstm_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@w
&sequential/lstm/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ы
sequential/lstm/while/Tile_1TileBsequential/lstm/while/TensorArrayV2Read_1/TensorListGetItem:item:0/sequential/lstm/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџw
&sequential/lstm/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ы
sequential/lstm/while/Tile_2TileBsequential/lstm/while/TensorArrayV2Read_1/TensorListGetItem:item:0/sequential/lstm/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџж
 sequential/lstm/while/SelectV2_1SelectV2%sequential/lstm/while/Tile_1:output:0*sequential/lstm/while/lstm_cell/mul_10:z:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@е
 sequential/lstm/while/SelectV2_2SelectV2%sequential/lstm/while/Tile_2:output:0)sequential/lstm/while/lstm_cell/add_3:z:0#sequential_lstm_while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@
@sequential/lstm/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ј
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1Isequential/lstm/while/TensorArrayV2Write/TensorListSetItem/index:output:0'sequential/lstm/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшв]
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: _
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ї
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: Њ
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations^sequential/lstm/while/NoOp*
T0*
_output_shapes
: 
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: Ж
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: Є
 sequential/lstm/while/Identity_4Identity'sequential/lstm/while/SelectV2:output:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@І
 sequential/lstm/while/Identity_5Identity)sequential/lstm/while/SelectV2_1:output:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@І
 sequential/lstm/while/Identity_6Identity)sequential/lstm/while/SelectV2_2:output:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
sequential/lstm/while/NoOpNoOp/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"M
 sequential_lstm_while_identity_6)sequential/lstm/while/Identity_6:output:0"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"t
7sequential_lstm_while_lstm_cell_readvariableop_resource9sequential_lstm_while_lstm_cell_readvariableop_resource_0"
?sequential_lstm_while_lstm_cell_split_1_readvariableop_resourceAsequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0"
=sequential_lstm_while_lstm_cell_split_readvariableop_resource?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"№
usequential_lstm_while_tensorarrayv2read_1_tensorlistgetitem_sequential_lstm_tensorarrayunstack_1_tensorlistfromtensorwsequential_lstm_while_tensorarrayv2read_1_tensorlistgetitem_sequential_lstm_tensorarrayunstack_1_tensorlistfromtensor_0"ш
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2d
0sequential/lstm/while/lstm_cell/ReadVariableOp_10sequential/lstm/while/lstm_cell/ReadVariableOp_12d
0sequential/lstm/while/lstm_cell/ReadVariableOp_20sequential/lstm/while/lstm_cell/ReadVariableOp_22d
0sequential/lstm/while/lstm_cell/ReadVariableOp_30sequential/lstm/while/lstm_cell/ReadVariableOp_32`
.sequential/lstm/while/lstm_cell/ReadVariableOp.sequential/lstm/while/lstm_cell/ReadVariableOp2l
4sequential/lstm/while/lstm_cell/split/ReadVariableOp4sequential/lstm/while/lstm_cell/split/ReadVariableOp2p
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :`\

_output_shapes
: 
B
_user_specified_name*(sequential/lstm/while/maximum_iterations:Z V

_output_shapes
: 
<
_user_specified_name$"sequential/lstm/while/loop_counter
Ѕ	

,__inference_sequential_layer_call_fn_3675280
embedding_input
unknown:	ш2
	unknown_0:	2
	unknown_1:	
	unknown_2:	@
	unknown_3:@
	unknown_4:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_3675265o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
)
_user_specified_nameembedding_input
	

,__inference_sequential_layer_call_fn_3675453

inputs
unknown:	ш2
	unknown_0:	2
	unknown_1:	
	unknown_2:	@
	unknown_3:@
	unknown_4:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_3675303o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	

,__inference_sequential_layer_call_fn_3675436

inputs
unknown:	ш2
	unknown_0:	2
	unknown_1:	
	unknown_2:	@
	unknown_3:@
	unknown_4:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_3675265o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
в


while_cond_3675073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice_15
1while_while_cond_3675073___redundant_placeholder05
1while_while_cond_3675073___redundant_placeholder15
1while_while_cond_3675073___redundant_placeholder25
1while_while_cond_3675073___redundant_placeholder35
1while_while_cond_3675073___redundant_placeholder4
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
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: ::::::	

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter


G__inference_sequential_layer_call_and_return_conditional_losses_3675241
embedding_input$
embedding_3674950:	ш2
lstm_3675228:	2
lstm_3675230:	
lstm_3675232:	@
dense_3675235:@
dense_3675237:
identityЂdense/StatefulPartitionedCallЂ!embedding/StatefulPartitionedCallЂlstm/StatefulPartitionedCallј
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_3674950*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_3674515Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding/NotEqualNotEqualembedding_inputembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџА
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0embedding/NotEqual:z:0lstm_3675228lstm_3675230lstm_3675232*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_3675227
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_3675235dense_3675237*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3674940u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЉ
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
)
_user_specified_nameembedding_input
АС
	
while_body_3676392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	2@
1while_lstm_cell_split_1_readvariableop_resource_0:	<
)while_lstm_cell_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	2>
/while_lstm_cell_split_1_readvariableop_resource:	:
'while_lstm_cell_readvariableop_resource:	@Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ? 
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЌ
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ж
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    г
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Є
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Є
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Є
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Љ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype0Ю
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ф
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@І

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
рг
ш

while_body_3674704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	2@
1while_lstm_cell_split_1_readvariableop_resource_0:	<
)while_lstm_cell_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	2>
/while_lstm_cell_split_1_readvariableop_resource:	:
'while_lstm_cell_readvariableop_resource:	@Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ў
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0

while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ї
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ? 
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЌ
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ж
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    г
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Є
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Є
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Є
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_3*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯА
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>м
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    л
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Љ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype0Ю
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ф
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_4Mulwhile_placeholder_3+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_5Mulwhile_placeholder_3+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_6Mulwhile_placeholder_3+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_7Mulwhile_placeholder_3+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell/mul_10:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџg
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell/mul_10:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell/add_3:z:0while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ш
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/SelectV2:output:0*
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
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@І

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"А
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ѕ	

,__inference_sequential_layer_call_fn_3675318
embedding_input
unknown:	ш2
	unknown_0:	2
	unknown_1:	
	unknown_2:	@
	unknown_3:@
	unknown_4:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_3675303o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
)
_user_specified_nameembedding_input
ЫЩ
с
 __inference__traced_save_3677977
file_prefix>
+read_disablecopyonread_embedding_embeddings:	ш27
%read_1_disablecopyonread_dense_kernel:@1
#read_2_disablecopyonread_dense_bias:A
.read_3_disablecopyonread_lstm_lstm_cell_kernel:	2K
8read_4_disablecopyonread_lstm_lstm_cell_recurrent_kernel:	@;
,read_5_disablecopyonread_lstm_lstm_cell_bias:	,
"read_6_disablecopyonread_adam_iter:	 .
$read_7_disablecopyonread_adam_beta_1: .
$read_8_disablecopyonread_adam_beta_2: -
#read_9_disablecopyonread_adam_decay: 6
,read_10_disablecopyonread_adam_learning_rate: +
!read_11_disablecopyonread_total_1: +
!read_12_disablecopyonread_count_1: )
read_13_disablecopyonread_total: )
read_14_disablecopyonread_count: H
5read_15_disablecopyonread_adam_embedding_embeddings_m:	ш2?
-read_16_disablecopyonread_adam_dense_kernel_m:@9
+read_17_disablecopyonread_adam_dense_bias_m:I
6read_18_disablecopyonread_adam_lstm_lstm_cell_kernel_m:	2S
@read_19_disablecopyonread_adam_lstm_lstm_cell_recurrent_kernel_m:	@C
4read_20_disablecopyonread_adam_lstm_lstm_cell_bias_m:	H
5read_21_disablecopyonread_adam_embedding_embeddings_v:	ш2?
-read_22_disablecopyonread_adam_dense_kernel_v:@9
+read_23_disablecopyonread_adam_dense_bias_v:I
6read_24_disablecopyonread_adam_lstm_lstm_cell_kernel_v:	2S
@read_25_disablecopyonread_adam_lstm_lstm_cell_recurrent_kernel_v:	@C
4read_26_disablecopyonread_adam_lstm_lstm_cell_bias_v:	
savev2_const
identity_55ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
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
: }
Read/DisableCopyOnReadDisableCopyOnRead+read_disablecopyonread_embedding_embeddings"/device:CPU:0*
_output_shapes
 Ј
Read/ReadVariableOpReadVariableOp+read_disablecopyonread_embedding_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ш2*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ш2b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	ш2y
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:@w
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_dense_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_3/DisableCopyOnReadDisableCopyOnRead.read_3_disablecopyonread_lstm_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Џ
Read_3/ReadVariableOpReadVariableOp.read_3_disablecopyonread_lstm_lstm_cell_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2d

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	2
Read_4/DisableCopyOnReadDisableCopyOnRead8read_4_disablecopyonread_lstm_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Й
Read_4/ReadVariableOpReadVariableOp8read_4_disablecopyonread_lstm_lstm_cell_recurrent_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@d

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	@
Read_5/DisableCopyOnReadDisableCopyOnRead,read_5_disablecopyonread_lstm_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Љ
Read_5/ReadVariableOpReadVariableOp,read_5_disablecopyonread_lstm_lstm_cell_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:v
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_adam_iter^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_adam_beta_1^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_adam_beta_2^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: w
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_adam_decay^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 І
Read_10/ReadVariableOpReadVariableOp,read_10_disablecopyonread_adam_learning_rate^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_11/DisableCopyOnReadDisableCopyOnRead!read_11_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 
Read_11/ReadVariableOpReadVariableOp!read_11_disablecopyonread_total_1^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_12/DisableCopyOnReadDisableCopyOnRead!read_12_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 
Read_12/ReadVariableOpReadVariableOp!read_12_disablecopyonread_count_1^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_13/DisableCopyOnReadDisableCopyOnReadread_13_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_13/ReadVariableOpReadVariableOpread_13_disablecopyonread_total^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_14/DisableCopyOnReadDisableCopyOnReadread_14_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_14/ReadVariableOpReadVariableOpread_14_disablecopyonread_count^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_adam_embedding_embeddings_m"/device:CPU:0*
_output_shapes
 И
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_adam_embedding_embeddings_m^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ш2*
dtype0p
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ш2f
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	ш2
Read_16/DisableCopyOnReadDisableCopyOnRead-read_16_disablecopyonread_adam_dense_kernel_m"/device:CPU:0*
_output_shapes
 Џ
Read_16/ReadVariableOpReadVariableOp-read_16_disablecopyonread_adam_dense_kernel_m^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@
Read_17/DisableCopyOnReadDisableCopyOnRead+read_17_disablecopyonread_adam_dense_bias_m"/device:CPU:0*
_output_shapes
 Љ
Read_17/ReadVariableOpReadVariableOp+read_17_disablecopyonread_adam_dense_bias_m^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_18/DisableCopyOnReadDisableCopyOnRead6read_18_disablecopyonread_adam_lstm_lstm_cell_kernel_m"/device:CPU:0*
_output_shapes
 Й
Read_18/ReadVariableOpReadVariableOp6read_18_disablecopyonread_adam_lstm_lstm_cell_kernel_m^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	2
Read_19/DisableCopyOnReadDisableCopyOnRead@read_19_disablecopyonread_adam_lstm_lstm_cell_recurrent_kernel_m"/device:CPU:0*
_output_shapes
 У
Read_19/ReadVariableOpReadVariableOp@read_19_disablecopyonread_adam_lstm_lstm_cell_recurrent_kernel_m^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@f
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	@
Read_20/DisableCopyOnReadDisableCopyOnRead4read_20_disablecopyonread_adam_lstm_lstm_cell_bias_m"/device:CPU:0*
_output_shapes
 Г
Read_20/ReadVariableOpReadVariableOp4read_20_disablecopyonread_adam_lstm_lstm_cell_bias_m^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_adam_embedding_embeddings_v"/device:CPU:0*
_output_shapes
 И
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_adam_embedding_embeddings_v^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ш2*
dtype0p
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ш2f
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:	ш2
Read_22/DisableCopyOnReadDisableCopyOnRead-read_22_disablecopyonread_adam_dense_kernel_v"/device:CPU:0*
_output_shapes
 Џ
Read_22/ReadVariableOpReadVariableOp-read_22_disablecopyonread_adam_dense_kernel_v^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:@
Read_23/DisableCopyOnReadDisableCopyOnRead+read_23_disablecopyonread_adam_dense_bias_v"/device:CPU:0*
_output_shapes
 Љ
Read_23/ReadVariableOpReadVariableOp+read_23_disablecopyonread_adam_dense_bias_v^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_24/DisableCopyOnReadDisableCopyOnRead6read_24_disablecopyonread_adam_lstm_lstm_cell_kernel_v"/device:CPU:0*
_output_shapes
 Й
Read_24/ReadVariableOpReadVariableOp6read_24_disablecopyonread_adam_lstm_lstm_cell_kernel_v^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2f
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	2
Read_25/DisableCopyOnReadDisableCopyOnRead@read_25_disablecopyonread_adam_lstm_lstm_cell_recurrent_kernel_v"/device:CPU:0*
_output_shapes
 У
Read_25/ReadVariableOpReadVariableOp@read_25_disablecopyonread_adam_lstm_lstm_cell_recurrent_kernel_v^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@*
dtype0p
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@f
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:	@
Read_26/DisableCopyOnReadDisableCopyOnRead4read_26_disablecopyonread_adam_lstm_lstm_cell_bias_v"/device:CPU:0*
_output_shapes
 Г
Read_26/ReadVariableOpReadVariableOp4read_26_disablecopyonread_adam_lstm_lstm_cell_bias_v^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:§
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*І
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЅ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B Р
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 **
dtypes 
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_54Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_55IdentityIdentity_54:output:0^NoOp*
T0*
_output_shapes
: к
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_55Identity_55:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
у

"sequential_lstm_while_cond_3673822<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3'
#sequential_lstm_while_placeholder_4>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1U
Qsequential_lstm_while_sequential_lstm_while_cond_3673822___redundant_placeholder0U
Qsequential_lstm_while_sequential_lstm_while_cond_3673822___redundant_placeholder1U
Qsequential_lstm_while_sequential_lstm_while_cond_3673822___redundant_placeholder2U
Qsequential_lstm_while_sequential_lstm_while_cond_3673822___redundant_placeholder3U
Qsequential_lstm_while_sequential_lstm_while_cond_3673822___redundant_placeholder4"
sequential_lstm_while_identity
Ђ
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: k
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: ::::::	

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :`\

_output_shapes
: 
B
_user_specified_name*(sequential/lstm/while/maximum_iterations:Z V

_output_shapes
: 
<
_user_specified_name$"sequential/lstm/while/loop_counter
ч
є
+__inference_lstm_cell_layer_call_fn_3677564

inputs
states_0
states_1
unknown:	2
	unknown_0:	
	unknown_1:	@
identity

identity_1

identity_2ЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3674358o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ@:џџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_1:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_0:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ч	
Ѕ
F__inference_embedding_layer_call_and_return_conditional_losses_3674515

inputs+
embedding_lookup_3674509:	ш2
identityЂembedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџЦ
embedding_lookupResourceGatherembedding_lookup_3674509Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3674509*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
dtype0Ќ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3674509*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџџџџџџџџџџ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ч
є
+__inference_lstm_cell_layer_call_fn_3677547

inputs
states_0
states_1
unknown:	2
	unknown_0:	
	unknown_1:	@
identity

identity_1

identity_2ЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3674161o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ@:џџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_1:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_0:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
њ
Ї
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3674161

inputs

states
states_10
split_readvariableop_resource:	2.
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::эЯT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2U
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::эЯV
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?}
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?v
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?v
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?v
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?v
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ќ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	2*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@c
mul_4Mulstatesdropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
mul_5Mulstatesdropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
mul_6Mulstatesdropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
mul_7Mulstatesdropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
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
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   h
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

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ@:џџџџџџџџџ@: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ы

+__inference_embedding_layer_call_fn_3676162

inputs
unknown:	ш2
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_3674515|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџџџџџџџџџџ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
в


while_cond_3677356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice_15
1while_while_cond_3677356___redundant_placeholder05
1while_while_cond_3677356___redundant_placeholder15
1while_while_cond_3677356___redundant_placeholder25
1while_while_cond_3677356___redundant_placeholder35
1while_while_cond_3677356___redundant_placeholder4
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
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: ::::::	

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ЙЦ
Ь
A__inference_lstm_layer_call_and_return_conditional_losses_3676591
inputs_0:
'lstm_cell_split_readvariableop_resource:	28
)lstm_cell_split_1_readvariableop_resource:	4
!lstm_cell_readvariableop_resource:	@
identityЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
:џџџџџџџџџ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
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
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB"џџџџ2   р
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
:џџџџџџџџџ2*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2q
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯ 
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ф
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Л
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЄ
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ъ
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	2*
dtype0М
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0В
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3676392*
condR
while_cond_3676391*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
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
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0
	
Ш
while_cond_3676391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3676391___redundant_placeholder05
1while_while_cond_3676391___redundant_placeholder15
1while_while_cond_3676391___redundant_placeholder25
1while_while_cond_3676391___redundant_placeholder3
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
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ЊD
Ї
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3674358

inputs

states
states_10
split_readvariableop_resource:	2.
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::эЯT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2U
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::эЯV
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?}
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Z
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Z
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Z
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	2*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@\
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@\
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@\
mul_6Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@\
mul_7Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
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
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ѕ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   h
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

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Р
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ@:џџџџџџџџџ@: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ух
Е
lstm_while_body_3675644&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3
lstm_while_placeholder_4%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0e
alstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensor_0G
4lstm_while_lstm_cell_split_readvariableop_resource_0:	2E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	A
.lstm_while_lstm_cell_readvariableop_resource_0:	@
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5
lstm_while_identity_6#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorc
_lstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensorE
2lstm_while_lstm_cell_split_readvariableop_resource:	2C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	?
,lstm_while_lstm_cell_readvariableop_resource:	@Ђ#lstm/while/lstm_cell/ReadVariableOpЂ%lstm/while/lstm_cell/ReadVariableOp_1Ђ%lstm/while/lstm_cell/ReadVariableOp_2Ђ%lstm/while/lstm_cell/ReadVariableOp_3Ђ)lstm/while/lstm_cell/split/ReadVariableOpЂ+lstm/while/lstm_cell/split_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   П
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
>lstm/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ч
0lstm/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemalstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensor_0lstm_while_placeholderGlstm/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0

$lstm/while/lstm_cell/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯi
$lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ж
lstm/while/lstm_cell/ones_likeFill-lstm/while/lstm_cell/ones_like/Shape:output:0-lstm/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
"lstm/while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Џ
 lstm/while/lstm_cell/dropout/MulMul'lstm/while/lstm_cell/ones_like:output:0+lstm/while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
"lstm/while/lstm_cell/dropout/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЖ
9lstm/while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform+lstm/while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0p
+lstm/while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>х
)lstm/while/lstm_cell/dropout/GreaterEqualGreaterEqualBlstm/while/lstm_cell/dropout/random_uniform/RandomUniform:output:04lstm/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
$lstm/while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ч
%lstm/while/lstm_cell/dropout/SelectV2SelectV2-lstm/while/lstm_cell/dropout/GreaterEqual:z:0$lstm/while/lstm_cell/dropout/Mul:z:0-lstm/while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
$lstm/while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Г
"lstm/while/lstm_cell/dropout_1/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
$lstm/while/lstm_cell/dropout_1/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯК
;lstm/while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0r
-lstm/while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ы
+lstm/while/lstm_cell/dropout_1/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2k
&lstm/while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
'lstm/while/lstm_cell/dropout_1/SelectV2SelectV2/lstm/while/lstm_cell/dropout_1/GreaterEqual:z:0&lstm/while/lstm_cell/dropout_1/Mul:z:0/lstm/while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
$lstm/while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Г
"lstm/while/lstm_cell/dropout_2/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
$lstm/while/lstm_cell/dropout_2/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯК
;lstm/while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0r
-lstm/while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ы
+lstm/while/lstm_cell/dropout_2/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2k
&lstm/while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
'lstm/while/lstm_cell/dropout_2/SelectV2SelectV2/lstm/while/lstm_cell/dropout_2/GreaterEqual:z:0&lstm/while/lstm_cell/dropout_2/Mul:z:0/lstm/while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2i
$lstm/while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Г
"lstm/while/lstm_cell/dropout_3/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
$lstm/while/lstm_cell/dropout_3/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯК
;lstm/while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0r
-lstm/while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ы
+lstm/while/lstm_cell/dropout_3/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2k
&lstm/while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
'lstm/while/lstm_cell/dropout_3/SelectV2SelectV2/lstm/while/lstm_cell/dropout_3/GreaterEqual:z:0&lstm/while/lstm_cell/dropout_3/Mul:z:0/lstm/while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
&lstm/while/lstm_cell/ones_like_1/ShapeShapelstm_while_placeholder_3*
T0*
_output_shapes
::эЯk
&lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?М
 lstm/while/lstm_cell/ones_like_1Fill/lstm/while/lstm_cell/ones_like_1/Shape:output:0/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
$lstm/while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Е
"lstm/while/lstm_cell/dropout_4/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
$lstm/while/lstm_cell/dropout_4/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯК
;lstm/while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0r
-lstm/while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ы
+lstm/while/lstm_cell/dropout_4/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
&lstm/while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
'lstm/while/lstm_cell/dropout_4/SelectV2SelectV2/lstm/while/lstm_cell/dropout_4/GreaterEqual:z:0&lstm/while/lstm_cell/dropout_4/Mul:z:0/lstm/while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
$lstm/while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Е
"lstm/while/lstm_cell/dropout_5/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
$lstm/while/lstm_cell/dropout_5/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯК
;lstm/while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0r
-lstm/while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ы
+lstm/while/lstm_cell/dropout_5/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
&lstm/while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
'lstm/while/lstm_cell/dropout_5/SelectV2SelectV2/lstm/while/lstm_cell/dropout_5/GreaterEqual:z:0&lstm/while/lstm_cell/dropout_5/Mul:z:0/lstm/while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
$lstm/while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Е
"lstm/while/lstm_cell/dropout_6/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
$lstm/while/lstm_cell/dropout_6/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯК
;lstm/while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0r
-lstm/while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ы
+lstm/while/lstm_cell/dropout_6/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
&lstm/while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
'lstm/while/lstm_cell/dropout_6/SelectV2SelectV2/lstm/while/lstm_cell/dropout_6/GreaterEqual:z:0&lstm/while/lstm_cell/dropout_6/Mul:z:0/lstm/while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
$lstm/while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Е
"lstm/while/lstm_cell/dropout_7/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
$lstm/while/lstm_cell/dropout_7/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯК
;lstm/while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0r
-lstm/while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>ы
+lstm/while/lstm_cell/dropout_7/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
&lstm/while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
'lstm/while/lstm_cell/dropout_7/SelectV2SelectV2/lstm/while/lstm_cell/dropout_7/GreaterEqual:z:0&lstm/while/lstm_cell/dropout_7/Mul:z:0/lstm/while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@И
lstm/while/lstm_cell/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0.lstm/while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2М
lstm/while/lstm_cell/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:00lstm/while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2М
lstm/while/lstm_cell/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:00lstm/while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2М
lstm/while/lstm_cell/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:00lstm/while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype0н
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2@:2@:2@:2@*
	num_split
lstm/while/lstm_cell/MatMulMatMullstm/while/lstm_cell/mul:z:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/MatMul_1MatMullstm/while/lstm_cell/mul_1:z:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/MatMul_2MatMullstm/while/lstm_cell/mul_2:z:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/MatMul_3MatMullstm/while/lstm_cell/mul_3:z:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@h
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0г
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitЇ
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_4Mullstm_while_placeholder_30lstm/while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_5Mullstm_while_placeholder_30lstm/while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_6Mullstm_while_placeholder_30lstm/while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_7Mullstm_while_placeholder_30lstm/while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskІ
lstm/while/lstm_cell/MatMul_4MatMullstm/while/lstm_cell/mul_4:z:0+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
lstm/while/lstm_cell/SigmoidSigmoidlstm/while/lstm_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЈ
lstm/while/lstm_cell/MatMul_5MatMullstm/while/lstm_cell/mul_5:z:0-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ї
lstm/while/lstm_cell/add_1AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm/while/lstm_cell/Sigmoid_1Sigmoidlstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_8Mul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЈ
lstm/while/lstm_cell/MatMul_6MatMullstm/while/lstm_cell/mul_6:z:0-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ї
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@s
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_9Mul lstm/while/lstm_cell/Sigmoid:y:0lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/add_3AddV2lstm/while/lstm_cell/mul_8:z:0lstm/while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЈ
lstm/while/lstm_cell/MatMul_7MatMullstm/while/lstm_cell/mul_7:z:0-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ї
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
lstm/while/lstm_cell/Sigmoid_2Sigmoidlstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@u
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/lstm_cell/mul_10Mul"lstm/while/lstm_cell/Sigmoid_2:y:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@j
lstm/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      І
lstm/while/TileTile7lstm/while/TensorArrayV2Read_1/TensorListGetItem:item:0"lstm/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџІ
lstm/while/SelectV2SelectV2lstm/while/Tile:output:0lstm/while/lstm_cell/mul_10:z:0lstm_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@l
lstm/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Њ
lstm/while/Tile_1Tile7lstm/while/TensorArrayV2Read_1/TensorListGetItem:item:0$lstm/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџl
lstm/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Њ
lstm/while/Tile_2Tile7lstm/while/TensorArrayV2Read_1/TensorListGetItem:item:0$lstm/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџЊ
lstm/while/SelectV2_1SelectV2lstm/while/Tile_1:output:0lstm/while/lstm_cell/mul_10:z:0lstm_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@Љ
lstm/while/SelectV2_2SelectV2lstm/while/Tile_2:output:0lstm/while/lstm_cell/add_3:z:0lstm_while_placeholder_4*
T0*'
_output_shapes
:џџџџџџџџџ@w
5lstm/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ќ
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1>lstm/while/TensorArrayV2Write/TensorListSetItem/index:output:0lstm/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_4Identitylstm/while/SelectV2:output:0^lstm/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/Identity_5Identitylstm/while/SelectV2_1:output:0^lstm/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
lstm/while/Identity_6Identitylstm/while/SelectV2_2:output:0^lstm/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"7
lstm_while_identity_6lstm/while/Identity_6:output:0"3
lstm_while_identitylstm/while/Identity:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"Ф
_lstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensoralstm_while_tensorarrayv2read_1_tensorlistgetitem_lstm_tensorarrayunstack_1_tensorlistfromtensor_0"М
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :UQ

_output_shapes
: 
7
_user_specified_namelstm/while/maximum_iterations:O K

_output_shapes
: 
1
_user_specified_namelstm/while/loop_counter
в


while_cond_3674703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice_15
1while_while_cond_3674703___redundant_placeholder05
1while_while_cond_3674703___redundant_placeholder15
1while_while_cond_3674703___redundant_placeholder25
1while_while_cond_3674703___redundant_placeholder35
1while_while_cond_3674703___redundant_placeholder4
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
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: ::::::	

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ф

G__inference_sequential_layer_call_and_return_conditional_losses_3675303

inputs$
embedding_3675285:	ш2
lstm_3675290:	2
lstm_3675292:	
lstm_3675294:	@
dense_3675297:@
dense_3675299:
identityЂdense/StatefulPartitionedCallЂ!embedding/StatefulPartitionedCallЂlstm/StatefulPartitionedCallя
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3675285*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_3674515Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџА
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0embedding/NotEqual:z:0lstm_3675290lstm_3675292lstm_3675294*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_3675227
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_3675297dense_3675299*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3674940u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЉ
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ

%__inference_signature_wrapper_3675419
embedding_input
unknown:	ш2
	unknown_0:	2
	unknown_1:	
	unknown_2:	@
	unknown_3:@
	unknown_4:
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_3673983o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
)
_user_specified_nameembedding_input
	
Н
&__inference_lstm_layer_call_fn_3676218

inputs
mask

unknown:	2
	unknown_0:	
	unknown_1:	@
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_3675227o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџџџџџџџџџџ2:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
	
Ш
while_cond_3676700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3676700___redundant_placeholder05
1while_while_cond_3676700___redundant_placeholder15
1while_while_cond_3676700___redundant_placeholder25
1while_while_cond_3676700___redundant_placeholder3
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
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter"ѓ
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*С
serving_default­
T
embedding_inputA
!serving_default_embedding_input:0џџџџџџџџџџџџџџџџџџ9
dense0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:яЌ
л
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Л
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
%1
&2
'3
#4
$5"
trackable_list_wrapper
J
0
%1
&2
'3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
л
-trace_0
.trace_1
/trace_2
0trace_32№
,__inference_sequential_layer_call_fn_3675280
,__inference_sequential_layer_call_fn_3675318
,__inference_sequential_layer_call_fn_3675436
,__inference_sequential_layer_call_fn_3675453Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z-trace_0z.trace_1z/trace_2z0trace_3
Ч
1trace_0
2trace_1
3trace_2
4trace_32м
G__inference_sequential_layer_call_and_return_conditional_losses_3674947
G__inference_sequential_layer_call_and_return_conditional_losses_3675241
G__inference_sequential_layer_call_and_return_conditional_losses_3675868
G__inference_sequential_layer_call_and_return_conditional_losses_3676155Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z1trace_0z2trace_1z3trace_2z4trace_3
еBв
"__inference__wrapped_model_3673983embedding_input"
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
П
5iter

6beta_1

7beta_2
	8decay
9learning_ratems#mt$mu%mv&mw'mxvy#vz$v{%v|&v}'v~"
	optimizer
,
:serving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
х
@trace_02Ш
+__inference_embedding_layer_call_fn_3676162
В
FullArgSpec
args

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
annotationsЊ *
 z@trace_0

Atrace_02у
F__inference_embedding_layer_call_and_return_conditional_losses_3676172
В
FullArgSpec
args

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
annotationsЊ *
 zAtrace_0
':%	ш22embedding/embeddings
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
и
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32э
&__inference_lstm_layer_call_fn_3676183
&__inference_lstm_layer_call_fn_3676194
&__inference_lstm_layer_call_fn_3676206
&__inference_lstm_layer_call_fn_3676218Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
Ф
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32й
A__inference_lstm_layer_call_and_return_conditional_losses_3676591
A__inference_lstm_layer_call_and_return_conditional_losses_3676836
A__inference_lstm_layer_call_and_return_conditional_losses_3677237
A__inference_lstm_layer_call_and_return_conditional_losses_3677510Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
"
_generic_user_object
ј
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
W
state_size

%kernel
&recurrent_kernel
'bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
с
]trace_02Ф
'__inference_dense_layer_call_fn_3677519
В
FullArgSpec
args

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
annotationsЊ *
 z]trace_0
ќ
^trace_02п
B__inference_dense_layer_call_and_return_conditional_losses_3677530
В
FullArgSpec
args

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
annotationsЊ *
 z^trace_0
:@2dense/kernel
:2
dense/bias
(:&	22lstm/lstm_cell/kernel
2:0	@2lstm/lstm_cell/recurrent_kernel
": 2lstm/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
,__inference_sequential_layer_call_fn_3675280embedding_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
,__inference_sequential_layer_call_fn_3675318embedding_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓB№
,__inference_sequential_layer_call_fn_3675436inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓB№
,__inference_sequential_layer_call_fn_3675453inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_layer_call_and_return_conditional_losses_3674947embedding_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_layer_call_and_return_conditional_losses_3675241embedding_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_layer_call_and_return_conditional_losses_3675868inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_layer_call_and_return_conditional_losses_3676155inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
дBб
%__inference_signature_wrapper_3675419embedding_input"
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
еBв
+__inference_embedding_layer_call_fn_3676162inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
№Bэ
F__inference_embedding_layer_call_and_return_conditional_losses_3676172inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
&__inference_lstm_layer_call_fn_3676183inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
&__inference_lstm_layer_call_fn_3676194inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
&__inference_lstm_layer_call_fn_3676206inputsmask"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
&__inference_lstm_layer_call_fn_3676218inputsmask"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_lstm_layer_call_and_return_conditional_losses_3676591inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_lstm_layer_call_and_return_conditional_losses_3676836inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЃB 
A__inference_lstm_layer_call_and_return_conditional_losses_3677237inputsmask"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЃB 
A__inference_lstm_layer_call_and_return_conditional_losses_3677510inputsmask"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
Ч
ftrace_0
gtrace_12
+__inference_lstm_cell_layer_call_fn_3677547
+__inference_lstm_cell_layer_call_fn_3677564Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zftrace_0zgtrace_1
§
htrace_0
itrace_12Ц
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3677710
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3677792Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zhtrace_0zitrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
бBЮ
'__inference_dense_layer_call_fn_3677519inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
ьBщ
B__inference_dense_layer_call_and_return_conditional_losses_3677530inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
N
j	variables
k	keras_api
	ltotal
	mcount"
_tf_keras_metric
^
n	variables
o	keras_api
	ptotal
	qcount
r
_fn_kwargs"
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
B
+__inference_lstm_cell_layer_call_fn_3677547inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
+__inference_lstm_cell_layer_call_fn_3677564inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3677710inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3677792inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
.
p0
q1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
,:*	ш22Adam/embedding/embeddings/m
#:!@2Adam/dense/kernel/m
:2Adam/dense/bias/m
-:+	22Adam/lstm/lstm_cell/kernel/m
7:5	@2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%2Adam/lstm/lstm_cell/bias/m
,:*	ш22Adam/embedding/embeddings/v
#:!@2Adam/dense/kernel/v
:2Adam/dense/bias/v
-:+	22Adam/lstm/lstm_cell/kernel/v
7:5	@2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%2Adam/lstm/lstm_cell/bias/v 
"__inference__wrapped_model_3673983z%'&#$AЂ>
7Ђ4
2/
embedding_inputџџџџџџџџџџџџџџџџџџ
Њ "-Њ*
(
dense
denseџџџџџџџџџЉ
B__inference_dense_layer_call_and_return_conditional_losses_3677530c#$/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
'__inference_dense_layer_call_fn_3677519X#$/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "!
unknownџџџџџџџџџТ
F__inference_embedding_layer_call_and_return_conditional_losses_3676172x8Ђ5
.Ђ+
)&
inputsџџџџџџџџџџџџџџџџџџ
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ2
 
+__inference_embedding_layer_call_fn_3676162m8Ђ5
.Ђ+
)&
inputsџџџџџџџџџџџџџџџџџџ
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ2п
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3677710%'&Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states_0џџџџџџџџџ@
"
states_1џџџџџџџџџ@
p
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ@
SP
&#
tensor_0_1_0џџџџџџџџџ@
&#
tensor_0_1_1џџџџџџџџџ@
 п
F__inference_lstm_cell_layer_call_and_return_conditional_losses_3677792%'&Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states_0џџџџџџџџџ@
"
states_1џџџџџџџџџ@
p 
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ@
SP
&#
tensor_0_1_0џџџџџџџџџ@
&#
tensor_0_1_1џџџџџџџџџ@
 В
+__inference_lstm_cell_layer_call_fn_3677547%'&Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states_0џџџџџџџџџ@
"
states_1џџџџџџџџџ@
p
Њ "xЂu
"
tensor_0џџџџџџџџџ@
OL
$!

tensor_1_0џџџџџџџџџ@
$!

tensor_1_1џџџџџџџџџ@В
+__inference_lstm_cell_layer_call_fn_3677564%'&Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states_0џџџџџџџџџ@
"
states_1џџџџџџџџџ@
p 
Њ "xЂu
"
tensor_0џџџџџџџџџ@
OL
$!

tensor_1_0џџџџџџџџџ@
$!

tensor_1_1џџџџџџџџџ@Ъ
A__inference_lstm_layer_call_and_return_conditional_losses_3676591%'&OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 Ъ
A__inference_lstm_layer_call_and_return_conditional_losses_3676836%'&OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 ш
A__inference_lstm_layer_call_and_return_conditional_losses_3677237Ђ%'&mЂj
cЂ`
-*
inputsџџџџџџџџџџџџџџџџџџ2
'$
maskџџџџџџџџџџџџџџџџџџ

p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 ш
A__inference_lstm_layer_call_and_return_conditional_losses_3677510Ђ%'&mЂj
cЂ`
-*
inputsџџџџџџџџџџџџџџџџџџ2
'$
maskџџџџџџџџџџџџџџџџџџ

p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 Ѓ
&__inference_lstm_layer_call_fn_3676183y%'&OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "!
unknownџџџџџџџџџ@Ѓ
&__inference_lstm_layer_call_fn_3676194y%'&OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "!
unknownџџџџџџџџџ@Т
&__inference_lstm_layer_call_fn_3676206%'&mЂj
cЂ`
-*
inputsџџџџџџџџџџџџџџџџџџ2
'$
maskџџџџџџџџџџџџџџџџџџ

p

 
Њ "!
unknownџџџџџџџџџ@Т
&__inference_lstm_layer_call_fn_3676218%'&mЂj
cЂ`
-*
inputsџџџџџџџџџџџџџџџџџџ2
'$
maskџџџџџџџџџџџџџџџџџџ

p 

 
Њ "!
unknownџџџџџџџџџ@Э
G__inference_sequential_layer_call_and_return_conditional_losses_3674947%'&#$IЂF
?Ђ<
2/
embedding_inputџџџџџџџџџџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Э
G__inference_sequential_layer_call_and_return_conditional_losses_3675241%'&#$IЂF
?Ђ<
2/
embedding_inputџџџџџџџџџџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 У
G__inference_sequential_layer_call_and_return_conditional_losses_3675868x%'&#$@Ђ=
6Ђ3
)&
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 У
G__inference_sequential_layer_call_and_return_conditional_losses_3676155x%'&#$@Ђ=
6Ђ3
)&
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 І
,__inference_sequential_layer_call_fn_3675280v%'&#$IЂF
?Ђ<
2/
embedding_inputџџџџџџџџџџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџІ
,__inference_sequential_layer_call_fn_3675318v%'&#$IЂF
?Ђ<
2/
embedding_inputџџџџџџџџџџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџ
,__inference_sequential_layer_call_fn_3675436m%'&#$@Ђ=
6Ђ3
)&
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџ
,__inference_sequential_layer_call_fn_3675453m%'&#$@Ђ=
6Ђ3
)&
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџЗ
%__inference_signature_wrapper_3675419%'&#$TЂQ
Ђ 
JЊG
E
embedding_input2/
embedding_inputџџџџџџџџџџџџџџџџџџ"-Њ*
(
dense
denseџџџџџџџџџ