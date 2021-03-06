??9
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??0
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
?
module_wrapper/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namemodule_wrapper/conv2d/kernel
?
0module_wrapper/conv2d/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/kernel*&
_output_shapes
: *
dtype0
?
module_wrapper/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namemodule_wrapper/conv2d/bias
?
.module_wrapper/conv2d/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/bias*
_output_shapes
: *
dtype0
?
 module_wrapper_1/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" module_wrapper_1/conv2d_1/kernel
?
4module_wrapper_1/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_1/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
?
module_wrapper_1/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name module_wrapper_1/conv2d_1/bias
?
2module_wrapper_1/conv2d_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_1/conv2d_1/bias*
_output_shapes
:@*
dtype0
?
*module_wrapper_2/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*module_wrapper_2/batch_normalization/gamma
?
>module_wrapper_2/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp*module_wrapper_2/batch_normalization/gamma*
_output_shapes
:@*
dtype0
?
)module_wrapper_2/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)module_wrapper_2/batch_normalization/beta
?
=module_wrapper_2/batch_normalization/beta/Read/ReadVariableOpReadVariableOp)module_wrapper_2/batch_normalization/beta*
_output_shapes
:@*
dtype0
?
 module_wrapper_5/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*1
shared_name" module_wrapper_5/conv2d_2/kernel
?
4module_wrapper_5/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_5/conv2d_2/kernel*'
_output_shapes
:@?*
dtype0
?
module_wrapper_5/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name module_wrapper_5/conv2d_2/bias
?
2module_wrapper_5/conv2d_2/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_5/conv2d_2/bias*
_output_shapes	
:?*
dtype0
?
,module_wrapper_6/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,module_wrapper_6/batch_normalization_1/gamma
?
@module_wrapper_6/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp,module_wrapper_6/batch_normalization_1/gamma*
_output_shapes	
:?*
dtype0
?
+module_wrapper_6/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*<
shared_name-+module_wrapper_6/batch_normalization_1/beta
?
?module_wrapper_6/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp+module_wrapper_6/batch_normalization_1/beta*
_output_shapes	
:?*
dtype0
?
 module_wrapper_9/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*1
shared_name" module_wrapper_9/conv2d_3/kernel
?
4module_wrapper_9/conv2d_3/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_9/conv2d_3/kernel*(
_output_shapes
:??*
dtype0
?
module_wrapper_9/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name module_wrapper_9/conv2d_3/bias
?
2module_wrapper_9/conv2d_3/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_9/conv2d_3/bias*
_output_shapes	
:?*
dtype0
?
-module_wrapper_10/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_10/batch_normalization_2/gamma
?
Amodule_wrapper_10/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp-module_wrapper_10/batch_normalization_2/gamma*
_output_shapes	
:?*
dtype0
?
,module_wrapper_10/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,module_wrapper_10/batch_normalization_2/beta
?
@module_wrapper_10/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp,module_wrapper_10/batch_normalization_2/beta*
_output_shapes	
:?*
dtype0
?
!module_wrapper_13/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*2
shared_name#!module_wrapper_13/conv2d_4/kernel
?
5module_wrapper_13/conv2d_4/kernel/Read/ReadVariableOpReadVariableOp!module_wrapper_13/conv2d_4/kernel*(
_output_shapes
:??*
dtype0
?
module_wrapper_13/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!module_wrapper_13/conv2d_4/bias
?
3module_wrapper_13/conv2d_4/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_13/conv2d_4/bias*
_output_shapes	
:?*
dtype0
?
-module_wrapper_14/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_14/batch_normalization_3/gamma
?
Amodule_wrapper_14/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp-module_wrapper_14/batch_normalization_3/gamma*
_output_shapes	
:?*
dtype0
?
,module_wrapper_14/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,module_wrapper_14/batch_normalization_3/beta
?
@module_wrapper_14/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp,module_wrapper_14/batch_normalization_3/beta*
_output_shapes	
:?*
dtype0
?
module_wrapper_18/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?$?*/
shared_name module_wrapper_18/dense/kernel
?
2module_wrapper_18/dense/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_18/dense/kernel* 
_output_shapes
:
?$?*
dtype0
?
module_wrapper_18/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namemodule_wrapper_18/dense/bias
?
0module_wrapper_18/dense/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_18/dense/bias*
_output_shapes	
:?*
dtype0
?
-module_wrapper_19/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_19/batch_normalization_4/gamma
?
Amodule_wrapper_19/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp-module_wrapper_19/batch_normalization_4/gamma*
_output_shapes	
:?*
dtype0
?
,module_wrapper_19/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,module_wrapper_19/batch_normalization_4/beta
?
@module_wrapper_19/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp,module_wrapper_19/batch_normalization_4/beta*
_output_shapes	
:?*
dtype0
?
 module_wrapper_21/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" module_wrapper_21/dense_1/kernel
?
4module_wrapper_21/dense_1/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_21/dense_1/kernel* 
_output_shapes
:
??*
dtype0
?
module_wrapper_21/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name module_wrapper_21/dense_1/bias
?
2module_wrapper_21/dense_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_21/dense_1/bias*
_output_shapes	
:?*
dtype0
?
-module_wrapper_22/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_22/batch_normalization_5/gamma
?
Amodule_wrapper_22/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp-module_wrapper_22/batch_normalization_5/gamma*
_output_shapes	
:?*
dtype0
?
,module_wrapper_22/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,module_wrapper_22/batch_normalization_5/beta
?
@module_wrapper_22/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp,module_wrapper_22/batch_normalization_5/beta*
_output_shapes	
:?*
dtype0
?
 module_wrapper_24/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" module_wrapper_24/dense_2/kernel
?
4module_wrapper_24/dense_2/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_24/dense_2/kernel*
_output_shapes
:	?*
dtype0
?
module_wrapper_24/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name module_wrapper_24/dense_2/bias
?
2module_wrapper_24/dense_2/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_24/dense_2/bias*
_output_shapes
:*
dtype0
?
0module_wrapper_2/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20module_wrapper_2/batch_normalization/moving_mean
?
Dmodule_wrapper_2/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp0module_wrapper_2/batch_normalization/moving_mean*
_output_shapes
:@*
dtype0
?
4module_wrapper_2/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64module_wrapper_2/batch_normalization/moving_variance
?
Hmodule_wrapper_2/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp4module_wrapper_2/batch_normalization/moving_variance*
_output_shapes
:@*
dtype0
?
2module_wrapper_6/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*C
shared_name42module_wrapper_6/batch_normalization_1/moving_mean
?
Fmodule_wrapper_6/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp2module_wrapper_6/batch_normalization_1/moving_mean*
_output_shapes	
:?*
dtype0
?
6module_wrapper_6/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86module_wrapper_6/batch_normalization_1/moving_variance
?
Jmodule_wrapper_6/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp6module_wrapper_6/batch_normalization_1/moving_variance*
_output_shapes	
:?*
dtype0
?
3module_wrapper_10/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53module_wrapper_10/batch_normalization_2/moving_mean
?
Gmodule_wrapper_10/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp3module_wrapper_10/batch_normalization_2/moving_mean*
_output_shapes	
:?*
dtype0
?
7module_wrapper_10/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97module_wrapper_10/batch_normalization_2/moving_variance
?
Kmodule_wrapper_10/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp7module_wrapper_10/batch_normalization_2/moving_variance*
_output_shapes	
:?*
dtype0
?
3module_wrapper_14/batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53module_wrapper_14/batch_normalization_3/moving_mean
?
Gmodule_wrapper_14/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp3module_wrapper_14/batch_normalization_3/moving_mean*
_output_shapes	
:?*
dtype0
?
7module_wrapper_14/batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97module_wrapper_14/batch_normalization_3/moving_variance
?
Kmodule_wrapper_14/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp7module_wrapper_14/batch_normalization_3/moving_variance*
_output_shapes	
:?*
dtype0
?
3module_wrapper_19/batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53module_wrapper_19/batch_normalization_4/moving_mean
?
Gmodule_wrapper_19/batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp3module_wrapper_19/batch_normalization_4/moving_mean*
_output_shapes	
:?*
dtype0
?
7module_wrapper_19/batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97module_wrapper_19/batch_normalization_4/moving_variance
?
Kmodule_wrapper_19/batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp7module_wrapper_19/batch_normalization_4/moving_variance*
_output_shapes	
:?*
dtype0
?
3module_wrapper_22/batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53module_wrapper_22/batch_normalization_5/moving_mean
?
Gmodule_wrapper_22/batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp3module_wrapper_22/batch_normalization_5/moving_mean*
_output_shapes	
:?*
dtype0
?
7module_wrapper_22/batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97module_wrapper_22/batch_normalization_5/moving_variance
?
Kmodule_wrapper_22/batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp7module_wrapper_22/batch_normalization_5/moving_variance*
_output_shapes	
:?*
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
?
#Adam/module_wrapper/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/module_wrapper/conv2d/kernel/m
?
7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/m*&
_output_shapes
: *
dtype0
?
!Adam/module_wrapper/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/module_wrapper/conv2d/bias/m
?
5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/m*
_output_shapes
: *
dtype0
?
'Adam/module_wrapper_1/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*8
shared_name)'Adam/module_wrapper_1/conv2d_1/kernel/m
?
;Adam/module_wrapper_1/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_1/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0
?
%Adam/module_wrapper_1/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/module_wrapper_1/conv2d_1/bias/m
?
9Adam/module_wrapper_1/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_1/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
?
1Adam/module_wrapper_2/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31Adam/module_wrapper_2/batch_normalization/gamma/m
?
EAdam/module_wrapper_2/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp1Adam/module_wrapper_2/batch_normalization/gamma/m*
_output_shapes
:@*
dtype0
?
0Adam/module_wrapper_2/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/module_wrapper_2/batch_normalization/beta/m
?
DAdam/module_wrapper_2/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOp0Adam/module_wrapper_2/batch_normalization/beta/m*
_output_shapes
:@*
dtype0
?
'Adam/module_wrapper_5/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*8
shared_name)'Adam/module_wrapper_5/conv2d_2/kernel/m
?
;Adam/module_wrapper_5/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_5/conv2d_2/kernel/m*'
_output_shapes
:@?*
dtype0
?
%Adam/module_wrapper_5/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_5/conv2d_2/bias/m
?
9Adam/module_wrapper_5/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_5/conv2d_2/bias/m*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_6/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_6/batch_normalization_1/gamma/m
?
GAdam/module_wrapper_6/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_6/batch_normalization_1/gamma/m*
_output_shapes	
:?*
dtype0
?
2Adam/module_wrapper_6/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*C
shared_name42Adam/module_wrapper_6/batch_normalization_1/beta/m
?
FAdam/module_wrapper_6/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp2Adam/module_wrapper_6/batch_normalization_1/beta/m*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_9/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*8
shared_name)'Adam/module_wrapper_9/conv2d_3/kernel/m
?
;Adam/module_wrapper_9/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_9/conv2d_3/kernel/m*(
_output_shapes
:??*
dtype0
?
%Adam/module_wrapper_9/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_9/conv2d_3/bias/m
?
9Adam/module_wrapper_9/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_9/conv2d_3/bias/m*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_10/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_10/batch_normalization_2/gamma/m
?
HAdam/module_wrapper_10/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_10/batch_normalization_2/gamma/m*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_10/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_10/batch_normalization_2/beta/m
?
GAdam/module_wrapper_10/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_10/batch_normalization_2/beta/m*
_output_shapes	
:?*
dtype0
?
(Adam/module_wrapper_13/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*9
shared_name*(Adam/module_wrapper_13/conv2d_4/kernel/m
?
<Adam/module_wrapper_13/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_13/conv2d_4/kernel/m*(
_output_shapes
:??*
dtype0
?
&Adam/module_wrapper_13/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&Adam/module_wrapper_13/conv2d_4/bias/m
?
:Adam/module_wrapper_13/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper_13/conv2d_4/bias/m*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_14/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_14/batch_normalization_3/gamma/m
?
HAdam/module_wrapper_14/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_14/batch_normalization_3/gamma/m*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_14/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_14/batch_normalization_3/beta/m
?
GAdam/module_wrapper_14/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_14/batch_normalization_3/beta/m*
_output_shapes	
:?*
dtype0
?
%Adam/module_wrapper_18/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?$?*6
shared_name'%Adam/module_wrapper_18/dense/kernel/m
?
9Adam/module_wrapper_18/dense/kernel/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_18/dense/kernel/m* 
_output_shapes
:
?$?*
dtype0
?
#Adam/module_wrapper_18/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/module_wrapper_18/dense/bias/m
?
7Adam/module_wrapper_18/dense/bias/m/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper_18/dense/bias/m*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_19/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_19/batch_normalization_4/gamma/m
?
HAdam/module_wrapper_19/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_19/batch_normalization_4/gamma/m*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_19/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_19/batch_normalization_4/beta/m
?
GAdam/module_wrapper_19/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_19/batch_normalization_4/beta/m*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_21/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'Adam/module_wrapper_21/dense_1/kernel/m
?
;Adam/module_wrapper_21/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_21/dense_1/kernel/m* 
_output_shapes
:
??*
dtype0
?
%Adam/module_wrapper_21/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_21/dense_1/bias/m
?
9Adam/module_wrapper_21/dense_1/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_21/dense_1/bias/m*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_22/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_22/batch_normalization_5/gamma/m
?
HAdam/module_wrapper_22/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_22/batch_normalization_5/gamma/m*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_22/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_22/batch_normalization_5/beta/m
?
GAdam/module_wrapper_22/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_22/batch_normalization_5/beta/m*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_24/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/module_wrapper_24/dense_2/kernel/m
?
;Adam/module_wrapper_24/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_24/dense_2/kernel/m*
_output_shapes
:	?*
dtype0
?
%Adam/module_wrapper_24/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_24/dense_2/bias/m
?
9Adam/module_wrapper_24/dense_2/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_24/dense_2/bias/m*
_output_shapes
:*
dtype0
?
#Adam/module_wrapper/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/module_wrapper/conv2d/kernel/v
?
7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/v*&
_output_shapes
: *
dtype0
?
!Adam/module_wrapper/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/module_wrapper/conv2d/bias/v
?
5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/v*
_output_shapes
: *
dtype0
?
'Adam/module_wrapper_1/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*8
shared_name)'Adam/module_wrapper_1/conv2d_1/kernel/v
?
;Adam/module_wrapper_1/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_1/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0
?
%Adam/module_wrapper_1/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/module_wrapper_1/conv2d_1/bias/v
?
9Adam/module_wrapper_1/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_1/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
?
1Adam/module_wrapper_2/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31Adam/module_wrapper_2/batch_normalization/gamma/v
?
EAdam/module_wrapper_2/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp1Adam/module_wrapper_2/batch_normalization/gamma/v*
_output_shapes
:@*
dtype0
?
0Adam/module_wrapper_2/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/module_wrapper_2/batch_normalization/beta/v
?
DAdam/module_wrapper_2/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOp0Adam/module_wrapper_2/batch_normalization/beta/v*
_output_shapes
:@*
dtype0
?
'Adam/module_wrapper_5/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*8
shared_name)'Adam/module_wrapper_5/conv2d_2/kernel/v
?
;Adam/module_wrapper_5/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_5/conv2d_2/kernel/v*'
_output_shapes
:@?*
dtype0
?
%Adam/module_wrapper_5/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_5/conv2d_2/bias/v
?
9Adam/module_wrapper_5/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_5/conv2d_2/bias/v*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_6/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_6/batch_normalization_1/gamma/v
?
GAdam/module_wrapper_6/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_6/batch_normalization_1/gamma/v*
_output_shapes	
:?*
dtype0
?
2Adam/module_wrapper_6/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*C
shared_name42Adam/module_wrapper_6/batch_normalization_1/beta/v
?
FAdam/module_wrapper_6/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp2Adam/module_wrapper_6/batch_normalization_1/beta/v*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_9/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*8
shared_name)'Adam/module_wrapper_9/conv2d_3/kernel/v
?
;Adam/module_wrapper_9/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_9/conv2d_3/kernel/v*(
_output_shapes
:??*
dtype0
?
%Adam/module_wrapper_9/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_9/conv2d_3/bias/v
?
9Adam/module_wrapper_9/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_9/conv2d_3/bias/v*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_10/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_10/batch_normalization_2/gamma/v
?
HAdam/module_wrapper_10/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_10/batch_normalization_2/gamma/v*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_10/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_10/batch_normalization_2/beta/v
?
GAdam/module_wrapper_10/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_10/batch_normalization_2/beta/v*
_output_shapes	
:?*
dtype0
?
(Adam/module_wrapper_13/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*9
shared_name*(Adam/module_wrapper_13/conv2d_4/kernel/v
?
<Adam/module_wrapper_13/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_13/conv2d_4/kernel/v*(
_output_shapes
:??*
dtype0
?
&Adam/module_wrapper_13/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&Adam/module_wrapper_13/conv2d_4/bias/v
?
:Adam/module_wrapper_13/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper_13/conv2d_4/bias/v*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_14/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_14/batch_normalization_3/gamma/v
?
HAdam/module_wrapper_14/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_14/batch_normalization_3/gamma/v*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_14/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_14/batch_normalization_3/beta/v
?
GAdam/module_wrapper_14/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_14/batch_normalization_3/beta/v*
_output_shapes	
:?*
dtype0
?
%Adam/module_wrapper_18/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?$?*6
shared_name'%Adam/module_wrapper_18/dense/kernel/v
?
9Adam/module_wrapper_18/dense/kernel/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_18/dense/kernel/v* 
_output_shapes
:
?$?*
dtype0
?
#Adam/module_wrapper_18/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/module_wrapper_18/dense/bias/v
?
7Adam/module_wrapper_18/dense/bias/v/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper_18/dense/bias/v*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_19/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_19/batch_normalization_4/gamma/v
?
HAdam/module_wrapper_19/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_19/batch_normalization_4/gamma/v*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_19/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_19/batch_normalization_4/beta/v
?
GAdam/module_wrapper_19/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_19/batch_normalization_4/beta/v*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_21/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'Adam/module_wrapper_21/dense_1/kernel/v
?
;Adam/module_wrapper_21/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_21/dense_1/kernel/v* 
_output_shapes
:
??*
dtype0
?
%Adam/module_wrapper_21/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_21/dense_1/bias/v
?
9Adam/module_wrapper_21/dense_1/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_21/dense_1/bias/v*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_22/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_22/batch_normalization_5/gamma/v
?
HAdam/module_wrapper_22/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_22/batch_normalization_5/gamma/v*
_output_shapes	
:?*
dtype0
?
3Adam/module_wrapper_22/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/module_wrapper_22/batch_normalization_5/beta/v
?
GAdam/module_wrapper_22/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp3Adam/module_wrapper_22/batch_normalization_5/beta/v*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_24/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/module_wrapper_24/dense_2/kernel/v
?
;Adam/module_wrapper_24/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_24/dense_2/kernel/v*
_output_shapes
:	?*
dtype0
?
%Adam/module_wrapper_24/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_24/dense_2/bias/v
?
9Adam/module_wrapper_24/dense_2/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_24/dense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
layer-15
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer_with_weights-11
layer-21
layer_with_weights-12
layer-22
layer-23
layer_with_weights-13
layer-24
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
_
 _module
!regularization_losses
"trainable_variables
#	variables
$	keras_api
_
%_module
&regularization_losses
'trainable_variables
(	variables
)	keras_api
_
*_module
+regularization_losses
,trainable_variables
-	variables
.	keras_api
_
/_module
0regularization_losses
1trainable_variables
2	variables
3	keras_api
_
4_module
5regularization_losses
6trainable_variables
7	variables
8	keras_api
_
9_module
:regularization_losses
;trainable_variables
<	variables
=	keras_api
_
>_module
?regularization_losses
@trainable_variables
A	variables
B	keras_api
_
C_module
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
_
H_module
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
_
M_module
Nregularization_losses
Otrainable_variables
P	variables
Q	keras_api
_
R_module
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
_
W_module
Xregularization_losses
Ytrainable_variables
Z	variables
[	keras_api
_
\_module
]regularization_losses
^trainable_variables
_	variables
`	keras_api
_
a_module
bregularization_losses
ctrainable_variables
d	variables
e	keras_api
_
f_module
gregularization_losses
htrainable_variables
i	variables
j	keras_api
_
k_module
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
_
p_module
qregularization_losses
rtrainable_variables
s	variables
t	keras_api
_
u_module
vregularization_losses
wtrainable_variables
x	variables
y	keras_api
_
z_module
{regularization_losses
|trainable_variables
}	variables
~	keras_api
c
_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
d
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
d
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
d
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
d
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
d
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?
 
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?
regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
trainable_variables
	variables
?layer_metrics
 
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1

?0
?1
?
!regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
"trainable_variables
#	variables
?layer_metrics
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1

?0
?1
?
&regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
'trainable_variables
(	variables
?layer_metrics
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1
 
?0
?1
?2
?3
?
+regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
,trainable_variables
-	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
0regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
1trainable_variables
2	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
5regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
6trainable_variables
7	variables
?layer_metrics
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1

?0
?1
?
:regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
;trainable_variables
<	variables
?layer_metrics
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
@trainable_variables
A	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
Dregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Etrainable_variables
F	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
Iregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Jtrainable_variables
K	variables
?layer_metrics
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1

?0
?1
?
Nregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Otrainable_variables
P	variables
?layer_metrics
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1
 
?0
?1
?2
?3
?
Sregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Ttrainable_variables
U	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
Xregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Ytrainable_variables
Z	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
]regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
^trainable_variables
_	variables
?layer_metrics
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1

?0
?1
?
bregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
ctrainable_variables
d	variables
?layer_metrics
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1
 
?0
?1
?2
?3
?
gregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
htrainable_variables
i	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
lregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
mtrainable_variables
n	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
qregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
rtrainable_variables
s	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
vregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
wtrainable_variables
x	variables
?layer_metrics
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1

?0
?1
?
{regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
|trainable_variables
}	variables
?layer_metrics
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
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
b`
VARIABLE_VALUEmodule_wrapper/conv2d/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEmodule_wrapper/conv2d/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE module_wrapper_1/conv2d_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEmodule_wrapper_1/conv2d_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE*module_wrapper_2/batch_normalization/gamma0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE)module_wrapper_2/batch_normalization/beta0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE module_wrapper_5/conv2d_2/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEmodule_wrapper_5/conv2d_2/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE,module_wrapper_6/batch_normalization_1/gamma0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE+module_wrapper_6/batch_normalization_1/beta0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE module_wrapper_9/conv2d_3/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEmodule_wrapper_9/conv2d_3/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE-module_wrapper_10/batch_normalization_2/gamma1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE,module_wrapper_10/batch_normalization_2/beta1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE!module_wrapper_13/conv2d_4/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEmodule_wrapper_13/conv2d_4/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE-module_wrapper_14/batch_normalization_3/gamma1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE,module_wrapper_14/batch_normalization_3/beta1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEmodule_wrapper_18/dense/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEmodule_wrapper_18/dense/bias1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE-module_wrapper_19/batch_normalization_4/gamma1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE,module_wrapper_19/batch_normalization_4/beta1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE module_wrapper_21/dense_1/kernel1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEmodule_wrapper_21/dense_1/bias1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE-module_wrapper_22/batch_normalization_5/gamma1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE,module_wrapper_22/batch_normalization_5/beta1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE module_wrapper_24/dense_2/kernel1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEmodule_wrapper_24/dense_2/bias1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0module_wrapper_2/batch_normalization/moving_mean&variables/6/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE4module_wrapper_2/batch_normalization/moving_variance&variables/7/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2module_wrapper_6/batch_normalization_1/moving_mean'variables/12/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE6module_wrapper_6/batch_normalization_1/moving_variance'variables/13/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3module_wrapper_10/batch_normalization_2/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7module_wrapper_10/batch_normalization_2/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3module_wrapper_14/batch_normalization_3/moving_mean'variables/24/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7module_wrapper_14/batch_normalization_3/moving_variance'variables/25/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3module_wrapper_19/batch_normalization_4/moving_mean'variables/30/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7module_wrapper_19/batch_normalization_4/moving_variance'variables/31/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3module_wrapper_22/batch_normalization_5/moving_mean'variables/36/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7module_wrapper_22/batch_normalization_5/moving_variance'variables/37/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 
b
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 

?0
?1
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 

?0
?1
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 

?0
?1
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 

?0
?1
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 

?0
?1
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 

?0
?1
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 

?0
?1
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 

?0
?1
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 

?0
?1
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 

?0
?1
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 
 

?0
?1
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 

?0
?1
 
 
 
 
 
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_1/conv2d_1/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_1/conv2d_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/module_wrapper_2/batch_normalization/gamma/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/module_wrapper_2/batch_normalization/beta/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_5/conv2d_2/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_5/conv2d_2/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_6/batch_normalization_1/gamma/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/module_wrapper_6/batch_normalization_1/beta/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_9/conv2d_3/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_9/conv2d_3/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_10/batch_normalization_2/gamma/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_10/batch_normalization_2/beta/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/module_wrapper_13/conv2d_4/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/module_wrapper_13/conv2d_4/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_14/batch_normalization_3/gamma/mMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_14/batch_normalization_3/beta/mMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_18/dense/kernel/mMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/module_wrapper_18/dense/bias/mMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_19/batch_normalization_4/gamma/mMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_19/batch_normalization_4/beta/mMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_21/dense_1/kernel/mMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_21/dense_1/bias/mMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_22/batch_normalization_5/gamma/mMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_22/batch_normalization_5/beta/mMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_24/dense_2/kernel/mMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_24/dense_2/bias/mMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_1/conv2d_1/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_1/conv2d_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/module_wrapper_2/batch_normalization/gamma/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/module_wrapper_2/batch_normalization/beta/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_5/conv2d_2/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_5/conv2d_2/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_6/batch_normalization_1/gamma/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/module_wrapper_6/batch_normalization_1/beta/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_9/conv2d_3/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_9/conv2d_3/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_10/batch_normalization_2/gamma/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_10/batch_normalization_2/beta/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/module_wrapper_13/conv2d_4/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/module_wrapper_13/conv2d_4/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_14/batch_normalization_3/gamma/vMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_14/batch_normalization_3/beta/vMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_18/dense/kernel/vMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/module_wrapper_18/dense/bias/vMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_19/batch_normalization_4/gamma/vMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_19/batch_normalization_4/beta/vMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_21/dense_1/kernel/vMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_21/dense_1/bias/vMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_22/batch_normalization_5/gamma/vMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/module_wrapper_22/batch_normalization_5/beta/vMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_24/dense_2/kernel/vMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_24/dense_2/bias/vMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
$serving_default_module_wrapper_inputPlaceholder*/
_output_shapes
:?????????00*
dtype0*$
shape:?????????00
?
StatefulPartitionedCallStatefulPartitionedCall$serving_default_module_wrapper_inputmodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_1/conv2d_1/kernelmodule_wrapper_1/conv2d_1/bias*module_wrapper_2/batch_normalization/gamma)module_wrapper_2/batch_normalization/beta0module_wrapper_2/batch_normalization/moving_mean4module_wrapper_2/batch_normalization/moving_variance module_wrapper_5/conv2d_2/kernelmodule_wrapper_5/conv2d_2/bias,module_wrapper_6/batch_normalization_1/gamma+module_wrapper_6/batch_normalization_1/beta2module_wrapper_6/batch_normalization_1/moving_mean6module_wrapper_6/batch_normalization_1/moving_variance module_wrapper_9/conv2d_3/kernelmodule_wrapper_9/conv2d_3/bias-module_wrapper_10/batch_normalization_2/gamma,module_wrapper_10/batch_normalization_2/beta3module_wrapper_10/batch_normalization_2/moving_mean7module_wrapper_10/batch_normalization_2/moving_variance!module_wrapper_13/conv2d_4/kernelmodule_wrapper_13/conv2d_4/bias-module_wrapper_14/batch_normalization_3/gamma,module_wrapper_14/batch_normalization_3/beta3module_wrapper_14/batch_normalization_3/moving_mean7module_wrapper_14/batch_normalization_3/moving_variancemodule_wrapper_18/dense/kernelmodule_wrapper_18/dense/bias7module_wrapper_19/batch_normalization_4/moving_variance-module_wrapper_19/batch_normalization_4/gamma3module_wrapper_19/batch_normalization_4/moving_mean,module_wrapper_19/batch_normalization_4/beta module_wrapper_21/dense_1/kernelmodule_wrapper_21/dense_1/bias7module_wrapper_22/batch_normalization_5/moving_variance-module_wrapper_22/batch_normalization_5/gamma3module_wrapper_22/batch_normalization_5/moving_mean,module_wrapper_22/batch_normalization_5/beta module_wrapper_24/dense_2/kernelmodule_wrapper_24/dense_2/bias*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_62727
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?5
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp0module_wrapper/conv2d/kernel/Read/ReadVariableOp.module_wrapper/conv2d/bias/Read/ReadVariableOp4module_wrapper_1/conv2d_1/kernel/Read/ReadVariableOp2module_wrapper_1/conv2d_1/bias/Read/ReadVariableOp>module_wrapper_2/batch_normalization/gamma/Read/ReadVariableOp=module_wrapper_2/batch_normalization/beta/Read/ReadVariableOp4module_wrapper_5/conv2d_2/kernel/Read/ReadVariableOp2module_wrapper_5/conv2d_2/bias/Read/ReadVariableOp@module_wrapper_6/batch_normalization_1/gamma/Read/ReadVariableOp?module_wrapper_6/batch_normalization_1/beta/Read/ReadVariableOp4module_wrapper_9/conv2d_3/kernel/Read/ReadVariableOp2module_wrapper_9/conv2d_3/bias/Read/ReadVariableOpAmodule_wrapper_10/batch_normalization_2/gamma/Read/ReadVariableOp@module_wrapper_10/batch_normalization_2/beta/Read/ReadVariableOp5module_wrapper_13/conv2d_4/kernel/Read/ReadVariableOp3module_wrapper_13/conv2d_4/bias/Read/ReadVariableOpAmodule_wrapper_14/batch_normalization_3/gamma/Read/ReadVariableOp@module_wrapper_14/batch_normalization_3/beta/Read/ReadVariableOp2module_wrapper_18/dense/kernel/Read/ReadVariableOp0module_wrapper_18/dense/bias/Read/ReadVariableOpAmodule_wrapper_19/batch_normalization_4/gamma/Read/ReadVariableOp@module_wrapper_19/batch_normalization_4/beta/Read/ReadVariableOp4module_wrapper_21/dense_1/kernel/Read/ReadVariableOp2module_wrapper_21/dense_1/bias/Read/ReadVariableOpAmodule_wrapper_22/batch_normalization_5/gamma/Read/ReadVariableOp@module_wrapper_22/batch_normalization_5/beta/Read/ReadVariableOp4module_wrapper_24/dense_2/kernel/Read/ReadVariableOp2module_wrapper_24/dense_2/bias/Read/ReadVariableOpDmodule_wrapper_2/batch_normalization/moving_mean/Read/ReadVariableOpHmodule_wrapper_2/batch_normalization/moving_variance/Read/ReadVariableOpFmodule_wrapper_6/batch_normalization_1/moving_mean/Read/ReadVariableOpJmodule_wrapper_6/batch_normalization_1/moving_variance/Read/ReadVariableOpGmodule_wrapper_10/batch_normalization_2/moving_mean/Read/ReadVariableOpKmodule_wrapper_10/batch_normalization_2/moving_variance/Read/ReadVariableOpGmodule_wrapper_14/batch_normalization_3/moving_mean/Read/ReadVariableOpKmodule_wrapper_14/batch_normalization_3/moving_variance/Read/ReadVariableOpGmodule_wrapper_19/batch_normalization_4/moving_mean/Read/ReadVariableOpKmodule_wrapper_19/batch_normalization_4/moving_variance/Read/ReadVariableOpGmodule_wrapper_22/batch_normalization_5/moving_mean/Read/ReadVariableOpKmodule_wrapper_22/batch_normalization_5/moving_variance/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOp;Adam/module_wrapper_1/conv2d_1/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_1/conv2d_1/bias/m/Read/ReadVariableOpEAdam/module_wrapper_2/batch_normalization/gamma/m/Read/ReadVariableOpDAdam/module_wrapper_2/batch_normalization/beta/m/Read/ReadVariableOp;Adam/module_wrapper_5/conv2d_2/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_5/conv2d_2/bias/m/Read/ReadVariableOpGAdam/module_wrapper_6/batch_normalization_1/gamma/m/Read/ReadVariableOpFAdam/module_wrapper_6/batch_normalization_1/beta/m/Read/ReadVariableOp;Adam/module_wrapper_9/conv2d_3/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_9/conv2d_3/bias/m/Read/ReadVariableOpHAdam/module_wrapper_10/batch_normalization_2/gamma/m/Read/ReadVariableOpGAdam/module_wrapper_10/batch_normalization_2/beta/m/Read/ReadVariableOp<Adam/module_wrapper_13/conv2d_4/kernel/m/Read/ReadVariableOp:Adam/module_wrapper_13/conv2d_4/bias/m/Read/ReadVariableOpHAdam/module_wrapper_14/batch_normalization_3/gamma/m/Read/ReadVariableOpGAdam/module_wrapper_14/batch_normalization_3/beta/m/Read/ReadVariableOp9Adam/module_wrapper_18/dense/kernel/m/Read/ReadVariableOp7Adam/module_wrapper_18/dense/bias/m/Read/ReadVariableOpHAdam/module_wrapper_19/batch_normalization_4/gamma/m/Read/ReadVariableOpGAdam/module_wrapper_19/batch_normalization_4/beta/m/Read/ReadVariableOp;Adam/module_wrapper_21/dense_1/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_21/dense_1/bias/m/Read/ReadVariableOpHAdam/module_wrapper_22/batch_normalization_5/gamma/m/Read/ReadVariableOpGAdam/module_wrapper_22/batch_normalization_5/beta/m/Read/ReadVariableOp;Adam/module_wrapper_24/dense_2/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_24/dense_2/bias/m/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOp;Adam/module_wrapper_1/conv2d_1/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_1/conv2d_1/bias/v/Read/ReadVariableOpEAdam/module_wrapper_2/batch_normalization/gamma/v/Read/ReadVariableOpDAdam/module_wrapper_2/batch_normalization/beta/v/Read/ReadVariableOp;Adam/module_wrapper_5/conv2d_2/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_5/conv2d_2/bias/v/Read/ReadVariableOpGAdam/module_wrapper_6/batch_normalization_1/gamma/v/Read/ReadVariableOpFAdam/module_wrapper_6/batch_normalization_1/beta/v/Read/ReadVariableOp;Adam/module_wrapper_9/conv2d_3/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_9/conv2d_3/bias/v/Read/ReadVariableOpHAdam/module_wrapper_10/batch_normalization_2/gamma/v/Read/ReadVariableOpGAdam/module_wrapper_10/batch_normalization_2/beta/v/Read/ReadVariableOp<Adam/module_wrapper_13/conv2d_4/kernel/v/Read/ReadVariableOp:Adam/module_wrapper_13/conv2d_4/bias/v/Read/ReadVariableOpHAdam/module_wrapper_14/batch_normalization_3/gamma/v/Read/ReadVariableOpGAdam/module_wrapper_14/batch_normalization_3/beta/v/Read/ReadVariableOp9Adam/module_wrapper_18/dense/kernel/v/Read/ReadVariableOp7Adam/module_wrapper_18/dense/bias/v/Read/ReadVariableOpHAdam/module_wrapper_19/batch_normalization_4/gamma/v/Read/ReadVariableOpGAdam/module_wrapper_19/batch_normalization_4/beta/v/Read/ReadVariableOp;Adam/module_wrapper_21/dense_1/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_21/dense_1/bias/v/Read/ReadVariableOpHAdam/module_wrapper_22/batch_normalization_5/gamma/v/Read/ReadVariableOpGAdam/module_wrapper_22/batch_normalization_5/beta/v/Read/ReadVariableOp;Adam/module_wrapper_24/dense_2/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_24/dense_2/bias/v/Read/ReadVariableOpConst*v
Tino
m2k	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_66496
?$
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratemodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_1/conv2d_1/kernelmodule_wrapper_1/conv2d_1/bias*module_wrapper_2/batch_normalization/gamma)module_wrapper_2/batch_normalization/beta module_wrapper_5/conv2d_2/kernelmodule_wrapper_5/conv2d_2/bias,module_wrapper_6/batch_normalization_1/gamma+module_wrapper_6/batch_normalization_1/beta module_wrapper_9/conv2d_3/kernelmodule_wrapper_9/conv2d_3/bias-module_wrapper_10/batch_normalization_2/gamma,module_wrapper_10/batch_normalization_2/beta!module_wrapper_13/conv2d_4/kernelmodule_wrapper_13/conv2d_4/bias-module_wrapper_14/batch_normalization_3/gamma,module_wrapper_14/batch_normalization_3/betamodule_wrapper_18/dense/kernelmodule_wrapper_18/dense/bias-module_wrapper_19/batch_normalization_4/gamma,module_wrapper_19/batch_normalization_4/beta module_wrapper_21/dense_1/kernelmodule_wrapper_21/dense_1/bias-module_wrapper_22/batch_normalization_5/gamma,module_wrapper_22/batch_normalization_5/beta module_wrapper_24/dense_2/kernelmodule_wrapper_24/dense_2/bias0module_wrapper_2/batch_normalization/moving_mean4module_wrapper_2/batch_normalization/moving_variance2module_wrapper_6/batch_normalization_1/moving_mean6module_wrapper_6/batch_normalization_1/moving_variance3module_wrapper_10/batch_normalization_2/moving_mean7module_wrapper_10/batch_normalization_2/moving_variance3module_wrapper_14/batch_normalization_3/moving_mean7module_wrapper_14/batch_normalization_3/moving_variance3module_wrapper_19/batch_normalization_4/moving_mean7module_wrapper_19/batch_normalization_4/moving_variance3module_wrapper_22/batch_normalization_5/moving_mean7module_wrapper_22/batch_normalization_5/moving_variancetotalcounttotal_1count_1#Adam/module_wrapper/conv2d/kernel/m!Adam/module_wrapper/conv2d/bias/m'Adam/module_wrapper_1/conv2d_1/kernel/m%Adam/module_wrapper_1/conv2d_1/bias/m1Adam/module_wrapper_2/batch_normalization/gamma/m0Adam/module_wrapper_2/batch_normalization/beta/m'Adam/module_wrapper_5/conv2d_2/kernel/m%Adam/module_wrapper_5/conv2d_2/bias/m3Adam/module_wrapper_6/batch_normalization_1/gamma/m2Adam/module_wrapper_6/batch_normalization_1/beta/m'Adam/module_wrapper_9/conv2d_3/kernel/m%Adam/module_wrapper_9/conv2d_3/bias/m4Adam/module_wrapper_10/batch_normalization_2/gamma/m3Adam/module_wrapper_10/batch_normalization_2/beta/m(Adam/module_wrapper_13/conv2d_4/kernel/m&Adam/module_wrapper_13/conv2d_4/bias/m4Adam/module_wrapper_14/batch_normalization_3/gamma/m3Adam/module_wrapper_14/batch_normalization_3/beta/m%Adam/module_wrapper_18/dense/kernel/m#Adam/module_wrapper_18/dense/bias/m4Adam/module_wrapper_19/batch_normalization_4/gamma/m3Adam/module_wrapper_19/batch_normalization_4/beta/m'Adam/module_wrapper_21/dense_1/kernel/m%Adam/module_wrapper_21/dense_1/bias/m4Adam/module_wrapper_22/batch_normalization_5/gamma/m3Adam/module_wrapper_22/batch_normalization_5/beta/m'Adam/module_wrapper_24/dense_2/kernel/m%Adam/module_wrapper_24/dense_2/bias/m#Adam/module_wrapper/conv2d/kernel/v!Adam/module_wrapper/conv2d/bias/v'Adam/module_wrapper_1/conv2d_1/kernel/v%Adam/module_wrapper_1/conv2d_1/bias/v1Adam/module_wrapper_2/batch_normalization/gamma/v0Adam/module_wrapper_2/batch_normalization/beta/v'Adam/module_wrapper_5/conv2d_2/kernel/v%Adam/module_wrapper_5/conv2d_2/bias/v3Adam/module_wrapper_6/batch_normalization_1/gamma/v2Adam/module_wrapper_6/batch_normalization_1/beta/v'Adam/module_wrapper_9/conv2d_3/kernel/v%Adam/module_wrapper_9/conv2d_3/bias/v4Adam/module_wrapper_10/batch_normalization_2/gamma/v3Adam/module_wrapper_10/batch_normalization_2/beta/v(Adam/module_wrapper_13/conv2d_4/kernel/v&Adam/module_wrapper_13/conv2d_4/bias/v4Adam/module_wrapper_14/batch_normalization_3/gamma/v3Adam/module_wrapper_14/batch_normalization_3/beta/v%Adam/module_wrapper_18/dense/kernel/v#Adam/module_wrapper_18/dense/bias/v4Adam/module_wrapper_19/batch_normalization_4/gamma/v3Adam/module_wrapper_19/batch_normalization_4/beta/v'Adam/module_wrapper_21/dense_1/kernel/v%Adam/module_wrapper_21/dense_1/bias/v4Adam/module_wrapper_22/batch_normalization_5/gamma/v3Adam/module_wrapper_22/batch_normalization_5/beta/v'Adam/module_wrapper_24/dense_2/kernel/v%Adam/module_wrapper_24/dense_2/bias/v*u
Tinn
l2j*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_66821??+
?
k
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_61700

args_0
identity?w
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/dropout/Const?
dropout_2/dropout/MulMulargs_0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mulh
dropout_2/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mul_1x
IdentityIdentitydropout_2/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_65958

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_65328

args_0
identity?
max_pooling2d_3/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool}
IdentityIdentity max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_65313

args_0<
-batch_normalization_3_readvariableop_resource:	?>
/batch_normalization_3_readvariableop_1_resource:	?M
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_3/AssignNewValue?&batch_normalization_3/AssignNewValue_1?5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_3/ReadVariableOp?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_3/ReadVariableOp_1?
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_3/FusedBatchNormV3?
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_3/AssignNewValue?
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_3/AssignNewValue_1?
IdentityIdentity*batch_normalization_3/FusedBatchNormV3:y:0%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_65348

args_0
identityw
dropout_3/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_3/Identityx
IdentityIdentitydropout_3/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_65360

args_0
identity?w
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_3/dropout/Const?
dropout_3/dropout/MulMulargs_0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_3/dropout/Mulh
dropout_3/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_3/dropout/Mul_1x
IdentityIdentitydropout_3/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_10_layer_call_fn_65115

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_609912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_18_layer_call_fn_65391

args_0
unknown:
?$?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_610932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_61065

args_0
identity?
max_pooling2d_3/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool}
IdentityIdentity max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_9_layer_call_fn_65071

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_609672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_64753

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_62860

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_63026

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_61508

args_0L
=batch_normalization_4_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_4_assignmovingavg_1_readvariableop_resource:	?J
;batch_normalization_4_batchnorm_mul_readvariableop_resource:	?F
7batch_normalization_4_batchnorm_readvariableop_resource:	?
identity??%batch_normalization_4/AssignMovingAvg?4batch_normalization_4/AssignMovingAvg/ReadVariableOp?'batch_normalization_4/AssignMovingAvg_1?6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_4/batchnorm/ReadVariableOp?2batch_normalization_4/batchnorm/mul/ReadVariableOp?
4batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_4/moments/mean/reduction_indices?
"batch_normalization_4/moments/meanMeanargs_0=batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_4/moments/mean?
*batch_normalization_4/moments/StopGradientStopGradient+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_4/moments/StopGradient?
/batch_normalization_4/moments/SquaredDifferenceSquaredDifferenceargs_03batch_normalization_4/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_4/moments/SquaredDifference?
8batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_4/moments/variance/reduction_indices?
&batch_normalization_4/moments/varianceMean3batch_normalization_4/moments/SquaredDifference:z:0Abatch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_4/moments/variance?
%batch_normalization_4/moments/SqueezeSqueeze+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_4/moments/Squeeze?
'batch_normalization_4/moments/Squeeze_1Squeeze/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_4/moments/Squeeze_1?
+batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_4/AssignMovingAvg/decay?
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_4/AssignMovingAvg/ReadVariableOp?
)batch_normalization_4/AssignMovingAvg/subSub<batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_4/AssignMovingAvg/sub?
)batch_normalization_4/AssignMovingAvg/mulMul-batch_normalization_4/AssignMovingAvg/sub:z:04batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_4/AssignMovingAvg/mul?
%batch_normalization_4/AssignMovingAvgAssignSubVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource-batch_normalization_4/AssignMovingAvg/mul:z:05^batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_4/AssignMovingAvg?
-batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_4/AssignMovingAvg_1/decay?
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_4/AssignMovingAvg_1/subSub>batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_4/AssignMovingAvg_1/sub?
+batch_normalization_4/AssignMovingAvg_1/mulMul/batch_normalization_4/AssignMovingAvg_1/sub:z:06batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_4/AssignMovingAvg_1/mul?
'batch_normalization_4/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource/batch_normalization_4/AssignMovingAvg_1/mul:z:07^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_4/AssignMovingAvg_1?
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_4/batchnorm/add/y?
#batch_normalization_4/batchnorm/addAddV20batch_normalization_4/moments/Squeeze_1:output:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/add?
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/Rsqrt?
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_4/batchnorm/mul/ReadVariableOp?
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/mul?
%batch_normalization_4/batchnorm/mul_1Mulargs_0'batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/mul_1?
%batch_normalization_4/batchnorm/mul_2Mul.batch_normalization_4/moments/Squeeze:output:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/mul_2?
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_4/batchnorm/ReadVariableOp?
#batch_normalization_4/batchnorm/subSub6batch_normalization_4/batchnorm/ReadVariableOp:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/sub?
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/add_1?
IdentityIdentity)batch_normalization_4/batchnorm/add_1:z:0&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2N
%batch_normalization_4/AssignMovingAvg%batch_normalization_4/AssignMovingAvg2l
4batch_normalization_4/AssignMovingAvg/ReadVariableOp4batch_normalization_4/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_1'batch_normalization_4/AssignMovingAvg_12p
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_61944

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????00@:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_62998

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_65517

args_0
identityo
dropout_4/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_4/Identityp
IdentityIdentitydropout_4/Identity:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_64764

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
i
0__inference_module_wrapper_4_layer_call_fn_64896

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_619282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_61201

args_09
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulargs_0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
5__inference_batch_normalization_1_layer_call_fn_65804

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_629322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_2_layer_call_fn_63142

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_631362
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_65716

args_09
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulargs_0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
j
1__inference_module_wrapper_23_layer_call_fn_65659

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_613412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_62750

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_65649

args_0L
=batch_normalization_5_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_5_assignmovingavg_1_readvariableop_resource:	?J
;batch_normalization_5_batchnorm_mul_readvariableop_resource:	?F
7batch_normalization_5_batchnorm_readvariableop_resource:	?
identity??%batch_normalization_5/AssignMovingAvg?4batch_normalization_5/AssignMovingAvg/ReadVariableOp?'batch_normalization_5/AssignMovingAvg_1?6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_5/batchnorm/ReadVariableOp?2batch_normalization_5/batchnorm/mul/ReadVariableOp?
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_5/moments/mean/reduction_indices?
"batch_normalization_5/moments/meanMeanargs_0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_5/moments/mean?
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_5/moments/StopGradient?
/batch_normalization_5/moments/SquaredDifferenceSquaredDifferenceargs_03batch_normalization_5/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_5/moments/SquaredDifference?
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_5/moments/variance/reduction_indices?
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_5/moments/variance?
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_5/moments/Squeeze?
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_5/moments/Squeeze_1?
+batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_5/AssignMovingAvg/decay?
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_5/AssignMovingAvg/ReadVariableOp?
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_5/AssignMovingAvg/sub?
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_5/AssignMovingAvg/mul?
%batch_normalization_5/AssignMovingAvgAssignSubVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_5/AssignMovingAvg?
-batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_5/AssignMovingAvg_1/decay?
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_5/AssignMovingAvg_1/sub?
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_5/AssignMovingAvg_1/mul?
'batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_5/AssignMovingAvg_1?
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_5/batchnorm/add/y?
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/add?
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/Rsqrt?
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_5/batchnorm/mul/ReadVariableOp?
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/mul?
%batch_normalization_5/batchnorm/mul_1Mulargs_0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/mul_1?
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/mul_2?
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_5/batchnorm/ReadVariableOp?
#batch_normalization_5/batchnorm/subSub6batch_normalization_5/batchnorm/ReadVariableOp:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/sub?
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/add_1?
IdentityIdentity)batch_normalization_5/batchnorm/add_1:z:0&^batch_normalization_5/AssignMovingAvg5^batch_normalization_5/AssignMovingAvg/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_17^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp3^batch_normalization_5/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2N
%batch_normalization_5/AssignMovingAvg%batch_normalization_5/AssignMovingAvg2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_1'batch_normalization_5/AssignMovingAvg_12p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?*
?
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_66056

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_63364

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_61753

args_0<
-batch_normalization_2_readvariableop_resource:	?>
/batch_normalization_2_readvariableop_1_resource:	?M
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_2/AssignNewValue?&batch_normalization_2/AssignNewValue_1?5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_2/FusedBatchNormV3?
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_2/AssignNewValue?
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_2/AssignNewValue_1?
IdentityIdentity*batch_normalization_2/FusedBatchNormV3:y:0%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_63070

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_module_wrapper_17_layer_call_fn_65365

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_610802
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_61013

args_0
identityw
dropout_2/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_2/Identityx
IdentityIdentitydropout_2/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
3__inference_batch_normalization_layer_call_fn_65729

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_627502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_4_layer_call_fn_65989

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_633042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_61119

args_0F
7batch_normalization_4_batchnorm_readvariableop_resource:	?J
;batch_normalization_4_batchnorm_mul_readvariableop_resource:	?H
9batch_normalization_4_batchnorm_readvariableop_1_resource:	?H
9batch_normalization_4_batchnorm_readvariableop_2_resource:	?
identity??.batch_normalization_4/batchnorm/ReadVariableOp?0batch_normalization_4/batchnorm/ReadVariableOp_1?0batch_normalization_4/batchnorm/ReadVariableOp_2?2batch_normalization_4/batchnorm/mul/ReadVariableOp?
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_4/batchnorm/ReadVariableOp?
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_4/batchnorm/add/y?
#batch_normalization_4/batchnorm/addAddV26batch_normalization_4/batchnorm/ReadVariableOp:value:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/add?
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/Rsqrt?
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_4/batchnorm/mul/ReadVariableOp?
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/mul?
%batch_normalization_4/batchnorm/mul_1Mulargs_0'batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/mul_1?
0batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_1?
%batch_normalization_4/batchnorm/mul_2Mul8batch_normalization_4/batchnorm/ReadVariableOp_1:value:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/mul_2?
0batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_2?
#batch_normalization_4/batchnorm/subSub8batch_normalization_4/batchnorm/ReadVariableOp_2:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/sub?
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/add_1?
IdentityIdentity)batch_normalization_4/batchnorm/add_1:z:0/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2d
0batch_normalization_4/batchnorm/ReadVariableOp_10batch_normalization_4/batchnorm/ReadVariableOp_12d
0batch_normalization_4/batchnorm/ReadVariableOp_20batch_normalization_4/batchnorm/ReadVariableOp_22h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_61563

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_65529

args_0
identity?w
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_4/dropout/Const?
dropout_4/dropout/MulMulargs_0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/dropout/Mulh
dropout_4/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform?
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_4/dropout/GreaterEqual/y?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_4/dropout/GreaterEqual?
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_4/dropout/Cast?
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_4/dropout/Mul_1p
IdentityIdentitydropout_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_65333

args_0
identity?
max_pooling2d_3/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool}
IdentityIdentity max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_65558

args_0:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
IdentityIdentitydense_1/Relu:activations:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
3__inference_batch_normalization_layer_call_fn_65742

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_627942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
j
1__inference_module_wrapper_16_layer_call_fn_65343

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_615862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_8_layer_call_fn_65040

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_609542
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_65376

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_9_layer_call_fn_65080

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_617872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?*
?
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_66136

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_65184

args_0
identity?
max_pooling2d_2/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool}
IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_65251

args_0C
'conv2d_4_conv2d_readvariableop_resource:??7
(conv2d_4_biasadd_readvariableop_resource:	?
identity??conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2Dargs_0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_4/Conv2D?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_4/Relu?
IdentityIdentityconv2d_4/Relu:activations:0 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_65211

args_0
identity?w
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/dropout/Const?
dropout_2/dropout/MulMulargs_0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mulh
dropout_2/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mul_1x
IdentityIdentitydropout_2/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_61093

args_08
$dense_matmul_readvariableop_resource:
?$?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_60954

args_0
identityw
dropout_1/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_1/Identityx
IdentityIdentitydropout_1/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_4_layer_call_fn_64891

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_608952
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_65908

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_61602

args_0
identity?
max_pooling2d_3/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool}
IdentityIdentity max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_5_layer_call_fn_64922

args_0"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_609082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
j
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_61814

args_0
identity?w
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulargs_0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_1/dropout/Mulh
dropout_1/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_1/dropout/Mul_1x
IdentityIdentitydropout_1/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_17_layer_call_fn_65370

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_615632
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_60932

args_0<
-batch_normalization_1_readvariableop_resource:	?>
/batch_normalization_1_readvariableop_1_resource:	?M
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_1/ReadVariableOp?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_1/ReadVariableOp_1?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3?
IdentityIdentity*batch_normalization_1/FusedBatchNormV3:y:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_61050

args_0<
-batch_normalization_3_readvariableop_resource:	?>
/batch_normalization_3_readvariableop_1_resource:	?M
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_3/ReadVariableOp?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_3/ReadVariableOp_1?
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3?
IdentityIdentity*batch_normalization_3/FusedBatchNormV3:y:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_60895

args_0
identityr
dropout/IdentityIdentityargs_0*
T0*/
_output_shapes
:?????????@2
dropout/Identityu
IdentityIdentitydropout/Identity:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_20_layer_call_fn_65507

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_611342
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_65179

args_0
identity?
max_pooling2d_2/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool}
IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?R
!__inference__traced_restore_66821
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: I
/assignvariableop_5_module_wrapper_conv2d_kernel: ;
-assignvariableop_6_module_wrapper_conv2d_bias: M
3assignvariableop_7_module_wrapper_1_conv2d_1_kernel: @?
1assignvariableop_8_module_wrapper_1_conv2d_1_bias:@K
=assignvariableop_9_module_wrapper_2_batch_normalization_gamma:@K
=assignvariableop_10_module_wrapper_2_batch_normalization_beta:@O
4assignvariableop_11_module_wrapper_5_conv2d_2_kernel:@?A
2assignvariableop_12_module_wrapper_5_conv2d_2_bias:	?O
@assignvariableop_13_module_wrapper_6_batch_normalization_1_gamma:	?N
?assignvariableop_14_module_wrapper_6_batch_normalization_1_beta:	?P
4assignvariableop_15_module_wrapper_9_conv2d_3_kernel:??A
2assignvariableop_16_module_wrapper_9_conv2d_3_bias:	?P
Aassignvariableop_17_module_wrapper_10_batch_normalization_2_gamma:	?O
@assignvariableop_18_module_wrapper_10_batch_normalization_2_beta:	?Q
5assignvariableop_19_module_wrapper_13_conv2d_4_kernel:??B
3assignvariableop_20_module_wrapper_13_conv2d_4_bias:	?P
Aassignvariableop_21_module_wrapper_14_batch_normalization_3_gamma:	?O
@assignvariableop_22_module_wrapper_14_batch_normalization_3_beta:	?F
2assignvariableop_23_module_wrapper_18_dense_kernel:
?$??
0assignvariableop_24_module_wrapper_18_dense_bias:	?P
Aassignvariableop_25_module_wrapper_19_batch_normalization_4_gamma:	?O
@assignvariableop_26_module_wrapper_19_batch_normalization_4_beta:	?H
4assignvariableop_27_module_wrapper_21_dense_1_kernel:
??A
2assignvariableop_28_module_wrapper_21_dense_1_bias:	?P
Aassignvariableop_29_module_wrapper_22_batch_normalization_5_gamma:	?O
@assignvariableop_30_module_wrapper_22_batch_normalization_5_beta:	?G
4assignvariableop_31_module_wrapper_24_dense_2_kernel:	?@
2assignvariableop_32_module_wrapper_24_dense_2_bias:R
Dassignvariableop_33_module_wrapper_2_batch_normalization_moving_mean:@V
Hassignvariableop_34_module_wrapper_2_batch_normalization_moving_variance:@U
Fassignvariableop_35_module_wrapper_6_batch_normalization_1_moving_mean:	?Y
Jassignvariableop_36_module_wrapper_6_batch_normalization_1_moving_variance:	?V
Gassignvariableop_37_module_wrapper_10_batch_normalization_2_moving_mean:	?Z
Kassignvariableop_38_module_wrapper_10_batch_normalization_2_moving_variance:	?V
Gassignvariableop_39_module_wrapper_14_batch_normalization_3_moving_mean:	?Z
Kassignvariableop_40_module_wrapper_14_batch_normalization_3_moving_variance:	?V
Gassignvariableop_41_module_wrapper_19_batch_normalization_4_moving_mean:	?Z
Kassignvariableop_42_module_wrapper_19_batch_normalization_4_moving_variance:	?V
Gassignvariableop_43_module_wrapper_22_batch_normalization_5_moving_mean:	?Z
Kassignvariableop_44_module_wrapper_22_batch_normalization_5_moving_variance:	?#
assignvariableop_45_total: #
assignvariableop_46_count: %
assignvariableop_47_total_1: %
assignvariableop_48_count_1: Q
7assignvariableop_49_adam_module_wrapper_conv2d_kernel_m: C
5assignvariableop_50_adam_module_wrapper_conv2d_bias_m: U
;assignvariableop_51_adam_module_wrapper_1_conv2d_1_kernel_m: @G
9assignvariableop_52_adam_module_wrapper_1_conv2d_1_bias_m:@S
Eassignvariableop_53_adam_module_wrapper_2_batch_normalization_gamma_m:@R
Dassignvariableop_54_adam_module_wrapper_2_batch_normalization_beta_m:@V
;assignvariableop_55_adam_module_wrapper_5_conv2d_2_kernel_m:@?H
9assignvariableop_56_adam_module_wrapper_5_conv2d_2_bias_m:	?V
Gassignvariableop_57_adam_module_wrapper_6_batch_normalization_1_gamma_m:	?U
Fassignvariableop_58_adam_module_wrapper_6_batch_normalization_1_beta_m:	?W
;assignvariableop_59_adam_module_wrapper_9_conv2d_3_kernel_m:??H
9assignvariableop_60_adam_module_wrapper_9_conv2d_3_bias_m:	?W
Hassignvariableop_61_adam_module_wrapper_10_batch_normalization_2_gamma_m:	?V
Gassignvariableop_62_adam_module_wrapper_10_batch_normalization_2_beta_m:	?X
<assignvariableop_63_adam_module_wrapper_13_conv2d_4_kernel_m:??I
:assignvariableop_64_adam_module_wrapper_13_conv2d_4_bias_m:	?W
Hassignvariableop_65_adam_module_wrapper_14_batch_normalization_3_gamma_m:	?V
Gassignvariableop_66_adam_module_wrapper_14_batch_normalization_3_beta_m:	?M
9assignvariableop_67_adam_module_wrapper_18_dense_kernel_m:
?$?F
7assignvariableop_68_adam_module_wrapper_18_dense_bias_m:	?W
Hassignvariableop_69_adam_module_wrapper_19_batch_normalization_4_gamma_m:	?V
Gassignvariableop_70_adam_module_wrapper_19_batch_normalization_4_beta_m:	?O
;assignvariableop_71_adam_module_wrapper_21_dense_1_kernel_m:
??H
9assignvariableop_72_adam_module_wrapper_21_dense_1_bias_m:	?W
Hassignvariableop_73_adam_module_wrapper_22_batch_normalization_5_gamma_m:	?V
Gassignvariableop_74_adam_module_wrapper_22_batch_normalization_5_beta_m:	?N
;assignvariableop_75_adam_module_wrapper_24_dense_2_kernel_m:	?G
9assignvariableop_76_adam_module_wrapper_24_dense_2_bias_m:Q
7assignvariableop_77_adam_module_wrapper_conv2d_kernel_v: C
5assignvariableop_78_adam_module_wrapper_conv2d_bias_v: U
;assignvariableop_79_adam_module_wrapper_1_conv2d_1_kernel_v: @G
9assignvariableop_80_adam_module_wrapper_1_conv2d_1_bias_v:@S
Eassignvariableop_81_adam_module_wrapper_2_batch_normalization_gamma_v:@R
Dassignvariableop_82_adam_module_wrapper_2_batch_normalization_beta_v:@V
;assignvariableop_83_adam_module_wrapper_5_conv2d_2_kernel_v:@?H
9assignvariableop_84_adam_module_wrapper_5_conv2d_2_bias_v:	?V
Gassignvariableop_85_adam_module_wrapper_6_batch_normalization_1_gamma_v:	?U
Fassignvariableop_86_adam_module_wrapper_6_batch_normalization_1_beta_v:	?W
;assignvariableop_87_adam_module_wrapper_9_conv2d_3_kernel_v:??H
9assignvariableop_88_adam_module_wrapper_9_conv2d_3_bias_v:	?W
Hassignvariableop_89_adam_module_wrapper_10_batch_normalization_2_gamma_v:	?V
Gassignvariableop_90_adam_module_wrapper_10_batch_normalization_2_beta_v:	?X
<assignvariableop_91_adam_module_wrapper_13_conv2d_4_kernel_v:??I
:assignvariableop_92_adam_module_wrapper_13_conv2d_4_bias_v:	?W
Hassignvariableop_93_adam_module_wrapper_14_batch_normalization_3_gamma_v:	?V
Gassignvariableop_94_adam_module_wrapper_14_batch_normalization_3_beta_v:	?M
9assignvariableop_95_adam_module_wrapper_18_dense_kernel_v:
?$?F
7assignvariableop_96_adam_module_wrapper_18_dense_bias_v:	?W
Hassignvariableop_97_adam_module_wrapper_19_batch_normalization_4_gamma_v:	?V
Gassignvariableop_98_adam_module_wrapper_19_batch_normalization_4_beta_v:	?O
;assignvariableop_99_adam_module_wrapper_21_dense_1_kernel_v:
??I
:assignvariableop_100_adam_module_wrapper_21_dense_1_bias_v:	?X
Iassignvariableop_101_adam_module_wrapper_22_batch_normalization_5_gamma_v:	?W
Hassignvariableop_102_adam_module_wrapper_22_batch_normalization_5_beta_v:	?O
<assignvariableop_103_adam_module_wrapper_24_dense_2_kernel_v:	?H
:assignvariableop_104_adam_module_wrapper_24_dense_2_bias_v:
identity_106??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?6
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*?5
value?5B?5jB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*?
value?B?jB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*x
dtypesn
l2j	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp/assignvariableop_5_module_wrapper_conv2d_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp-assignvariableop_6_module_wrapper_conv2d_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp3assignvariableop_7_module_wrapper_1_conv2d_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp1assignvariableop_8_module_wrapper_1_conv2d_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp=assignvariableop_9_module_wrapper_2_batch_normalization_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp=assignvariableop_10_module_wrapper_2_batch_normalization_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp4assignvariableop_11_module_wrapper_5_conv2d_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp2assignvariableop_12_module_wrapper_5_conv2d_2_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp@assignvariableop_13_module_wrapper_6_batch_normalization_1_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp?assignvariableop_14_module_wrapper_6_batch_normalization_1_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp4assignvariableop_15_module_wrapper_9_conv2d_3_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp2assignvariableop_16_module_wrapper_9_conv2d_3_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpAassignvariableop_17_module_wrapper_10_batch_normalization_2_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp@assignvariableop_18_module_wrapper_10_batch_normalization_2_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp5assignvariableop_19_module_wrapper_13_conv2d_4_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp3assignvariableop_20_module_wrapper_13_conv2d_4_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpAassignvariableop_21_module_wrapper_14_batch_normalization_3_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp@assignvariableop_22_module_wrapper_14_batch_normalization_3_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp2assignvariableop_23_module_wrapper_18_dense_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp0assignvariableop_24_module_wrapper_18_dense_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpAassignvariableop_25_module_wrapper_19_batch_normalization_4_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_module_wrapper_19_batch_normalization_4_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_module_wrapper_21_dense_1_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_module_wrapper_21_dense_1_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpAassignvariableop_29_module_wrapper_22_batch_normalization_5_gammaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp@assignvariableop_30_module_wrapper_22_batch_normalization_5_betaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_module_wrapper_24_dense_2_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp2assignvariableop_32_module_wrapper_24_dense_2_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpDassignvariableop_33_module_wrapper_2_batch_normalization_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpHassignvariableop_34_module_wrapper_2_batch_normalization_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpFassignvariableop_35_module_wrapper_6_batch_normalization_1_moving_meanIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpJassignvariableop_36_module_wrapper_6_batch_normalization_1_moving_varianceIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpGassignvariableop_37_module_wrapper_10_batch_normalization_2_moving_meanIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpKassignvariableop_38_module_wrapper_10_batch_normalization_2_moving_varianceIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpGassignvariableop_39_module_wrapper_14_batch_normalization_3_moving_meanIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpKassignvariableop_40_module_wrapper_14_batch_normalization_3_moving_varianceIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpGassignvariableop_41_module_wrapper_19_batch_normalization_4_moving_meanIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpKassignvariableop_42_module_wrapper_19_batch_normalization_4_moving_varianceIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpGassignvariableop_43_module_wrapper_22_batch_normalization_5_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpKassignvariableop_44_module_wrapper_22_batch_normalization_5_moving_varianceIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpassignvariableop_45_totalIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpassignvariableop_46_countIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOpassignvariableop_47_total_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpassignvariableop_48_count_1Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp7assignvariableop_49_adam_module_wrapper_conv2d_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp5assignvariableop_50_adam_module_wrapper_conv2d_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp;assignvariableop_51_adam_module_wrapper_1_conv2d_1_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp9assignvariableop_52_adam_module_wrapper_1_conv2d_1_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOpEassignvariableop_53_adam_module_wrapper_2_batch_normalization_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOpDassignvariableop_54_adam_module_wrapper_2_batch_normalization_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp;assignvariableop_55_adam_module_wrapper_5_conv2d_2_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp9assignvariableop_56_adam_module_wrapper_5_conv2d_2_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOpGassignvariableop_57_adam_module_wrapper_6_batch_normalization_1_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOpFassignvariableop_58_adam_module_wrapper_6_batch_normalization_1_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp;assignvariableop_59_adam_module_wrapper_9_conv2d_3_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp9assignvariableop_60_adam_module_wrapper_9_conv2d_3_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOpHassignvariableop_61_adam_module_wrapper_10_batch_normalization_2_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOpGassignvariableop_62_adam_module_wrapper_10_batch_normalization_2_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp<assignvariableop_63_adam_module_wrapper_13_conv2d_4_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp:assignvariableop_64_adam_module_wrapper_13_conv2d_4_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOpHassignvariableop_65_adam_module_wrapper_14_batch_normalization_3_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOpGassignvariableop_66_adam_module_wrapper_14_batch_normalization_3_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp9assignvariableop_67_adam_module_wrapper_18_dense_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp7assignvariableop_68_adam_module_wrapper_18_dense_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOpHassignvariableop_69_adam_module_wrapper_19_batch_normalization_4_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOpGassignvariableop_70_adam_module_wrapper_19_batch_normalization_4_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp;assignvariableop_71_adam_module_wrapper_21_dense_1_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp9assignvariableop_72_adam_module_wrapper_21_dense_1_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOpHassignvariableop_73_adam_module_wrapper_22_batch_normalization_5_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOpGassignvariableop_74_adam_module_wrapper_22_batch_normalization_5_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp;assignvariableop_75_adam_module_wrapper_24_dense_2_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp9assignvariableop_76_adam_module_wrapper_24_dense_2_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_module_wrapper_conv2d_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp5assignvariableop_78_adam_module_wrapper_conv2d_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp;assignvariableop_79_adam_module_wrapper_1_conv2d_1_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp9assignvariableop_80_adam_module_wrapper_1_conv2d_1_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOpEassignvariableop_81_adam_module_wrapper_2_batch_normalization_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOpDassignvariableop_82_adam_module_wrapper_2_batch_normalization_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp;assignvariableop_83_adam_module_wrapper_5_conv2d_2_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp9assignvariableop_84_adam_module_wrapper_5_conv2d_2_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOpGassignvariableop_85_adam_module_wrapper_6_batch_normalization_1_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOpFassignvariableop_86_adam_module_wrapper_6_batch_normalization_1_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp;assignvariableop_87_adam_module_wrapper_9_conv2d_3_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp9assignvariableop_88_adam_module_wrapper_9_conv2d_3_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOpHassignvariableop_89_adam_module_wrapper_10_batch_normalization_2_gamma_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOpGassignvariableop_90_adam_module_wrapper_10_batch_normalization_2_beta_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp<assignvariableop_91_adam_module_wrapper_13_conv2d_4_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp:assignvariableop_92_adam_module_wrapper_13_conv2d_4_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOpHassignvariableop_93_adam_module_wrapper_14_batch_normalization_3_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOpGassignvariableop_94_adam_module_wrapper_14_batch_normalization_3_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp9assignvariableop_95_adam_module_wrapper_18_dense_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp7assignvariableop_96_adam_module_wrapper_18_dense_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOpHassignvariableop_97_adam_module_wrapper_19_batch_normalization_4_gamma_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOpGassignvariableop_98_adam_module_wrapper_19_batch_normalization_4_beta_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp;assignvariableop_99_adam_module_wrapper_21_dense_1_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp:assignvariableop_100_adam_module_wrapper_21_dense_1_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOpIassignvariableop_101_adam_module_wrapper_22_batch_normalization_5_gamma_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOpHassignvariableop_102_adam_module_wrapper_22_batch_normalization_5_beta_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp<assignvariableop_103_adam_module_wrapper_24_dense_2_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp:assignvariableop_104_adam_module_wrapper_24_dense_2_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1049
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_105Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_105?
Identity_106IdentityIdentity_105:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_106"%
identity_106Identity_106:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042*
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
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
k
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_61455

args_0
identity?w
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_4/dropout/Const?
dropout_4/dropout/MulMulargs_0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/dropout/Mulh
dropout_4/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform?
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_4/dropout/GreaterEqual/y?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_4/dropout/GreaterEqual?
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_4/dropout/Cast?
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_4/dropout/Mul_1p
IdentityIdentitydropout_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?<
__inference__traced_save_66496
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop;
7savev2_module_wrapper_conv2d_kernel_read_readvariableop9
5savev2_module_wrapper_conv2d_bias_read_readvariableop?
;savev2_module_wrapper_1_conv2d_1_kernel_read_readvariableop=
9savev2_module_wrapper_1_conv2d_1_bias_read_readvariableopI
Esavev2_module_wrapper_2_batch_normalization_gamma_read_readvariableopH
Dsavev2_module_wrapper_2_batch_normalization_beta_read_readvariableop?
;savev2_module_wrapper_5_conv2d_2_kernel_read_readvariableop=
9savev2_module_wrapper_5_conv2d_2_bias_read_readvariableopK
Gsavev2_module_wrapper_6_batch_normalization_1_gamma_read_readvariableopJ
Fsavev2_module_wrapper_6_batch_normalization_1_beta_read_readvariableop?
;savev2_module_wrapper_9_conv2d_3_kernel_read_readvariableop=
9savev2_module_wrapper_9_conv2d_3_bias_read_readvariableopL
Hsavev2_module_wrapper_10_batch_normalization_2_gamma_read_readvariableopK
Gsavev2_module_wrapper_10_batch_normalization_2_beta_read_readvariableop@
<savev2_module_wrapper_13_conv2d_4_kernel_read_readvariableop>
:savev2_module_wrapper_13_conv2d_4_bias_read_readvariableopL
Hsavev2_module_wrapper_14_batch_normalization_3_gamma_read_readvariableopK
Gsavev2_module_wrapper_14_batch_normalization_3_beta_read_readvariableop=
9savev2_module_wrapper_18_dense_kernel_read_readvariableop;
7savev2_module_wrapper_18_dense_bias_read_readvariableopL
Hsavev2_module_wrapper_19_batch_normalization_4_gamma_read_readvariableopK
Gsavev2_module_wrapper_19_batch_normalization_4_beta_read_readvariableop?
;savev2_module_wrapper_21_dense_1_kernel_read_readvariableop=
9savev2_module_wrapper_21_dense_1_bias_read_readvariableopL
Hsavev2_module_wrapper_22_batch_normalization_5_gamma_read_readvariableopK
Gsavev2_module_wrapper_22_batch_normalization_5_beta_read_readvariableop?
;savev2_module_wrapper_24_dense_2_kernel_read_readvariableop=
9savev2_module_wrapper_24_dense_2_bias_read_readvariableopO
Ksavev2_module_wrapper_2_batch_normalization_moving_mean_read_readvariableopS
Osavev2_module_wrapper_2_batch_normalization_moving_variance_read_readvariableopQ
Msavev2_module_wrapper_6_batch_normalization_1_moving_mean_read_readvariableopU
Qsavev2_module_wrapper_6_batch_normalization_1_moving_variance_read_readvariableopR
Nsavev2_module_wrapper_10_batch_normalization_2_moving_mean_read_readvariableopV
Rsavev2_module_wrapper_10_batch_normalization_2_moving_variance_read_readvariableopR
Nsavev2_module_wrapper_14_batch_normalization_3_moving_mean_read_readvariableopV
Rsavev2_module_wrapper_14_batch_normalization_3_moving_variance_read_readvariableopR
Nsavev2_module_wrapper_19_batch_normalization_4_moving_mean_read_readvariableopV
Rsavev2_module_wrapper_19_batch_normalization_4_moving_variance_read_readvariableopR
Nsavev2_module_wrapper_22_batch_normalization_5_moving_mean_read_readvariableopV
Rsavev2_module_wrapper_22_batch_normalization_5_moving_variance_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_1_conv2d_1_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_1_conv2d_1_bias_m_read_readvariableopP
Lsavev2_adam_module_wrapper_2_batch_normalization_gamma_m_read_readvariableopO
Ksavev2_adam_module_wrapper_2_batch_normalization_beta_m_read_readvariableopF
Bsavev2_adam_module_wrapper_5_conv2d_2_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_5_conv2d_2_bias_m_read_readvariableopR
Nsavev2_adam_module_wrapper_6_batch_normalization_1_gamma_m_read_readvariableopQ
Msavev2_adam_module_wrapper_6_batch_normalization_1_beta_m_read_readvariableopF
Bsavev2_adam_module_wrapper_9_conv2d_3_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_9_conv2d_3_bias_m_read_readvariableopS
Osavev2_adam_module_wrapper_10_batch_normalization_2_gamma_m_read_readvariableopR
Nsavev2_adam_module_wrapper_10_batch_normalization_2_beta_m_read_readvariableopG
Csavev2_adam_module_wrapper_13_conv2d_4_kernel_m_read_readvariableopE
Asavev2_adam_module_wrapper_13_conv2d_4_bias_m_read_readvariableopS
Osavev2_adam_module_wrapper_14_batch_normalization_3_gamma_m_read_readvariableopR
Nsavev2_adam_module_wrapper_14_batch_normalization_3_beta_m_read_readvariableopD
@savev2_adam_module_wrapper_18_dense_kernel_m_read_readvariableopB
>savev2_adam_module_wrapper_18_dense_bias_m_read_readvariableopS
Osavev2_adam_module_wrapper_19_batch_normalization_4_gamma_m_read_readvariableopR
Nsavev2_adam_module_wrapper_19_batch_normalization_4_beta_m_read_readvariableopF
Bsavev2_adam_module_wrapper_21_dense_1_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_21_dense_1_bias_m_read_readvariableopS
Osavev2_adam_module_wrapper_22_batch_normalization_5_gamma_m_read_readvariableopR
Nsavev2_adam_module_wrapper_22_batch_normalization_5_beta_m_read_readvariableopF
Bsavev2_adam_module_wrapper_24_dense_2_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_24_dense_2_bias_m_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_1_conv2d_1_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_1_conv2d_1_bias_v_read_readvariableopP
Lsavev2_adam_module_wrapper_2_batch_normalization_gamma_v_read_readvariableopO
Ksavev2_adam_module_wrapper_2_batch_normalization_beta_v_read_readvariableopF
Bsavev2_adam_module_wrapper_5_conv2d_2_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_5_conv2d_2_bias_v_read_readvariableopR
Nsavev2_adam_module_wrapper_6_batch_normalization_1_gamma_v_read_readvariableopQ
Msavev2_adam_module_wrapper_6_batch_normalization_1_beta_v_read_readvariableopF
Bsavev2_adam_module_wrapper_9_conv2d_3_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_9_conv2d_3_bias_v_read_readvariableopS
Osavev2_adam_module_wrapper_10_batch_normalization_2_gamma_v_read_readvariableopR
Nsavev2_adam_module_wrapper_10_batch_normalization_2_beta_v_read_readvariableopG
Csavev2_adam_module_wrapper_13_conv2d_4_kernel_v_read_readvariableopE
Asavev2_adam_module_wrapper_13_conv2d_4_bias_v_read_readvariableopS
Osavev2_adam_module_wrapper_14_batch_normalization_3_gamma_v_read_readvariableopR
Nsavev2_adam_module_wrapper_14_batch_normalization_3_beta_v_read_readvariableopD
@savev2_adam_module_wrapper_18_dense_kernel_v_read_readvariableopB
>savev2_adam_module_wrapper_18_dense_bias_v_read_readvariableopS
Osavev2_adam_module_wrapper_19_batch_normalization_4_gamma_v_read_readvariableopR
Nsavev2_adam_module_wrapper_19_batch_normalization_4_beta_v_read_readvariableopF
Bsavev2_adam_module_wrapper_21_dense_1_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_21_dense_1_bias_v_read_readvariableopS
Osavev2_adam_module_wrapper_22_batch_normalization_5_gamma_v_read_readvariableopR
Nsavev2_adam_module_wrapper_22_batch_normalization_5_beta_v_read_readvariableopF
Bsavev2_adam_module_wrapper_24_dense_2_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_24_dense_2_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?6
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*?5
value?5B?5jB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*?
value?B?jB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?:
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop7savev2_module_wrapper_conv2d_kernel_read_readvariableop5savev2_module_wrapper_conv2d_bias_read_readvariableop;savev2_module_wrapper_1_conv2d_1_kernel_read_readvariableop9savev2_module_wrapper_1_conv2d_1_bias_read_readvariableopEsavev2_module_wrapper_2_batch_normalization_gamma_read_readvariableopDsavev2_module_wrapper_2_batch_normalization_beta_read_readvariableop;savev2_module_wrapper_5_conv2d_2_kernel_read_readvariableop9savev2_module_wrapper_5_conv2d_2_bias_read_readvariableopGsavev2_module_wrapper_6_batch_normalization_1_gamma_read_readvariableopFsavev2_module_wrapper_6_batch_normalization_1_beta_read_readvariableop;savev2_module_wrapper_9_conv2d_3_kernel_read_readvariableop9savev2_module_wrapper_9_conv2d_3_bias_read_readvariableopHsavev2_module_wrapper_10_batch_normalization_2_gamma_read_readvariableopGsavev2_module_wrapper_10_batch_normalization_2_beta_read_readvariableop<savev2_module_wrapper_13_conv2d_4_kernel_read_readvariableop:savev2_module_wrapper_13_conv2d_4_bias_read_readvariableopHsavev2_module_wrapper_14_batch_normalization_3_gamma_read_readvariableopGsavev2_module_wrapper_14_batch_normalization_3_beta_read_readvariableop9savev2_module_wrapper_18_dense_kernel_read_readvariableop7savev2_module_wrapper_18_dense_bias_read_readvariableopHsavev2_module_wrapper_19_batch_normalization_4_gamma_read_readvariableopGsavev2_module_wrapper_19_batch_normalization_4_beta_read_readvariableop;savev2_module_wrapper_21_dense_1_kernel_read_readvariableop9savev2_module_wrapper_21_dense_1_bias_read_readvariableopHsavev2_module_wrapper_22_batch_normalization_5_gamma_read_readvariableopGsavev2_module_wrapper_22_batch_normalization_5_beta_read_readvariableop;savev2_module_wrapper_24_dense_2_kernel_read_readvariableop9savev2_module_wrapper_24_dense_2_bias_read_readvariableopKsavev2_module_wrapper_2_batch_normalization_moving_mean_read_readvariableopOsavev2_module_wrapper_2_batch_normalization_moving_variance_read_readvariableopMsavev2_module_wrapper_6_batch_normalization_1_moving_mean_read_readvariableopQsavev2_module_wrapper_6_batch_normalization_1_moving_variance_read_readvariableopNsavev2_module_wrapper_10_batch_normalization_2_moving_mean_read_readvariableopRsavev2_module_wrapper_10_batch_normalization_2_moving_variance_read_readvariableopNsavev2_module_wrapper_14_batch_normalization_3_moving_mean_read_readvariableopRsavev2_module_wrapper_14_batch_normalization_3_moving_variance_read_readvariableopNsavev2_module_wrapper_19_batch_normalization_4_moving_mean_read_readvariableopRsavev2_module_wrapper_19_batch_normalization_4_moving_variance_read_readvariableopNsavev2_module_wrapper_22_batch_normalization_5_moving_mean_read_readvariableopRsavev2_module_wrapper_22_batch_normalization_5_moving_variance_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopBsavev2_adam_module_wrapper_1_conv2d_1_kernel_m_read_readvariableop@savev2_adam_module_wrapper_1_conv2d_1_bias_m_read_readvariableopLsavev2_adam_module_wrapper_2_batch_normalization_gamma_m_read_readvariableopKsavev2_adam_module_wrapper_2_batch_normalization_beta_m_read_readvariableopBsavev2_adam_module_wrapper_5_conv2d_2_kernel_m_read_readvariableop@savev2_adam_module_wrapper_5_conv2d_2_bias_m_read_readvariableopNsavev2_adam_module_wrapper_6_batch_normalization_1_gamma_m_read_readvariableopMsavev2_adam_module_wrapper_6_batch_normalization_1_beta_m_read_readvariableopBsavev2_adam_module_wrapper_9_conv2d_3_kernel_m_read_readvariableop@savev2_adam_module_wrapper_9_conv2d_3_bias_m_read_readvariableopOsavev2_adam_module_wrapper_10_batch_normalization_2_gamma_m_read_readvariableopNsavev2_adam_module_wrapper_10_batch_normalization_2_beta_m_read_readvariableopCsavev2_adam_module_wrapper_13_conv2d_4_kernel_m_read_readvariableopAsavev2_adam_module_wrapper_13_conv2d_4_bias_m_read_readvariableopOsavev2_adam_module_wrapper_14_batch_normalization_3_gamma_m_read_readvariableopNsavev2_adam_module_wrapper_14_batch_normalization_3_beta_m_read_readvariableop@savev2_adam_module_wrapper_18_dense_kernel_m_read_readvariableop>savev2_adam_module_wrapper_18_dense_bias_m_read_readvariableopOsavev2_adam_module_wrapper_19_batch_normalization_4_gamma_m_read_readvariableopNsavev2_adam_module_wrapper_19_batch_normalization_4_beta_m_read_readvariableopBsavev2_adam_module_wrapper_21_dense_1_kernel_m_read_readvariableop@savev2_adam_module_wrapper_21_dense_1_bias_m_read_readvariableopOsavev2_adam_module_wrapper_22_batch_normalization_5_gamma_m_read_readvariableopNsavev2_adam_module_wrapper_22_batch_normalization_5_beta_m_read_readvariableopBsavev2_adam_module_wrapper_24_dense_2_kernel_m_read_readvariableop@savev2_adam_module_wrapper_24_dense_2_bias_m_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopBsavev2_adam_module_wrapper_1_conv2d_1_kernel_v_read_readvariableop@savev2_adam_module_wrapper_1_conv2d_1_bias_v_read_readvariableopLsavev2_adam_module_wrapper_2_batch_normalization_gamma_v_read_readvariableopKsavev2_adam_module_wrapper_2_batch_normalization_beta_v_read_readvariableopBsavev2_adam_module_wrapper_5_conv2d_2_kernel_v_read_readvariableop@savev2_adam_module_wrapper_5_conv2d_2_bias_v_read_readvariableopNsavev2_adam_module_wrapper_6_batch_normalization_1_gamma_v_read_readvariableopMsavev2_adam_module_wrapper_6_batch_normalization_1_beta_v_read_readvariableopBsavev2_adam_module_wrapper_9_conv2d_3_kernel_v_read_readvariableop@savev2_adam_module_wrapper_9_conv2d_3_bias_v_read_readvariableopOsavev2_adam_module_wrapper_10_batch_normalization_2_gamma_v_read_readvariableopNsavev2_adam_module_wrapper_10_batch_normalization_2_beta_v_read_readvariableopCsavev2_adam_module_wrapper_13_conv2d_4_kernel_v_read_readvariableopAsavev2_adam_module_wrapper_13_conv2d_4_bias_v_read_readvariableopOsavev2_adam_module_wrapper_14_batch_normalization_3_gamma_v_read_readvariableopNsavev2_adam_module_wrapper_14_batch_normalization_3_beta_v_read_readvariableop@savev2_adam_module_wrapper_18_dense_kernel_v_read_readvariableop>savev2_adam_module_wrapper_18_dense_bias_v_read_readvariableopOsavev2_adam_module_wrapper_19_batch_normalization_4_gamma_v_read_readvariableopNsavev2_adam_module_wrapper_19_batch_normalization_4_beta_v_read_readvariableopBsavev2_adam_module_wrapper_21_dense_1_kernel_v_read_readvariableop@savev2_adam_module_wrapper_21_dense_1_bias_v_read_readvariableopOsavev2_adam_module_wrapper_22_batch_normalization_5_gamma_v_read_readvariableopNsavev2_adam_module_wrapper_22_batch_normalization_5_beta_v_read_readvariableopBsavev2_adam_module_wrapper_24_dense_2_kernel_v_read_readvariableop@savev2_adam_module_wrapper_24_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *x
dtypesn
l2j	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : : @:@:@:@:@?:?:?:?:??:?:?:?:??:?:?:?:
?$?:?:?:?:
??:?:?:?:	?::@:@:?:?:?:?:?:?:?:?:?:?: : : : : : : @:@:@:@:@?:?:?:?:??:?:?:?:??:?:?:?:
?$?:?:?:?:
??:?:?:?:	?:: : : @:@:@:@:@?:?:?:?:??:?:?:?:??:?:?:?:
?$?:?:?:?:
??:?:?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?$?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:% !

_output_shapes
:	?: !

_output_shapes
:: "

_output_shapes
:@: #

_output_shapes
:@:!$

_output_shapes	
:?:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:!(

_output_shapes	
:?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:!+

_output_shapes	
:?:!,

_output_shapes	
:?:!-

_output_shapes	
:?:.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :,2(
&
_output_shapes
: : 3

_output_shapes
: :,4(
&
_output_shapes
: @: 5

_output_shapes
:@: 6

_output_shapes
:@: 7

_output_shapes
:@:-8)
'
_output_shapes
:@?:!9

_output_shapes	
:?:!:

_output_shapes	
:?:!;

_output_shapes	
:?:.<*
(
_output_shapes
:??:!=

_output_shapes	
:?:!>

_output_shapes	
:?:!?

_output_shapes	
:?:.@*
(
_output_shapes
:??:!A

_output_shapes	
:?:!B

_output_shapes	
:?:!C

_output_shapes	
:?:&D"
 
_output_shapes
:
?$?:!E

_output_shapes	
:?:!F

_output_shapes	
:?:!G

_output_shapes	
:?:&H"
 
_output_shapes
:
??:!I

_output_shapes	
:?:!J

_output_shapes	
:?:!K

_output_shapes	
:?:%L!

_output_shapes
:	?: M

_output_shapes
::,N(
&
_output_shapes
: : O

_output_shapes
: :,P(
&
_output_shapes
: @: Q

_output_shapes
:@: R

_output_shapes
:@: S

_output_shapes
:@:-T)
'
_output_shapes
:@?:!U

_output_shapes	
:?:!V

_output_shapes	
:?:!W

_output_shapes	
:?:.X*
(
_output_shapes
:??:!Y

_output_shapes	
:?:!Z

_output_shapes	
:?:![

_output_shapes	
:?:.\*
(
_output_shapes
:??:!]

_output_shapes	
:?:!^

_output_shapes	
:?:!_

_output_shapes	
:?:&`"
 
_output_shapes
:
?$?:!a

_output_shapes	
:?:!b

_output_shapes	
:?:!c

_output_shapes	
:?:&d"
 
_output_shapes
:
??:!e

_output_shapes	
:?:!f

_output_shapes	
:?:!g

_output_shapes	
:?:%h!

_output_shapes
:	?: i

_output_shapes
::j

_output_shapes
: 
?
?	
#__inference_signature_wrapper_62727
module_wrapper_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?&

unknown_13:??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
?$?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?

unknown_31:
??

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_608142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????00
.
_user_specified_namemodule_wrapper_input
?
?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_61867

args_0<
-batch_normalization_1_readvariableop_resource:	?>
/batch_normalization_1_readvariableop_1_resource:	?M
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_1/AssignNewValue?&batch_normalization_1/AssignNewValue_1?5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_1/ReadVariableOp?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_1/ReadVariableOp_1?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_1/FusedBatchNormV3?
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue?
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1?
IdentityIdentity*batch_normalization_1/FusedBatchNormV3:y:0%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_63208

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_module_wrapper_23_layer_call_fn_65654

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_611882
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
j
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_64913

args_0
identity?s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/dropout/Const?
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Muld
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Mul_1u
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_13_layer_call_fn_65229

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_616732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_62015

args_0A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_1_layer_call_fn_64773

args_0!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_608492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_61006

args_0
identity?
max_pooling2d_2/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool}
IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_60908

args_0B
'conv2d_2_conv2d_readvariableop_resource:@?7
(conv2d_2_biasadd_readvariableop_resource:	?
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_64804

args_0A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_61026

args_0C
'conv2d_4_conv2d_readvariableop_resource:??7
(conv2d_4_biasadd_readvariableop_resource:	?
identity??conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2Dargs_0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_4/Conv2D?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_4/Relu?
IdentityIdentityconv2d_4/Relu:activations:0 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_60967

args_0C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_3/Relu?
IdentityIdentityconv2d_3/Relu:activations:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
5__inference_batch_normalization_3_layer_call_fn_65940

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_632082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_61314

args_09
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulargs_0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_64881

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????00@:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
K
/__inference_max_pooling2d_3_layer_call_fn_63280

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_632742
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_64997

args_0<
-batch_normalization_1_readvariableop_resource:	?>
/batch_normalization_1_readvariableop_1_resource:	?M
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_1/ReadVariableOp?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_1/ReadVariableOp_1?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3?
IdentityIdentity*batch_normalization_1/FusedBatchNormV3:y:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_62932

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_64953

args_0B
'conv2d_2_conv2d_readvariableop_resource:@?7
(conv2d_2_biasadd_readvariableop_resource:	?
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_65615

args_0F
7batch_normalization_5_batchnorm_readvariableop_resource:	?J
;batch_normalization_5_batchnorm_mul_readvariableop_resource:	?H
9batch_normalization_5_batchnorm_readvariableop_1_resource:	?H
9batch_normalization_5_batchnorm_readvariableop_2_resource:	?
identity??.batch_normalization_5/batchnorm/ReadVariableOp?0batch_normalization_5/batchnorm/ReadVariableOp_1?0batch_normalization_5/batchnorm/ReadVariableOp_2?2batch_normalization_5/batchnorm/mul/ReadVariableOp?
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_5/batchnorm/ReadVariableOp?
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_5/batchnorm/add/y?
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/add?
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/Rsqrt?
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_5/batchnorm/mul/ReadVariableOp?
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/mul?
%batch_normalization_5/batchnorm/mul_1Mulargs_0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/mul_1?
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_1?
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/mul_2?
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_2?
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/sub?
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/add_1?
IdentityIdentity)batch_normalization_5/batchnorm/add_1:z:0/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_64866

args_09
+batch_normalization_readvariableop_resource:@;
-batch_normalization_readvariableop_1_resource:@J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:@L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@
identity??"batch_normalization/AssignNewValue?$batch_normalization/AssignNewValue_1?3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02$
"batch_normalization/ReadVariableOp?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02&
$batch_normalization/ReadVariableOp_1?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3args_0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2&
$batch_normalization/FusedBatchNormV3?
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue?
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02&
$batch_normalization/AssignNewValue_1?
IdentityIdentity(batch_normalization/FusedBatchNormV3:y:0#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
j
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_65062

args_0
identity?w
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulargs_0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_1/dropout/Mulh
dropout_1/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_1/dropout/Mul_1x
IdentityIdentitydropout_1/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_13_layer_call_fn_65220

args_0#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_610262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
5__inference_batch_normalization_5_layer_call_fn_66069

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_634662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_65382

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?3
E__inference_sequential_layer_call_and_return_conditional_losses_64334

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource: C
5module_wrapper_conv2d_biasadd_readvariableop_resource: R
8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: @G
9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource:@J
<module_wrapper_2_batch_normalization_readvariableop_resource:@L
>module_wrapper_2_batch_normalization_readvariableop_1_resource:@[
Mmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource:@]
Omodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@S
8module_wrapper_5_conv2d_2_conv2d_readvariableop_resource:@?H
9module_wrapper_5_conv2d_2_biasadd_readvariableop_resource:	?M
>module_wrapper_6_batch_normalization_1_readvariableop_resource:	?O
@module_wrapper_6_batch_normalization_1_readvariableop_1_resource:	?^
Omodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	?`
Qmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	?T
8module_wrapper_9_conv2d_3_conv2d_readvariableop_resource:??H
9module_wrapper_9_conv2d_3_biasadd_readvariableop_resource:	?N
?module_wrapper_10_batch_normalization_2_readvariableop_resource:	?P
Amodule_wrapper_10_batch_normalization_2_readvariableop_1_resource:	?_
Pmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?a
Rmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?U
9module_wrapper_13_conv2d_4_conv2d_readvariableop_resource:??I
:module_wrapper_13_conv2d_4_biasadd_readvariableop_resource:	?N
?module_wrapper_14_batch_normalization_3_readvariableop_resource:	?P
Amodule_wrapper_14_batch_normalization_3_readvariableop_1_resource:	?_
Pmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	?a
Rmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	?J
6module_wrapper_18_dense_matmul_readvariableop_resource:
?$?F
7module_wrapper_18_dense_biasadd_readvariableop_resource:	?^
Omodule_wrapper_19_batch_normalization_4_assignmovingavg_readvariableop_resource:	?`
Qmodule_wrapper_19_batch_normalization_4_assignmovingavg_1_readvariableop_resource:	?\
Mmodule_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource:	?X
Imodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource:	?L
8module_wrapper_21_dense_1_matmul_readvariableop_resource:
??H
9module_wrapper_21_dense_1_biasadd_readvariableop_resource:	?^
Omodule_wrapper_22_batch_normalization_5_assignmovingavg_readvariableop_resource:	?`
Qmodule_wrapper_22_batch_normalization_5_assignmovingavg_1_readvariableop_resource:	?\
Mmodule_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource:	?X
Imodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource:	?K
8module_wrapper_24_dense_2_matmul_readvariableop_resource:	?G
9module_wrapper_24_dense_2_biasadd_readvariableop_resource:
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?6module_wrapper_10/batch_normalization_2/AssignNewValue?8module_wrapper_10/batch_normalization_2/AssignNewValue_1?Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?6module_wrapper_10/batch_normalization_2/ReadVariableOp?8module_wrapper_10/batch_normalization_2/ReadVariableOp_1?1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?6module_wrapper_14/batch_normalization_3/AssignNewValue?8module_wrapper_14/batch_normalization_3/AssignNewValue_1?Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?6module_wrapper_14/batch_normalization_3/ReadVariableOp?8module_wrapper_14/batch_normalization_3/ReadVariableOp_1?.module_wrapper_18/dense/BiasAdd/ReadVariableOp?-module_wrapper_18/dense/MatMul/ReadVariableOp?7module_wrapper_19/batch_normalization_4/AssignMovingAvg?Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp?9module_wrapper_19/batch_normalization_4/AssignMovingAvg_1?Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?3module_wrapper_2/batch_normalization/AssignNewValue?5module_wrapper_2/batch_normalization/AssignNewValue_1?Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?3module_wrapper_2/batch_normalization/ReadVariableOp?5module_wrapper_2/batch_normalization/ReadVariableOp_1?0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?/module_wrapper_21/dense_1/MatMul/ReadVariableOp?7module_wrapper_22/batch_normalization_5/AssignMovingAvg?Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp?9module_wrapper_22/batch_normalization_5/AssignMovingAvg_1?Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?/module_wrapper_24/dense_2/MatMul/ReadVariableOp?0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?5module_wrapper_6/batch_normalization_1/AssignNewValue?7module_wrapper_6/batch_normalization_1/AssignNewValue_1?Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?5module_wrapper_6/batch_normalization_1/ReadVariableOp?7module_wrapper_6/batch_normalization_1/ReadVariableOp_1?0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
module_wrapper/conv2d/Relu?
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_1/conv2d_1/Conv2DConv2D(module_wrapper/conv2d/Relu:activations:07module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2"
 module_wrapper_1/conv2d_1/Conv2D?
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_1/conv2d_1/BiasAddBiasAdd)module_wrapper_1/conv2d_1/Conv2D:output:08module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2#
!module_wrapper_1/conv2d_1/BiasAdd?
module_wrapper_1/conv2d_1/ReluRelu*module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2 
module_wrapper_1/conv2d_1/Relu?
3module_wrapper_2/batch_normalization/ReadVariableOpReadVariableOp<module_wrapper_2_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype025
3module_wrapper_2/batch_normalization/ReadVariableOp?
5module_wrapper_2/batch_normalization/ReadVariableOp_1ReadVariableOp>module_wrapper_2_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5module_wrapper_2/batch_normalization/ReadVariableOp_1?
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpMmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
5module_wrapper_2/batch_normalization/FusedBatchNormV3FusedBatchNormV3,module_wrapper_1/conv2d_1/Relu:activations:0;module_wrapper_2/batch_normalization/ReadVariableOp:value:0=module_wrapper_2/batch_normalization/ReadVariableOp_1:value:0Lmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Nmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<27
5module_wrapper_2/batch_normalization/FusedBatchNormV3?
3module_wrapper_2/batch_normalization/AssignNewValueAssignVariableOpMmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resourceBmodule_wrapper_2/batch_normalization/FusedBatchNormV3:batch_mean:0E^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype025
3module_wrapper_2/batch_normalization/AssignNewValue?
5module_wrapper_2/batch_normalization/AssignNewValue_1AssignVariableOpOmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resourceFmodule_wrapper_2/batch_normalization/FusedBatchNormV3:batch_variance:0G^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype027
5module_wrapper_2/batch_normalization/AssignNewValue_1?
&module_wrapper_3/max_pooling2d/MaxPoolMaxPool9module_wrapper_2/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_3/max_pooling2d/MaxPool?
&module_wrapper_4/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2(
&module_wrapper_4/dropout/dropout/Const?
$module_wrapper_4/dropout/dropout/MulMul/module_wrapper_3/max_pooling2d/MaxPool:output:0/module_wrapper_4/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2&
$module_wrapper_4/dropout/dropout/Mul?
&module_wrapper_4/dropout/dropout/ShapeShape/module_wrapper_3/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2(
&module_wrapper_4/dropout/dropout/Shape?
=module_wrapper_4/dropout/dropout/random_uniform/RandomUniformRandomUniform/module_wrapper_4/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02?
=module_wrapper_4/dropout/dropout/random_uniform/RandomUniform?
/module_wrapper_4/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>21
/module_wrapper_4/dropout/dropout/GreaterEqual/y?
-module_wrapper_4/dropout/dropout/GreaterEqualGreaterEqualFmodule_wrapper_4/dropout/dropout/random_uniform/RandomUniform:output:08module_wrapper_4/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2/
-module_wrapper_4/dropout/dropout/GreaterEqual?
%module_wrapper_4/dropout/dropout/CastCast1module_wrapper_4/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2'
%module_wrapper_4/dropout/dropout/Cast?
&module_wrapper_4/dropout/dropout/Mul_1Mul(module_wrapper_4/dropout/dropout/Mul:z:0)module_wrapper_4/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2(
&module_wrapper_4/dropout/dropout/Mul_1?
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_5_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype021
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_5/conv2d_2/Conv2DConv2D*module_wrapper_4/dropout/dropout/Mul_1:z:07module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2"
 module_wrapper_5/conv2d_2/Conv2D?
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_5_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_5/conv2d_2/BiasAddBiasAdd)module_wrapper_5/conv2d_2/Conv2D:output:08module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!module_wrapper_5/conv2d_2/BiasAdd?
module_wrapper_5/conv2d_2/ReluRelu*module_wrapper_5/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
module_wrapper_5/conv2d_2/Relu?
5module_wrapper_6/batch_normalization_1/ReadVariableOpReadVariableOp>module_wrapper_6_batch_normalization_1_readvariableop_resource*
_output_shapes	
:?*
dtype027
5module_wrapper_6/batch_normalization_1/ReadVariableOp?
7module_wrapper_6/batch_normalization_1/ReadVariableOp_1ReadVariableOp@module_wrapper_6_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_6/batch_normalization_1/ReadVariableOp_1?
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpOmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpQmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
7module_wrapper_6/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3,module_wrapper_5/conv2d_2/Relu:activations:0=module_wrapper_6/batch_normalization_1/ReadVariableOp:value:0?module_wrapper_6/batch_normalization_1/ReadVariableOp_1:value:0Nmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Pmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<29
7module_wrapper_6/batch_normalization_1/FusedBatchNormV3?
5module_wrapper_6/batch_normalization_1/AssignNewValueAssignVariableOpOmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceDmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3:batch_mean:0G^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype027
5module_wrapper_6/batch_normalization_1/AssignNewValue?
7module_wrapper_6/batch_normalization_1/AssignNewValue_1AssignVariableOpQmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceHmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3:batch_variance:0I^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype029
7module_wrapper_6/batch_normalization_1/AssignNewValue_1?
(module_wrapper_7/max_pooling2d_1/MaxPoolMaxPool;module_wrapper_6/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2*
(module_wrapper_7/max_pooling2d_1/MaxPool?
(module_wrapper_8/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2*
(module_wrapper_8/dropout_1/dropout/Const?
&module_wrapper_8/dropout_1/dropout/MulMul1module_wrapper_7/max_pooling2d_1/MaxPool:output:01module_wrapper_8/dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2(
&module_wrapper_8/dropout_1/dropout/Mul?
(module_wrapper_8/dropout_1/dropout/ShapeShape1module_wrapper_7/max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2*
(module_wrapper_8/dropout_1/dropout/Shape?
?module_wrapper_8/dropout_1/dropout/random_uniform/RandomUniformRandomUniform1module_wrapper_8/dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02A
?module_wrapper_8/dropout_1/dropout/random_uniform/RandomUniform?
1module_wrapper_8/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>23
1module_wrapper_8/dropout_1/dropout/GreaterEqual/y?
/module_wrapper_8/dropout_1/dropout/GreaterEqualGreaterEqualHmodule_wrapper_8/dropout_1/dropout/random_uniform/RandomUniform:output:0:module_wrapper_8/dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????21
/module_wrapper_8/dropout_1/dropout/GreaterEqual?
'module_wrapper_8/dropout_1/dropout/CastCast3module_wrapper_8/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2)
'module_wrapper_8/dropout_1/dropout/Cast?
(module_wrapper_8/dropout_1/dropout/Mul_1Mul*module_wrapper_8/dropout_1/dropout/Mul:z:0+module_wrapper_8/dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2*
(module_wrapper_8/dropout_1/dropout/Mul_1?
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_9_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype021
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
 module_wrapper_9/conv2d_3/Conv2DConv2D,module_wrapper_8/dropout_1/dropout/Mul_1:z:07module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2"
 module_wrapper_9/conv2d_3/Conv2D?
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_9_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?
!module_wrapper_9/conv2d_3/BiasAddBiasAdd)module_wrapper_9/conv2d_3/Conv2D:output:08module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!module_wrapper_9/conv2d_3/BiasAdd?
module_wrapper_9/conv2d_3/ReluRelu*module_wrapper_9/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
module_wrapper_9/conv2d_3/Relu?
6module_wrapper_10/batch_normalization_2/ReadVariableOpReadVariableOp?module_wrapper_10_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_10/batch_normalization_2/ReadVariableOp?
8module_wrapper_10/batch_normalization_2/ReadVariableOp_1ReadVariableOpAmodule_wrapper_10_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_10/batch_normalization_2/ReadVariableOp_1?
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpPmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
8module_wrapper_10/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3,module_wrapper_9/conv2d_3/Relu:activations:0>module_wrapper_10/batch_normalization_2/ReadVariableOp:value:0@module_wrapper_10/batch_normalization_2/ReadVariableOp_1:value:0Omodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Qmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2:
8module_wrapper_10/batch_normalization_2/FusedBatchNormV3?
6module_wrapper_10/batch_normalization_2/AssignNewValueAssignVariableOpPmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceEmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3:batch_mean:0H^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype028
6module_wrapper_10/batch_normalization_2/AssignNewValue?
8module_wrapper_10/batch_normalization_2/AssignNewValue_1AssignVariableOpRmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceImodule_wrapper_10/batch_normalization_2/FusedBatchNormV3:batch_variance:0J^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02:
8module_wrapper_10/batch_normalization_2/AssignNewValue_1?
)module_wrapper_11/max_pooling2d_2/MaxPoolMaxPool<module_wrapper_10/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_11/max_pooling2d_2/MaxPool?
)module_wrapper_12/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)module_wrapper_12/dropout_2/dropout/Const?
'module_wrapper_12/dropout_2/dropout/MulMul2module_wrapper_11/max_pooling2d_2/MaxPool:output:02module_wrapper_12/dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2)
'module_wrapper_12/dropout_2/dropout/Mul?
)module_wrapper_12/dropout_2/dropout/ShapeShape2module_wrapper_11/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2+
)module_wrapper_12/dropout_2/dropout/Shape?
@module_wrapper_12/dropout_2/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_12/dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02B
@module_wrapper_12/dropout_2/dropout/random_uniform/RandomUniform?
2module_wrapper_12/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>24
2module_wrapper_12/dropout_2/dropout/GreaterEqual/y?
0module_wrapper_12/dropout_2/dropout/GreaterEqualGreaterEqualImodule_wrapper_12/dropout_2/dropout/random_uniform/RandomUniform:output:0;module_wrapper_12/dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????22
0module_wrapper_12/dropout_2/dropout/GreaterEqual?
(module_wrapper_12/dropout_2/dropout/CastCast4module_wrapper_12/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2*
(module_wrapper_12/dropout_2/dropout/Cast?
)module_wrapper_12/dropout_2/dropout/Mul_1Mul+module_wrapper_12/dropout_2/dropout/Mul:z:0,module_wrapper_12/dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2+
)module_wrapper_12/dropout_2/dropout/Mul_1?
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOpReadVariableOp9module_wrapper_13_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?
!module_wrapper_13/conv2d_4/Conv2DConv2D-module_wrapper_12/dropout_2/dropout/Mul_1:z:08module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!module_wrapper_13/conv2d_4/Conv2D?
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:module_wrapper_13_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?
"module_wrapper_13/conv2d_4/BiasAddBiasAdd*module_wrapper_13/conv2d_4/Conv2D:output:09module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"module_wrapper_13/conv2d_4/BiasAdd?
module_wrapper_13/conv2d_4/ReluRelu+module_wrapper_13/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
module_wrapper_13/conv2d_4/Relu?
6module_wrapper_14/batch_normalization_3/ReadVariableOpReadVariableOp?module_wrapper_14_batch_normalization_3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_14/batch_normalization_3/ReadVariableOp?
8module_wrapper_14/batch_normalization_3/ReadVariableOp_1ReadVariableOpAmodule_wrapper_14_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_14/batch_normalization_3/ReadVariableOp_1?
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpPmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
8module_wrapper_14/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3-module_wrapper_13/conv2d_4/Relu:activations:0>module_wrapper_14/batch_normalization_3/ReadVariableOp:value:0@module_wrapper_14/batch_normalization_3/ReadVariableOp_1:value:0Omodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Qmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2:
8module_wrapper_14/batch_normalization_3/FusedBatchNormV3?
6module_wrapper_14/batch_normalization_3/AssignNewValueAssignVariableOpPmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resourceEmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3:batch_mean:0H^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype028
6module_wrapper_14/batch_normalization_3/AssignNewValue?
8module_wrapper_14/batch_normalization_3/AssignNewValue_1AssignVariableOpRmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resourceImodule_wrapper_14/batch_normalization_3/FusedBatchNormV3:batch_variance:0J^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02:
8module_wrapper_14/batch_normalization_3/AssignNewValue_1?
)module_wrapper_15/max_pooling2d_3/MaxPoolMaxPool<module_wrapper_14/batch_normalization_3/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_15/max_pooling2d_3/MaxPool?
)module_wrapper_16/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)module_wrapper_16/dropout_3/dropout/Const?
'module_wrapper_16/dropout_3/dropout/MulMul2module_wrapper_15/max_pooling2d_3/MaxPool:output:02module_wrapper_16/dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2)
'module_wrapper_16/dropout_3/dropout/Mul?
)module_wrapper_16/dropout_3/dropout/ShapeShape2module_wrapper_15/max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:2+
)module_wrapper_16/dropout_3/dropout/Shape?
@module_wrapper_16/dropout_3/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_16/dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02B
@module_wrapper_16/dropout_3/dropout/random_uniform/RandomUniform?
2module_wrapper_16/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>24
2module_wrapper_16/dropout_3/dropout/GreaterEqual/y?
0module_wrapper_16/dropout_3/dropout/GreaterEqualGreaterEqualImodule_wrapper_16/dropout_3/dropout/random_uniform/RandomUniform:output:0;module_wrapper_16/dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????22
0module_wrapper_16/dropout_3/dropout/GreaterEqual?
(module_wrapper_16/dropout_3/dropout/CastCast4module_wrapper_16/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2*
(module_wrapper_16/dropout_3/dropout/Cast?
)module_wrapper_16/dropout_3/dropout/Mul_1Mul+module_wrapper_16/dropout_3/dropout/Mul:z:0,module_wrapper_16/dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2+
)module_wrapper_16/dropout_3/dropout/Mul_1?
module_wrapper_17/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2!
module_wrapper_17/flatten/Const?
!module_wrapper_17/flatten/ReshapeReshape-module_wrapper_16/dropout_3/dropout/Mul_1:z:0(module_wrapper_17/flatten/Const:output:0*
T0*(
_output_shapes
:??????????$2#
!module_wrapper_17/flatten/Reshape?
-module_wrapper_18/dense/MatMul/ReadVariableOpReadVariableOp6module_wrapper_18_dense_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02/
-module_wrapper_18/dense/MatMul/ReadVariableOp?
module_wrapper_18/dense/MatMulMatMul*module_wrapper_17/flatten/Reshape:output:05module_wrapper_18/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_18/dense/MatMul?
.module_wrapper_18/dense/BiasAdd/ReadVariableOpReadVariableOp7module_wrapper_18_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_18/dense/BiasAdd/ReadVariableOp?
module_wrapper_18/dense/BiasAddBiasAdd(module_wrapper_18/dense/MatMul:product:06module_wrapper_18/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
module_wrapper_18/dense/BiasAdd?
module_wrapper_18/dense/ReluRelu(module_wrapper_18/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_18/dense/Relu?
Fmodule_wrapper_19/batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fmodule_wrapper_19/batch_normalization_4/moments/mean/reduction_indices?
4module_wrapper_19/batch_normalization_4/moments/meanMean*module_wrapper_18/dense/Relu:activations:0Omodule_wrapper_19/batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(26
4module_wrapper_19/batch_normalization_4/moments/mean?
<module_wrapper_19/batch_normalization_4/moments/StopGradientStopGradient=module_wrapper_19/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:	?2>
<module_wrapper_19/batch_normalization_4/moments/StopGradient?
Amodule_wrapper_19/batch_normalization_4/moments/SquaredDifferenceSquaredDifference*module_wrapper_18/dense/Relu:activations:0Emodule_wrapper_19/batch_normalization_4/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2C
Amodule_wrapper_19/batch_normalization_4/moments/SquaredDifference?
Jmodule_wrapper_19/batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2L
Jmodule_wrapper_19/batch_normalization_4/moments/variance/reduction_indices?
8module_wrapper_19/batch_normalization_4/moments/varianceMeanEmodule_wrapper_19/batch_normalization_4/moments/SquaredDifference:z:0Smodule_wrapper_19/batch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2:
8module_wrapper_19/batch_normalization_4/moments/variance?
7module_wrapper_19/batch_normalization_4/moments/SqueezeSqueeze=module_wrapper_19/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 29
7module_wrapper_19/batch_normalization_4/moments/Squeeze?
9module_wrapper_19/batch_normalization_4/moments/Squeeze_1SqueezeAmodule_wrapper_19/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2;
9module_wrapper_19/batch_normalization_4/moments/Squeeze_1?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg/decay?
Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOpOmodule_wrapper_19_batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp?
;module_wrapper_19/batch_normalization_4/AssignMovingAvg/subSubNmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0@module_wrapper_19/batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2=
;module_wrapper_19/batch_normalization_4/AssignMovingAvg/sub?
;module_wrapper_19/batch_normalization_4/AssignMovingAvg/mulMul?module_wrapper_19/batch_normalization_4/AssignMovingAvg/sub:z:0Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2=
;module_wrapper_19/batch_normalization_4/AssignMovingAvg/mul?
7module_wrapper_19/batch_normalization_4/AssignMovingAvgAssignSubVariableOpOmodule_wrapper_19_batch_normalization_4_assignmovingavg_readvariableop_resource?module_wrapper_19/batch_normalization_4/AssignMovingAvg/mul:z:0G^module_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_19/batch_normalization_4/AssignMovingAvg?
?module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2A
?module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/decay?
Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOpQmodule_wrapper_19_batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/subSubPmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:0Bmodule_wrapper_19/batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/sub?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/mulMulAmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/sub:z:0Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/mul?
9module_wrapper_19/batch_normalization_4/AssignMovingAvg_1AssignSubVariableOpQmodule_wrapper_19_batch_normalization_4_assignmovingavg_1_readvariableop_resourceAmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/mul:z:0I^module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02;
9module_wrapper_19/batch_normalization_4/AssignMovingAvg_1?
7module_wrapper_19/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_19/batch_normalization_4/batchnorm/add/y?
5module_wrapper_19/batch_normalization_4/batchnorm/addAddV2Bmodule_wrapper_19/batch_normalization_4/moments/Squeeze_1:output:0@module_wrapper_19/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/add?
7module_wrapper_19/batch_normalization_4/batchnorm/RsqrtRsqrt9module_wrapper_19/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt?
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpMmodule_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?
5module_wrapper_19/batch_normalization_4/batchnorm/mulMul;module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt:y:0Lmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/mul?
7module_wrapper_19/batch_normalization_4/batchnorm/mul_1Mul*module_wrapper_18/dense/Relu:activations:09module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_19/batch_normalization_4/batchnorm/mul_1?
7module_wrapper_19/batch_normalization_4/batchnorm/mul_2Mul@module_wrapper_19/batch_normalization_4/moments/Squeeze:output:09module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_19/batch_normalization_4/batchnorm/mul_2?
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpImodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?
5module_wrapper_19/batch_normalization_4/batchnorm/subSubHmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp:value:0;module_wrapper_19/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/sub?
7module_wrapper_19/batch_normalization_4/batchnorm/add_1AddV2;module_wrapper_19/batch_normalization_4/batchnorm/mul_1:z:09module_wrapper_19/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_19/batch_normalization_4/batchnorm/add_1?
)module_wrapper_20/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)module_wrapper_20/dropout_4/dropout/Const?
'module_wrapper_20/dropout_4/dropout/MulMul;module_wrapper_19/batch_normalization_4/batchnorm/add_1:z:02module_wrapper_20/dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2)
'module_wrapper_20/dropout_4/dropout/Mul?
)module_wrapper_20/dropout_4/dropout/ShapeShape;module_wrapper_19/batch_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:2+
)module_wrapper_20/dropout_4/dropout/Shape?
@module_wrapper_20/dropout_4/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_20/dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02B
@module_wrapper_20/dropout_4/dropout/random_uniform/RandomUniform?
2module_wrapper_20/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>24
2module_wrapper_20/dropout_4/dropout/GreaterEqual/y?
0module_wrapper_20/dropout_4/dropout/GreaterEqualGreaterEqualImodule_wrapper_20/dropout_4/dropout/random_uniform/RandomUniform:output:0;module_wrapper_20/dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????22
0module_wrapper_20/dropout_4/dropout/GreaterEqual?
(module_wrapper_20/dropout_4/dropout/CastCast4module_wrapper_20/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2*
(module_wrapper_20/dropout_4/dropout/Cast?
)module_wrapper_20/dropout_4/dropout/Mul_1Mul+module_wrapper_20/dropout_4/dropout/Mul:z:0,module_wrapper_20/dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2+
)module_wrapper_20/dropout_4/dropout/Mul_1?
/module_wrapper_21/dense_1/MatMul/ReadVariableOpReadVariableOp8module_wrapper_21_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/module_wrapper_21/dense_1/MatMul/ReadVariableOp?
 module_wrapper_21/dense_1/MatMulMatMul-module_wrapper_20/dropout_4/dropout/Mul_1:z:07module_wrapper_21/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_21/dense_1/MatMul?
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_21_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?
!module_wrapper_21/dense_1/BiasAddBiasAdd*module_wrapper_21/dense_1/MatMul:product:08module_wrapper_21/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_21/dense_1/BiasAdd?
module_wrapper_21/dense_1/ReluRelu*module_wrapper_21/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_21/dense_1/Relu?
Fmodule_wrapper_22/batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fmodule_wrapper_22/batch_normalization_5/moments/mean/reduction_indices?
4module_wrapper_22/batch_normalization_5/moments/meanMean,module_wrapper_21/dense_1/Relu:activations:0Omodule_wrapper_22/batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(26
4module_wrapper_22/batch_normalization_5/moments/mean?
<module_wrapper_22/batch_normalization_5/moments/StopGradientStopGradient=module_wrapper_22/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:	?2>
<module_wrapper_22/batch_normalization_5/moments/StopGradient?
Amodule_wrapper_22/batch_normalization_5/moments/SquaredDifferenceSquaredDifference,module_wrapper_21/dense_1/Relu:activations:0Emodule_wrapper_22/batch_normalization_5/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2C
Amodule_wrapper_22/batch_normalization_5/moments/SquaredDifference?
Jmodule_wrapper_22/batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2L
Jmodule_wrapper_22/batch_normalization_5/moments/variance/reduction_indices?
8module_wrapper_22/batch_normalization_5/moments/varianceMeanEmodule_wrapper_22/batch_normalization_5/moments/SquaredDifference:z:0Smodule_wrapper_22/batch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2:
8module_wrapper_22/batch_normalization_5/moments/variance?
7module_wrapper_22/batch_normalization_5/moments/SqueezeSqueeze=module_wrapper_22/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 29
7module_wrapper_22/batch_normalization_5/moments/Squeeze?
9module_wrapper_22/batch_normalization_5/moments/Squeeze_1SqueezeAmodule_wrapper_22/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2;
9module_wrapper_22/batch_normalization_5/moments/Squeeze_1?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg/decay?
Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOpOmodule_wrapper_22_batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp?
;module_wrapper_22/batch_normalization_5/AssignMovingAvg/subSubNmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0@module_wrapper_22/batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2=
;module_wrapper_22/batch_normalization_5/AssignMovingAvg/sub?
;module_wrapper_22/batch_normalization_5/AssignMovingAvg/mulMul?module_wrapper_22/batch_normalization_5/AssignMovingAvg/sub:z:0Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2=
;module_wrapper_22/batch_normalization_5/AssignMovingAvg/mul?
7module_wrapper_22/batch_normalization_5/AssignMovingAvgAssignSubVariableOpOmodule_wrapper_22_batch_normalization_5_assignmovingavg_readvariableop_resource?module_wrapper_22/batch_normalization_5/AssignMovingAvg/mul:z:0G^module_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_22/batch_normalization_5/AssignMovingAvg?
?module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2A
?module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/decay?
Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOpQmodule_wrapper_22_batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/subSubPmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:0Bmodule_wrapper_22/batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/sub?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/mulMulAmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/sub:z:0Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/mul?
9module_wrapper_22/batch_normalization_5/AssignMovingAvg_1AssignSubVariableOpQmodule_wrapper_22_batch_normalization_5_assignmovingavg_1_readvariableop_resourceAmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/mul:z:0I^module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02;
9module_wrapper_22/batch_normalization_5/AssignMovingAvg_1?
7module_wrapper_22/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_22/batch_normalization_5/batchnorm/add/y?
5module_wrapper_22/batch_normalization_5/batchnorm/addAddV2Bmodule_wrapper_22/batch_normalization_5/moments/Squeeze_1:output:0@module_wrapper_22/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/add?
7module_wrapper_22/batch_normalization_5/batchnorm/RsqrtRsqrt9module_wrapper_22/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt?
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpMmodule_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?
5module_wrapper_22/batch_normalization_5/batchnorm/mulMul;module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt:y:0Lmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/mul?
7module_wrapper_22/batch_normalization_5/batchnorm/mul_1Mul,module_wrapper_21/dense_1/Relu:activations:09module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_22/batch_normalization_5/batchnorm/mul_1?
7module_wrapper_22/batch_normalization_5/batchnorm/mul_2Mul@module_wrapper_22/batch_normalization_5/moments/Squeeze:output:09module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_22/batch_normalization_5/batchnorm/mul_2?
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpImodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?
5module_wrapper_22/batch_normalization_5/batchnorm/subSubHmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp:value:0;module_wrapper_22/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/sub?
7module_wrapper_22/batch_normalization_5/batchnorm/add_1AddV2;module_wrapper_22/batch_normalization_5/batchnorm/mul_1:z:09module_wrapper_22/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_22/batch_normalization_5/batchnorm/add_1?
)module_wrapper_23/dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)module_wrapper_23/dropout_5/dropout/Const?
'module_wrapper_23/dropout_5/dropout/MulMul;module_wrapper_22/batch_normalization_5/batchnorm/add_1:z:02module_wrapper_23/dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2)
'module_wrapper_23/dropout_5/dropout/Mul?
)module_wrapper_23/dropout_5/dropout/ShapeShape;module_wrapper_22/batch_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:2+
)module_wrapper_23/dropout_5/dropout/Shape?
@module_wrapper_23/dropout_5/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_23/dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02B
@module_wrapper_23/dropout_5/dropout/random_uniform/RandomUniform?
2module_wrapper_23/dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>24
2module_wrapper_23/dropout_5/dropout/GreaterEqual/y?
0module_wrapper_23/dropout_5/dropout/GreaterEqualGreaterEqualImodule_wrapper_23/dropout_5/dropout/random_uniform/RandomUniform:output:0;module_wrapper_23/dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????22
0module_wrapper_23/dropout_5/dropout/GreaterEqual?
(module_wrapper_23/dropout_5/dropout/CastCast4module_wrapper_23/dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2*
(module_wrapper_23/dropout_5/dropout/Cast?
)module_wrapper_23/dropout_5/dropout/Mul_1Mul+module_wrapper_23/dropout_5/dropout/Mul:z:0,module_wrapper_23/dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2+
)module_wrapper_23/dropout_5/dropout/Mul_1?
/module_wrapper_24/dense_2/MatMul/ReadVariableOpReadVariableOp8module_wrapper_24_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_24/dense_2/MatMul/ReadVariableOp?
 module_wrapper_24/dense_2/MatMulMatMul-module_wrapper_23/dropout_5/dropout/Mul_1:z:07module_wrapper_24/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_24/dense_2/MatMul?
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_24_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?
!module_wrapper_24/dense_2/BiasAddBiasAdd*module_wrapper_24/dense_2/MatMul:product:08module_wrapper_24/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_24/dense_2/BiasAdd?
!module_wrapper_24/dense_2/SoftmaxSoftmax*module_wrapper_24/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_24/dense_2/Softmax?
IdentityIdentity+module_wrapper_24/dense_2/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp7^module_wrapper_10/batch_normalization_2/AssignNewValue9^module_wrapper_10/batch_normalization_2/AssignNewValue_1H^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpJ^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17^module_wrapper_10/batch_normalization_2/ReadVariableOp9^module_wrapper_10/batch_normalization_2/ReadVariableOp_12^module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp1^module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp7^module_wrapper_14/batch_normalization_3/AssignNewValue9^module_wrapper_14/batch_normalization_3/AssignNewValue_1H^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpJ^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17^module_wrapper_14/batch_normalization_3/ReadVariableOp9^module_wrapper_14/batch_normalization_3/ReadVariableOp_1/^module_wrapper_18/dense/BiasAdd/ReadVariableOp.^module_wrapper_18/dense/MatMul/ReadVariableOp8^module_wrapper_19/batch_normalization_4/AssignMovingAvgG^module_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp:^module_wrapper_19/batch_normalization_4/AssignMovingAvg_1I^module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpA^module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpE^module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp4^module_wrapper_2/batch_normalization/AssignNewValue6^module_wrapper_2/batch_normalization/AssignNewValue_1E^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpG^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_14^module_wrapper_2/batch_normalization/ReadVariableOp6^module_wrapper_2/batch_normalization/ReadVariableOp_11^module_wrapper_21/dense_1/BiasAdd/ReadVariableOp0^module_wrapper_21/dense_1/MatMul/ReadVariableOp8^module_wrapper_22/batch_normalization_5/AssignMovingAvgG^module_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp:^module_wrapper_22/batch_normalization_5/AssignMovingAvg_1I^module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpA^module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpE^module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp1^module_wrapper_24/dense_2/BiasAdd/ReadVariableOp0^module_wrapper_24/dense_2/MatMul/ReadVariableOp1^module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp6^module_wrapper_6/batch_normalization_1/AssignNewValue8^module_wrapper_6/batch_normalization_1/AssignNewValue_1G^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpI^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_16^module_wrapper_6/batch_normalization_1/ReadVariableOp8^module_wrapper_6/batch_normalization_1/ReadVariableOp_11^module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp0^module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2p
6module_wrapper_10/batch_normalization_2/AssignNewValue6module_wrapper_10/batch_normalization_2/AssignNewValue2t
8module_wrapper_10/batch_normalization_2/AssignNewValue_18module_wrapper_10/batch_normalization_2/AssignNewValue_12?
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpGmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12p
6module_wrapper_10/batch_normalization_2/ReadVariableOp6module_wrapper_10/batch_normalization_2/ReadVariableOp2t
8module_wrapper_10/batch_normalization_2/ReadVariableOp_18module_wrapper_10/batch_normalization_2/ReadVariableOp_12f
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp2d
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp2p
6module_wrapper_14/batch_normalization_3/AssignNewValue6module_wrapper_14/batch_normalization_3/AssignNewValue2t
8module_wrapper_14/batch_normalization_3/AssignNewValue_18module_wrapper_14/batch_normalization_3/AssignNewValue_12?
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpGmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2?
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12p
6module_wrapper_14/batch_normalization_3/ReadVariableOp6module_wrapper_14/batch_normalization_3/ReadVariableOp2t
8module_wrapper_14/batch_normalization_3/ReadVariableOp_18module_wrapper_14/batch_normalization_3/ReadVariableOp_12`
.module_wrapper_18/dense/BiasAdd/ReadVariableOp.module_wrapper_18/dense/BiasAdd/ReadVariableOp2^
-module_wrapper_18/dense/MatMul/ReadVariableOp-module_wrapper_18/dense/MatMul/ReadVariableOp2r
7module_wrapper_19/batch_normalization_4/AssignMovingAvg7module_wrapper_19/batch_normalization_4/AssignMovingAvg2?
Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOpFmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp2v
9module_wrapper_19/batch_normalization_4/AssignMovingAvg_19module_wrapper_19/batch_normalization_4/AssignMovingAvg_12?
Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpHmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2?
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp2?
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpDmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp2j
3module_wrapper_2/batch_normalization/AssignNewValue3module_wrapper_2/batch_normalization/AssignNewValue2n
5module_wrapper_2/batch_normalization/AssignNewValue_15module_wrapper_2/batch_normalization/AssignNewValue_12?
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpDmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp2?
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_12j
3module_wrapper_2/batch_normalization/ReadVariableOp3module_wrapper_2/batch_normalization/ReadVariableOp2n
5module_wrapper_2/batch_normalization/ReadVariableOp_15module_wrapper_2/batch_normalization/ReadVariableOp_12d
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp2b
/module_wrapper_21/dense_1/MatMul/ReadVariableOp/module_wrapper_21/dense_1/MatMul/ReadVariableOp2r
7module_wrapper_22/batch_normalization_5/AssignMovingAvg7module_wrapper_22/batch_normalization_5/AssignMovingAvg2?
Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOpFmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp2v
9module_wrapper_22/batch_normalization_5/AssignMovingAvg_19module_wrapper_22/batch_normalization_5/AssignMovingAvg_12?
Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpHmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2?
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp2?
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpDmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp2d
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp2b
/module_wrapper_24/dense_2/MatMul/ReadVariableOp/module_wrapper_24/dense_2/MatMul/ReadVariableOp2d
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp2n
5module_wrapper_6/batch_normalization_1/AssignNewValue5module_wrapper_6/batch_normalization_1/AssignNewValue2r
7module_wrapper_6/batch_normalization_1/AssignNewValue_17module_wrapper_6/batch_normalization_1/AssignNewValue_12?
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpFmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12n
5module_wrapper_6/batch_normalization_1/ReadVariableOp5module_wrapper_6/batch_normalization_1/ReadVariableOp2r
7module_wrapper_6/batch_normalization_1/ReadVariableOp_17module_wrapper_6/batch_normalization_1/ReadVariableOp_12d
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp2b
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_61901

args_0B
'conv2d_2_conv2d_readvariableop_resource:@?7
(conv2d_2_biasadd_readvariableop_resource:	?
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_21_layer_call_fn_65538

args_0
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_611472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
j
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_61928

args_0
identity?s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/dropout/Const?
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Muld
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Mul_1u
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_65976

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_62045

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_65664

args_0
identityo
dropout_5/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_5/Identityp
IdentityIdentitydropout_5/Identity:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_1_layer_call_fn_64782

args_0!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_620152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
j
1__inference_module_wrapper_20_layer_call_fn_65512

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_614552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_16_layer_call_fn_65338

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_610722
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_60888

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????00@:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_61072

args_0
identityw
dropout_3/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_3/Identityx
IdentityIdentitydropout_3/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
5__inference_batch_normalization_5_layer_call_fn_66082

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_635262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_module_wrapper_2_layer_call_fn_64830

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_619812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?*
?
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_63526

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_22_layer_call_fn_65595

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_613942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
K
/__inference_max_pooling2d_1_layer_call_fn_63004

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_629982
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
0__inference_module_wrapper_6_layer_call_fn_64979

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_618672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_65295

args_0<
-batch_normalization_3_readvariableop_resource:	?>
/batch_normalization_3_readvariableop_1_resource:	?M
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_3/ReadVariableOp?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_3/ReadVariableOp_1?
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3?
IdentityIdentity*batch_normalization_3/FusedBatchNormV3:y:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_22_layer_call_fn_65582

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_611732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?-
E__inference_sequential_layer_call_and_return_conditional_losses_64104

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource: C
5module_wrapper_conv2d_biasadd_readvariableop_resource: R
8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: @G
9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource:@J
<module_wrapper_2_batch_normalization_readvariableop_resource:@L
>module_wrapper_2_batch_normalization_readvariableop_1_resource:@[
Mmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource:@]
Omodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@S
8module_wrapper_5_conv2d_2_conv2d_readvariableop_resource:@?H
9module_wrapper_5_conv2d_2_biasadd_readvariableop_resource:	?M
>module_wrapper_6_batch_normalization_1_readvariableop_resource:	?O
@module_wrapper_6_batch_normalization_1_readvariableop_1_resource:	?^
Omodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	?`
Qmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	?T
8module_wrapper_9_conv2d_3_conv2d_readvariableop_resource:??H
9module_wrapper_9_conv2d_3_biasadd_readvariableop_resource:	?N
?module_wrapper_10_batch_normalization_2_readvariableop_resource:	?P
Amodule_wrapper_10_batch_normalization_2_readvariableop_1_resource:	?_
Pmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?a
Rmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?U
9module_wrapper_13_conv2d_4_conv2d_readvariableop_resource:??I
:module_wrapper_13_conv2d_4_biasadd_readvariableop_resource:	?N
?module_wrapper_14_batch_normalization_3_readvariableop_resource:	?P
Amodule_wrapper_14_batch_normalization_3_readvariableop_1_resource:	?_
Pmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	?a
Rmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	?J
6module_wrapper_18_dense_matmul_readvariableop_resource:
?$?F
7module_wrapper_18_dense_biasadd_readvariableop_resource:	?X
Imodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource:	?\
Mmodule_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource:	?Z
Kmodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_1_resource:	?Z
Kmodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_2_resource:	?L
8module_wrapper_21_dense_1_matmul_readvariableop_resource:
??H
9module_wrapper_21_dense_1_biasadd_readvariableop_resource:	?X
Imodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource:	?\
Mmodule_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource:	?Z
Kmodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_1_resource:	?Z
Kmodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_2_resource:	?K
8module_wrapper_24_dense_2_matmul_readvariableop_resource:	?G
9module_wrapper_24_dense_2_biasadd_readvariableop_resource:
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?6module_wrapper_10/batch_normalization_2/ReadVariableOp?8module_wrapper_10/batch_normalization_2/ReadVariableOp_1?1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?6module_wrapper_14/batch_normalization_3/ReadVariableOp?8module_wrapper_14/batch_normalization_3/ReadVariableOp_1?.module_wrapper_18/dense/BiasAdd/ReadVariableOp?-module_wrapper_18/dense/MatMul/ReadVariableOp?@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1?Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2?Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?3module_wrapper_2/batch_normalization/ReadVariableOp?5module_wrapper_2/batch_normalization/ReadVariableOp_1?0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?/module_wrapper_21/dense_1/MatMul/ReadVariableOp?@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1?Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2?Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?/module_wrapper_24/dense_2/MatMul/ReadVariableOp?0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?5module_wrapper_6/batch_normalization_1/ReadVariableOp?7module_wrapper_6/batch_normalization_1/ReadVariableOp_1?0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
module_wrapper/conv2d/Relu?
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_1/conv2d_1/Conv2DConv2D(module_wrapper/conv2d/Relu:activations:07module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2"
 module_wrapper_1/conv2d_1/Conv2D?
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_1/conv2d_1/BiasAddBiasAdd)module_wrapper_1/conv2d_1/Conv2D:output:08module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2#
!module_wrapper_1/conv2d_1/BiasAdd?
module_wrapper_1/conv2d_1/ReluRelu*module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2 
module_wrapper_1/conv2d_1/Relu?
3module_wrapper_2/batch_normalization/ReadVariableOpReadVariableOp<module_wrapper_2_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype025
3module_wrapper_2/batch_normalization/ReadVariableOp?
5module_wrapper_2/batch_normalization/ReadVariableOp_1ReadVariableOp>module_wrapper_2_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5module_wrapper_2/batch_normalization/ReadVariableOp_1?
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpMmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
5module_wrapper_2/batch_normalization/FusedBatchNormV3FusedBatchNormV3,module_wrapper_1/conv2d_1/Relu:activations:0;module_wrapper_2/batch_normalization/ReadVariableOp:value:0=module_wrapper_2/batch_normalization/ReadVariableOp_1:value:0Lmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Nmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5module_wrapper_2/batch_normalization/FusedBatchNormV3?
&module_wrapper_3/max_pooling2d/MaxPoolMaxPool9module_wrapper_2/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_3/max_pooling2d/MaxPool?
!module_wrapper_4/dropout/IdentityIdentity/module_wrapper_3/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_4/dropout/Identity?
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_5_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype021
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_5/conv2d_2/Conv2DConv2D*module_wrapper_4/dropout/Identity:output:07module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2"
 module_wrapper_5/conv2d_2/Conv2D?
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_5_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_5/conv2d_2/BiasAddBiasAdd)module_wrapper_5/conv2d_2/Conv2D:output:08module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!module_wrapper_5/conv2d_2/BiasAdd?
module_wrapper_5/conv2d_2/ReluRelu*module_wrapper_5/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
module_wrapper_5/conv2d_2/Relu?
5module_wrapper_6/batch_normalization_1/ReadVariableOpReadVariableOp>module_wrapper_6_batch_normalization_1_readvariableop_resource*
_output_shapes	
:?*
dtype027
5module_wrapper_6/batch_normalization_1/ReadVariableOp?
7module_wrapper_6/batch_normalization_1/ReadVariableOp_1ReadVariableOp@module_wrapper_6_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_6/batch_normalization_1/ReadVariableOp_1?
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpOmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpQmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
7module_wrapper_6/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3,module_wrapper_5/conv2d_2/Relu:activations:0=module_wrapper_6/batch_normalization_1/ReadVariableOp:value:0?module_wrapper_6/batch_normalization_1/ReadVariableOp_1:value:0Nmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Pmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 29
7module_wrapper_6/batch_normalization_1/FusedBatchNormV3?
(module_wrapper_7/max_pooling2d_1/MaxPoolMaxPool;module_wrapper_6/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2*
(module_wrapper_7/max_pooling2d_1/MaxPool?
#module_wrapper_8/dropout_1/IdentityIdentity1module_wrapper_7/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_8/dropout_1/Identity?
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_9_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype021
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
 module_wrapper_9/conv2d_3/Conv2DConv2D,module_wrapper_8/dropout_1/Identity:output:07module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2"
 module_wrapper_9/conv2d_3/Conv2D?
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_9_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?
!module_wrapper_9/conv2d_3/BiasAddBiasAdd)module_wrapper_9/conv2d_3/Conv2D:output:08module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!module_wrapper_9/conv2d_3/BiasAdd?
module_wrapper_9/conv2d_3/ReluRelu*module_wrapper_9/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
module_wrapper_9/conv2d_3/Relu?
6module_wrapper_10/batch_normalization_2/ReadVariableOpReadVariableOp?module_wrapper_10_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_10/batch_normalization_2/ReadVariableOp?
8module_wrapper_10/batch_normalization_2/ReadVariableOp_1ReadVariableOpAmodule_wrapper_10_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_10/batch_normalization_2/ReadVariableOp_1?
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpPmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
8module_wrapper_10/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3,module_wrapper_9/conv2d_3/Relu:activations:0>module_wrapper_10/batch_normalization_2/ReadVariableOp:value:0@module_wrapper_10/batch_normalization_2/ReadVariableOp_1:value:0Omodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Qmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2:
8module_wrapper_10/batch_normalization_2/FusedBatchNormV3?
)module_wrapper_11/max_pooling2d_2/MaxPoolMaxPool<module_wrapper_10/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_11/max_pooling2d_2/MaxPool?
$module_wrapper_12/dropout_2/IdentityIdentity2module_wrapper_11/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:??????????2&
$module_wrapper_12/dropout_2/Identity?
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOpReadVariableOp9module_wrapper_13_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?
!module_wrapper_13/conv2d_4/Conv2DConv2D-module_wrapper_12/dropout_2/Identity:output:08module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!module_wrapper_13/conv2d_4/Conv2D?
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:module_wrapper_13_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?
"module_wrapper_13/conv2d_4/BiasAddBiasAdd*module_wrapper_13/conv2d_4/Conv2D:output:09module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"module_wrapper_13/conv2d_4/BiasAdd?
module_wrapper_13/conv2d_4/ReluRelu+module_wrapper_13/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
module_wrapper_13/conv2d_4/Relu?
6module_wrapper_14/batch_normalization_3/ReadVariableOpReadVariableOp?module_wrapper_14_batch_normalization_3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_14/batch_normalization_3/ReadVariableOp?
8module_wrapper_14/batch_normalization_3/ReadVariableOp_1ReadVariableOpAmodule_wrapper_14_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_14/batch_normalization_3/ReadVariableOp_1?
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpPmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
8module_wrapper_14/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3-module_wrapper_13/conv2d_4/Relu:activations:0>module_wrapper_14/batch_normalization_3/ReadVariableOp:value:0@module_wrapper_14/batch_normalization_3/ReadVariableOp_1:value:0Omodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Qmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2:
8module_wrapper_14/batch_normalization_3/FusedBatchNormV3?
)module_wrapper_15/max_pooling2d_3/MaxPoolMaxPool<module_wrapper_14/batch_normalization_3/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_15/max_pooling2d_3/MaxPool?
$module_wrapper_16/dropout_3/IdentityIdentity2module_wrapper_15/max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:??????????2&
$module_wrapper_16/dropout_3/Identity?
module_wrapper_17/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2!
module_wrapper_17/flatten/Const?
!module_wrapper_17/flatten/ReshapeReshape-module_wrapper_16/dropout_3/Identity:output:0(module_wrapper_17/flatten/Const:output:0*
T0*(
_output_shapes
:??????????$2#
!module_wrapper_17/flatten/Reshape?
-module_wrapper_18/dense/MatMul/ReadVariableOpReadVariableOp6module_wrapper_18_dense_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02/
-module_wrapper_18/dense/MatMul/ReadVariableOp?
module_wrapper_18/dense/MatMulMatMul*module_wrapper_17/flatten/Reshape:output:05module_wrapper_18/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_18/dense/MatMul?
.module_wrapper_18/dense/BiasAdd/ReadVariableOpReadVariableOp7module_wrapper_18_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_18/dense/BiasAdd/ReadVariableOp?
module_wrapper_18/dense/BiasAddBiasAdd(module_wrapper_18/dense/MatMul:product:06module_wrapper_18/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
module_wrapper_18/dense/BiasAdd?
module_wrapper_18/dense/ReluRelu(module_wrapper_18/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_18/dense/Relu?
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpImodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?
7module_wrapper_19/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_19/batch_normalization_4/batchnorm/add/y?
5module_wrapper_19/batch_normalization_4/batchnorm/addAddV2Hmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp:value:0@module_wrapper_19/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/add?
7module_wrapper_19/batch_normalization_4/batchnorm/RsqrtRsqrt9module_wrapper_19/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt?
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpMmodule_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?
5module_wrapper_19/batch_normalization_4/batchnorm/mulMul;module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt:y:0Lmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/mul?
7module_wrapper_19/batch_normalization_4/batchnorm/mul_1Mul*module_wrapper_18/dense/Relu:activations:09module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_19/batch_normalization_4/batchnorm/mul_1?
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpKmodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02D
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1?
7module_wrapper_19/batch_normalization_4/batchnorm/mul_2MulJmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1:value:09module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_19/batch_normalization_4/batchnorm/mul_2?
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpKmodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02D
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2?
5module_wrapper_19/batch_normalization_4/batchnorm/subSubJmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2:value:0;module_wrapper_19/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/sub?
7module_wrapper_19/batch_normalization_4/batchnorm/add_1AddV2;module_wrapper_19/batch_normalization_4/batchnorm/mul_1:z:09module_wrapper_19/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_19/batch_normalization_4/batchnorm/add_1?
$module_wrapper_20/dropout_4/IdentityIdentity;module_wrapper_19/batch_normalization_4/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$module_wrapper_20/dropout_4/Identity?
/module_wrapper_21/dense_1/MatMul/ReadVariableOpReadVariableOp8module_wrapper_21_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/module_wrapper_21/dense_1/MatMul/ReadVariableOp?
 module_wrapper_21/dense_1/MatMulMatMul-module_wrapper_20/dropout_4/Identity:output:07module_wrapper_21/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_21/dense_1/MatMul?
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_21_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?
!module_wrapper_21/dense_1/BiasAddBiasAdd*module_wrapper_21/dense_1/MatMul:product:08module_wrapper_21/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_21/dense_1/BiasAdd?
module_wrapper_21/dense_1/ReluRelu*module_wrapper_21/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_21/dense_1/Relu?
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpImodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?
7module_wrapper_22/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_22/batch_normalization_5/batchnorm/add/y?
5module_wrapper_22/batch_normalization_5/batchnorm/addAddV2Hmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp:value:0@module_wrapper_22/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/add?
7module_wrapper_22/batch_normalization_5/batchnorm/RsqrtRsqrt9module_wrapper_22/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt?
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpMmodule_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?
5module_wrapper_22/batch_normalization_5/batchnorm/mulMul;module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt:y:0Lmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/mul?
7module_wrapper_22/batch_normalization_5/batchnorm/mul_1Mul,module_wrapper_21/dense_1/Relu:activations:09module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_22/batch_normalization_5/batchnorm/mul_1?
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpKmodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02D
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1?
7module_wrapper_22/batch_normalization_5/batchnorm/mul_2MulJmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1:value:09module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_22/batch_normalization_5/batchnorm/mul_2?
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpKmodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02D
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2?
5module_wrapper_22/batch_normalization_5/batchnorm/subSubJmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2:value:0;module_wrapper_22/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/sub?
7module_wrapper_22/batch_normalization_5/batchnorm/add_1AddV2;module_wrapper_22/batch_normalization_5/batchnorm/mul_1:z:09module_wrapper_22/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_22/batch_normalization_5/batchnorm/add_1?
$module_wrapper_23/dropout_5/IdentityIdentity;module_wrapper_22/batch_normalization_5/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$module_wrapper_23/dropout_5/Identity?
/module_wrapper_24/dense_2/MatMul/ReadVariableOpReadVariableOp8module_wrapper_24_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_24/dense_2/MatMul/ReadVariableOp?
 module_wrapper_24/dense_2/MatMulMatMul-module_wrapper_23/dropout_5/Identity:output:07module_wrapper_24/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_24/dense_2/MatMul?
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_24_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?
!module_wrapper_24/dense_2/BiasAddBiasAdd*module_wrapper_24/dense_2/MatMul:product:08module_wrapper_24/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_24/dense_2/BiasAdd?
!module_wrapper_24/dense_2/SoftmaxSoftmax*module_wrapper_24/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_24/dense_2/Softmax?
IdentityIdentity+module_wrapper_24/dense_2/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpH^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpJ^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17^module_wrapper_10/batch_normalization_2/ReadVariableOp9^module_wrapper_10/batch_normalization_2/ReadVariableOp_12^module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp1^module_wrapper_13/conv2d_4/Conv2D/ReadVariableOpH^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpJ^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17^module_wrapper_14/batch_normalization_3/ReadVariableOp9^module_wrapper_14/batch_normalization_3/ReadVariableOp_1/^module_wrapper_18/dense/BiasAdd/ReadVariableOp.^module_wrapper_18/dense/MatMul/ReadVariableOpA^module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpC^module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1C^module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2E^module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpE^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpG^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_14^module_wrapper_2/batch_normalization/ReadVariableOp6^module_wrapper_2/batch_normalization/ReadVariableOp_11^module_wrapper_21/dense_1/BiasAdd/ReadVariableOp0^module_wrapper_21/dense_1/MatMul/ReadVariableOpA^module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpC^module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1C^module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2E^module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp1^module_wrapper_24/dense_2/BiasAdd/ReadVariableOp0^module_wrapper_24/dense_2/MatMul/ReadVariableOp1^module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_5/conv2d_2/Conv2D/ReadVariableOpG^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpI^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_16^module_wrapper_6/batch_normalization_1/ReadVariableOp8^module_wrapper_6/batch_normalization_1/ReadVariableOp_11^module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp0^module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2?
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpGmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12p
6module_wrapper_10/batch_normalization_2/ReadVariableOp6module_wrapper_10/batch_normalization_2/ReadVariableOp2t
8module_wrapper_10/batch_normalization_2/ReadVariableOp_18module_wrapper_10/batch_normalization_2/ReadVariableOp_12f
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp2d
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp2?
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpGmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2?
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12p
6module_wrapper_14/batch_normalization_3/ReadVariableOp6module_wrapper_14/batch_normalization_3/ReadVariableOp2t
8module_wrapper_14/batch_normalization_3/ReadVariableOp_18module_wrapper_14/batch_normalization_3/ReadVariableOp_12`
.module_wrapper_18/dense/BiasAdd/ReadVariableOp.module_wrapper_18/dense/BiasAdd/ReadVariableOp2^
-module_wrapper_18/dense/MatMul/ReadVariableOp-module_wrapper_18/dense/MatMul/ReadVariableOp2?
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp2?
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_12?
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_22?
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpDmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp2?
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpDmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp2?
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_12j
3module_wrapper_2/batch_normalization/ReadVariableOp3module_wrapper_2/batch_normalization/ReadVariableOp2n
5module_wrapper_2/batch_normalization/ReadVariableOp_15module_wrapper_2/batch_normalization/ReadVariableOp_12d
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp2b
/module_wrapper_21/dense_1/MatMul/ReadVariableOp/module_wrapper_21/dense_1/MatMul/ReadVariableOp2?
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp2?
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_12?
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_22?
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpDmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp2d
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp2b
/module_wrapper_24/dense_2/MatMul/ReadVariableOp/module_wrapper_24/dense_2/MatMul/ReadVariableOp2d
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp2?
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpFmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12n
5module_wrapper_6/batch_normalization_1/ReadVariableOp5module_wrapper_6/batch_normalization_1/ReadVariableOp2r
7module_wrapper_6/batch_normalization_1/ReadVariableOp_17module_wrapper_6/batch_normalization_1/ReadVariableOp_12d
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp2b
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_61428

args_0:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
IdentityIdentitydense_1/Relu:activations:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
5__inference_batch_normalization_1_layer_call_fn_65791

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_628882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_61188

args_0
identityo
dropout_5/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_5/Identityp
IdentityIdentitydropout_5/Identity:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_65778

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_19_layer_call_fn_65448

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_615082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_65890

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_60849

args_0A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
?
__inference_loss_fn_1_66158h
Lmodule_wrapper_13_conv2d_4_kernel_regularizer_square_readvariableop_resource:??
identity??Cmodule_wrapper_13/conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
Cmodule_wrapper_13/conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpLmodule_wrapper_13_conv2d_4_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:??*
dtype02E
Cmodule_wrapper_13/conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
4module_wrapper_13/conv2d_4/kernel/Regularizer/SquareSquareKmodule_wrapper_13/conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??26
4module_wrapper_13/conv2d_4/kernel/Regularizer/Square?
3module_wrapper_13/conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             25
3module_wrapper_13/conv2d_4/kernel/Regularizer/Const?
1module_wrapper_13/conv2d_4/kernel/Regularizer/SumSum8module_wrapper_13/conv2d_4/kernel/Regularizer/Square:y:0<module_wrapper_13/conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 23
1module_wrapper_13/conv2d_4/kernel/Regularizer/Sum?
3module_wrapper_13/conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<25
3module_wrapper_13/conv2d_4/kernel/Regularizer/mul/x?
1module_wrapper_13/conv2d_4/kernel/Regularizer/mulMul<module_wrapper_13/conv2d_4/kernel/Regularizer/mul/x:output:0:module_wrapper_13/conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 23
1module_wrapper_13/conv2d_4/kernel/Regularizer/mul?
IdentityIdentity5module_wrapper_13/conv2d_4/kernel/Regularizer/mul:z:0D^module_wrapper_13/conv2d_4/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
Cmodule_wrapper_13/conv2d_4/kernel/Regularizer/Square/ReadVariableOpCmodule_wrapper_13/conv2d_4/kernel/Regularizer/Square/ReadVariableOp
?
h
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_61080

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
i
0__inference_module_wrapper_8_layer_call_fn_65045

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_618142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
I
-__inference_max_pooling2d_layer_call_fn_62866

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_628602
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_60873

args_09
+batch_normalization_readvariableop_resource:@;
-batch_normalization_readvariableop_1_resource:@J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:@L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@
identity??3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02$
"batch_normalization/ReadVariableOp?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02&
$batch_normalization/ReadVariableOp_1?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3args_0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2&
$batch_normalization/FusedBatchNormV3?
IdentityIdentity(batch_normalization/FusedBatchNormV3:y:04^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_61716

args_0
identity?
max_pooling2d_2/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool}
IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_63466

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_61639

args_0<
-batch_normalization_3_readvariableop_resource:	?>
/batch_normalization_3_readvariableop_1_resource:	?M
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_3/AssignNewValue?&batch_normalization_3/AssignNewValue_1?5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_3/ReadVariableOp?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_3/ReadVariableOp_1?
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_3/FusedBatchNormV3?
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_3/AssignNewValue?
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_3/AssignNewValue_1?
IdentityIdentity*batch_normalization_3/FusedBatchNormV3:y:0%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_6_layer_call_fn_64966

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_609322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_64942

args_0B
'conv2d_2_conv2d_readvariableop_resource:@?7
(conv2d_2_biasadd_readvariableop_resource:	?
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_64886

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????00@:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
j
1__inference_module_wrapper_12_layer_call_fn_65194

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_617002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_7_layer_call_fn_65025

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_618302
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_65822

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?4
 __inference__wrapped_model_60814
module_wrapper_inputY
?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource: N
@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource: ]
Csequential_module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: @R
Dsequential_module_wrapper_1_conv2d_1_biasadd_readvariableop_resource:@U
Gsequential_module_wrapper_2_batch_normalization_readvariableop_resource:@W
Isequential_module_wrapper_2_batch_normalization_readvariableop_1_resource:@f
Xsequential_module_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource:@h
Zsequential_module_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@^
Csequential_module_wrapper_5_conv2d_2_conv2d_readvariableop_resource:@?S
Dsequential_module_wrapper_5_conv2d_2_biasadd_readvariableop_resource:	?X
Isequential_module_wrapper_6_batch_normalization_1_readvariableop_resource:	?Z
Ksequential_module_wrapper_6_batch_normalization_1_readvariableop_1_resource:	?i
Zsequential_module_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	?k
\sequential_module_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	?_
Csequential_module_wrapper_9_conv2d_3_conv2d_readvariableop_resource:??S
Dsequential_module_wrapper_9_conv2d_3_biasadd_readvariableop_resource:	?Y
Jsequential_module_wrapper_10_batch_normalization_2_readvariableop_resource:	?[
Lsequential_module_wrapper_10_batch_normalization_2_readvariableop_1_resource:	?j
[sequential_module_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?l
]sequential_module_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?`
Dsequential_module_wrapper_13_conv2d_4_conv2d_readvariableop_resource:??T
Esequential_module_wrapper_13_conv2d_4_biasadd_readvariableop_resource:	?Y
Jsequential_module_wrapper_14_batch_normalization_3_readvariableop_resource:	?[
Lsequential_module_wrapper_14_batch_normalization_3_readvariableop_1_resource:	?j
[sequential_module_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	?l
]sequential_module_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	?U
Asequential_module_wrapper_18_dense_matmul_readvariableop_resource:
?$?Q
Bsequential_module_wrapper_18_dense_biasadd_readvariableop_resource:	?c
Tsequential_module_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource:	?g
Xsequential_module_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource:	?e
Vsequential_module_wrapper_19_batch_normalization_4_batchnorm_readvariableop_1_resource:	?e
Vsequential_module_wrapper_19_batch_normalization_4_batchnorm_readvariableop_2_resource:	?W
Csequential_module_wrapper_21_dense_1_matmul_readvariableop_resource:
??S
Dsequential_module_wrapper_21_dense_1_biasadd_readvariableop_resource:	?c
Tsequential_module_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource:	?g
Xsequential_module_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource:	?e
Vsequential_module_wrapper_22_batch_normalization_5_batchnorm_readvariableop_1_resource:	?e
Vsequential_module_wrapper_22_batch_normalization_5_batchnorm_readvariableop_2_resource:	?V
Csequential_module_wrapper_24_dense_2_matmul_readvariableop_resource:	?R
Dsequential_module_wrapper_24_dense_2_biasadd_readvariableop_resource:
identity??7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp?6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp?;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?Rsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Tsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?Asequential/module_wrapper_10/batch_normalization_2/ReadVariableOp?Csequential/module_wrapper_10/batch_normalization_2/ReadVariableOp_1?<sequential/module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?;sequential/module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?Rsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?Tsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?Asequential/module_wrapper_14/batch_normalization_3/ReadVariableOp?Csequential/module_wrapper_14/batch_normalization_3/ReadVariableOp_1?9sequential/module_wrapper_18/dense/BiasAdd/ReadVariableOp?8sequential/module_wrapper_18/dense/MatMul/ReadVariableOp?Ksequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1?Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2?Osequential/module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?Osequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?Qsequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?>sequential/module_wrapper_2/batch_normalization/ReadVariableOp?@sequential/module_wrapper_2/batch_normalization/ReadVariableOp_1?;sequential/module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?:sequential/module_wrapper_21/dense_1/MatMul/ReadVariableOp?Ksequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1?Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2?Osequential/module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?;sequential/module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?:sequential/module_wrapper_24/dense_2/MatMul/ReadVariableOp?;sequential/module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?:sequential/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?Qsequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?Ssequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?@sequential/module_wrapper_6/batch_normalization_1/ReadVariableOp?Bsequential/module_wrapper_6/batch_normalization_1/ReadVariableOp_1?;sequential/module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?:sequential/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype028
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp?
'sequential/module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input>sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2)
'sequential/module_wrapper/conv2d/Conv2D?
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype029
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp?
(sequential/module_wrapper/conv2d/BiasAddBiasAdd0sequential/module_wrapper/conv2d/Conv2D:output:0?sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2*
(sequential/module_wrapper/conv2d/BiasAdd?
%sequential/module_wrapper/conv2d/ReluRelu1sequential/module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2'
%sequential/module_wrapper/conv2d/Relu?
:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02<
:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
+sequential/module_wrapper_1/conv2d_1/Conv2DConv2D3sequential/module_wrapper/conv2d/Relu:activations:0Bsequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2-
+sequential/module_wrapper_1/conv2d_1/Conv2D?
;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_1/conv2d_1/BiasAddBiasAdd4sequential/module_wrapper_1/conv2d_1/Conv2D:output:0Csequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2.
,sequential/module_wrapper_1/conv2d_1/BiasAdd?
)sequential/module_wrapper_1/conv2d_1/ReluRelu5sequential/module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2+
)sequential/module_wrapper_1/conv2d_1/Relu?
>sequential/module_wrapper_2/batch_normalization/ReadVariableOpReadVariableOpGsequential_module_wrapper_2_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02@
>sequential/module_wrapper_2/batch_normalization/ReadVariableOp?
@sequential/module_wrapper_2/batch_normalization/ReadVariableOp_1ReadVariableOpIsequential_module_wrapper_2_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02B
@sequential/module_wrapper_2/batch_normalization/ReadVariableOp_1?
Osequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpXsequential_module_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02Q
Osequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?
Qsequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZsequential_module_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02S
Qsequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
@sequential/module_wrapper_2/batch_normalization/FusedBatchNormV3FusedBatchNormV37sequential/module_wrapper_1/conv2d_1/Relu:activations:0Fsequential/module_wrapper_2/batch_normalization/ReadVariableOp:value:0Hsequential/module_wrapper_2/batch_normalization/ReadVariableOp_1:value:0Wsequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Ysequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2B
@sequential/module_wrapper_2/batch_normalization/FusedBatchNormV3?
1sequential/module_wrapper_3/max_pooling2d/MaxPoolMaxPoolDsequential/module_wrapper_2/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
23
1sequential/module_wrapper_3/max_pooling2d/MaxPool?
,sequential/module_wrapper_4/dropout/IdentityIdentity:sequential/module_wrapper_3/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2.
,sequential/module_wrapper_4/dropout/Identity?
:sequential/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_5_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02<
:sequential/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?
+sequential/module_wrapper_5/conv2d_2/Conv2DConv2D5sequential/module_wrapper_4/dropout/Identity:output:0Bsequential/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+sequential/module_wrapper_5/conv2d_2/Conv2D?
;sequential/module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_5_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential/module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_5/conv2d_2/BiasAddBiasAdd4sequential/module_wrapper_5/conv2d_2/Conv2D:output:0Csequential/module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,sequential/module_wrapper_5/conv2d_2/BiasAdd?
)sequential/module_wrapper_5/conv2d_2/ReluRelu5sequential/module_wrapper_5/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2+
)sequential/module_wrapper_5/conv2d_2/Relu?
@sequential/module_wrapper_6/batch_normalization_1/ReadVariableOpReadVariableOpIsequential_module_wrapper_6_batch_normalization_1_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@sequential/module_wrapper_6/batch_normalization_1/ReadVariableOp?
Bsequential/module_wrapper_6/batch_normalization_1/ReadVariableOp_1ReadVariableOpKsequential_module_wrapper_6_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:?*
dtype02D
Bsequential/module_wrapper_6/batch_normalization_1/ReadVariableOp_1?
Qsequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpZsequential_module_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02S
Qsequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
Ssequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp\sequential_module_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02U
Ssequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
Bsequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3FusedBatchNormV37sequential/module_wrapper_5/conv2d_2/Relu:activations:0Hsequential/module_wrapper_6/batch_normalization_1/ReadVariableOp:value:0Jsequential/module_wrapper_6/batch_normalization_1/ReadVariableOp_1:value:0Ysequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0[sequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2D
Bsequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3?
3sequential/module_wrapper_7/max_pooling2d_1/MaxPoolMaxPoolFsequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
25
3sequential/module_wrapper_7/max_pooling2d_1/MaxPool?
.sequential/module_wrapper_8/dropout_1/IdentityIdentity<sequential/module_wrapper_7/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:??????????20
.sequential/module_wrapper_8/dropout_1/Identity?
:sequential/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_9_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:sequential/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
+sequential/module_wrapper_9/conv2d_3/Conv2DConv2D7sequential/module_wrapper_8/dropout_1/Identity:output:0Bsequential/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+sequential/module_wrapper_9/conv2d_3/Conv2D?
;sequential/module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_9_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential/module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_9/conv2d_3/BiasAddBiasAdd4sequential/module_wrapper_9/conv2d_3/Conv2D:output:0Csequential/module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,sequential/module_wrapper_9/conv2d_3/BiasAdd?
)sequential/module_wrapper_9/conv2d_3/ReluRelu5sequential/module_wrapper_9/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2+
)sequential/module_wrapper_9/conv2d_3/Relu?
Asequential/module_wrapper_10/batch_normalization_2/ReadVariableOpReadVariableOpJsequential_module_wrapper_10_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential/module_wrapper_10/batch_normalization_2/ReadVariableOp?
Csequential/module_wrapper_10/batch_normalization_2/ReadVariableOp_1ReadVariableOpLsequential_module_wrapper_10_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Csequential/module_wrapper_10/batch_normalization_2/ReadVariableOp_1?
Rsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp[sequential_module_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02T
Rsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Tsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]sequential_module_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02V
Tsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
Csequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3FusedBatchNormV37sequential/module_wrapper_9/conv2d_3/Relu:activations:0Isequential/module_wrapper_10/batch_normalization_2/ReadVariableOp:value:0Ksequential/module_wrapper_10/batch_normalization_2/ReadVariableOp_1:value:0Zsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0\sequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2E
Csequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3?
4sequential/module_wrapper_11/max_pooling2d_2/MaxPoolMaxPoolGsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
26
4sequential/module_wrapper_11/max_pooling2d_2/MaxPool?
/sequential/module_wrapper_12/dropout_2/IdentityIdentity=sequential/module_wrapper_11/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:??????????21
/sequential/module_wrapper_12/dropout_2/Identity?
;sequential/module_wrapper_13/conv2d_4/Conv2D/ReadVariableOpReadVariableOpDsequential_module_wrapper_13_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02=
;sequential/module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?
,sequential/module_wrapper_13/conv2d_4/Conv2DConv2D8sequential/module_wrapper_12/dropout_2/Identity:output:0Csequential/module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2.
,sequential/module_wrapper_13/conv2d_4/Conv2D?
<sequential/module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpEsequential_module_wrapper_13_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<sequential/module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?
-sequential/module_wrapper_13/conv2d_4/BiasAddBiasAdd5sequential/module_wrapper_13/conv2d_4/Conv2D:output:0Dsequential/module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2/
-sequential/module_wrapper_13/conv2d_4/BiasAdd?
*sequential/module_wrapper_13/conv2d_4/ReluRelu6sequential/module_wrapper_13/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2,
*sequential/module_wrapper_13/conv2d_4/Relu?
Asequential/module_wrapper_14/batch_normalization_3/ReadVariableOpReadVariableOpJsequential_module_wrapper_14_batch_normalization_3_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential/module_wrapper_14/batch_normalization_3/ReadVariableOp?
Csequential/module_wrapper_14/batch_normalization_3/ReadVariableOp_1ReadVariableOpLsequential_module_wrapper_14_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Csequential/module_wrapper_14/batch_normalization_3/ReadVariableOp_1?
Rsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp[sequential_module_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02T
Rsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
Tsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]sequential_module_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02V
Tsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
Csequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3FusedBatchNormV38sequential/module_wrapper_13/conv2d_4/Relu:activations:0Isequential/module_wrapper_14/batch_normalization_3/ReadVariableOp:value:0Ksequential/module_wrapper_14/batch_normalization_3/ReadVariableOp_1:value:0Zsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0\sequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2E
Csequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3?
4sequential/module_wrapper_15/max_pooling2d_3/MaxPoolMaxPoolGsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
26
4sequential/module_wrapper_15/max_pooling2d_3/MaxPool?
/sequential/module_wrapper_16/dropout_3/IdentityIdentity=sequential/module_wrapper_15/max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:??????????21
/sequential/module_wrapper_16/dropout_3/Identity?
*sequential/module_wrapper_17/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2,
*sequential/module_wrapper_17/flatten/Const?
,sequential/module_wrapper_17/flatten/ReshapeReshape8sequential/module_wrapper_16/dropout_3/Identity:output:03sequential/module_wrapper_17/flatten/Const:output:0*
T0*(
_output_shapes
:??????????$2.
,sequential/module_wrapper_17/flatten/Reshape?
8sequential/module_wrapper_18/dense/MatMul/ReadVariableOpReadVariableOpAsequential_module_wrapper_18_dense_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02:
8sequential/module_wrapper_18/dense/MatMul/ReadVariableOp?
)sequential/module_wrapper_18/dense/MatMulMatMul5sequential/module_wrapper_17/flatten/Reshape:output:0@sequential/module_wrapper_18/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential/module_wrapper_18/dense/MatMul?
9sequential/module_wrapper_18/dense/BiasAdd/ReadVariableOpReadVariableOpBsequential_module_wrapper_18_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential/module_wrapper_18/dense/BiasAdd/ReadVariableOp?
*sequential/module_wrapper_18/dense/BiasAddBiasAdd3sequential/module_wrapper_18/dense/MatMul:product:0Asequential/module_wrapper_18/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential/module_wrapper_18/dense/BiasAdd?
'sequential/module_wrapper_18/dense/ReluRelu3sequential/module_wrapper_18/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'sequential/module_wrapper_18/dense/Relu?
Ksequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpTsequential_module_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2D
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/add/y?
@sequential/module_wrapper_19/batch_normalization_4/batchnorm/addAddV2Ssequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp:value:0Ksequential/module_wrapper_19/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2B
@sequential/module_wrapper_19/batch_normalization_4/batchnorm/add?
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/RsqrtRsqrtDsequential/module_wrapper_19/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2D
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt?
Osequential/module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpXsequential_module_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Osequential/module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?
@sequential/module_wrapper_19/batch_normalization_4/batchnorm/mulMulFsequential/module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt:y:0Wsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2B
@sequential/module_wrapper_19/batch_normalization_4/batchnorm/mul?
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul_1Mul5sequential/module_wrapper_18/dense/Relu:activations:0Dsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2D
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul_1?
Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpVsequential_module_wrapper_19_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02O
Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1?
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul_2MulUsequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1:value:0Dsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2D
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul_2?
Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpVsequential_module_wrapper_19_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02O
Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2?
@sequential/module_wrapper_19/batch_normalization_4/batchnorm/subSubUsequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2:value:0Fsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2B
@sequential/module_wrapper_19/batch_normalization_4/batchnorm/sub?
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/add_1AddV2Fsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul_1:z:0Dsequential/module_wrapper_19/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2D
Bsequential/module_wrapper_19/batch_normalization_4/batchnorm/add_1?
/sequential/module_wrapper_20/dropout_4/IdentityIdentityFsequential/module_wrapper_19/batch_normalization_4/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????21
/sequential/module_wrapper_20/dropout_4/Identity?
:sequential/module_wrapper_21/dense_1/MatMul/ReadVariableOpReadVariableOpCsequential_module_wrapper_21_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02<
:sequential/module_wrapper_21/dense_1/MatMul/ReadVariableOp?
+sequential/module_wrapper_21/dense_1/MatMulMatMul8sequential/module_wrapper_20/dropout_4/Identity:output:0Bsequential/module_wrapper_21/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential/module_wrapper_21/dense_1/MatMul?
;sequential/module_wrapper_21/dense_1/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_21_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential/module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_21/dense_1/BiasAddBiasAdd5sequential/module_wrapper_21/dense_1/MatMul:product:0Csequential/module_wrapper_21/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential/module_wrapper_21/dense_1/BiasAdd?
)sequential/module_wrapper_21/dense_1/ReluRelu5sequential/module_wrapper_21/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2+
)sequential/module_wrapper_21/dense_1/Relu?
Ksequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpTsequential_module_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2D
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/add/y?
@sequential/module_wrapper_22/batch_normalization_5/batchnorm/addAddV2Ssequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp:value:0Ksequential/module_wrapper_22/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2B
@sequential/module_wrapper_22/batch_normalization_5/batchnorm/add?
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/RsqrtRsqrtDsequential/module_wrapper_22/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?2D
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt?
Osequential/module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpXsequential_module_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Osequential/module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?
@sequential/module_wrapper_22/batch_normalization_5/batchnorm/mulMulFsequential/module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt:y:0Wsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2B
@sequential/module_wrapper_22/batch_normalization_5/batchnorm/mul?
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul_1Mul7sequential/module_wrapper_21/dense_1/Relu:activations:0Dsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2D
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul_1?
Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpVsequential_module_wrapper_22_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02O
Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1?
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul_2MulUsequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0Dsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2D
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul_2?
Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpVsequential_module_wrapper_22_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02O
Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2?
@sequential/module_wrapper_22/batch_normalization_5/batchnorm/subSubUsequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2:value:0Fsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2B
@sequential/module_wrapper_22/batch_normalization_5/batchnorm/sub?
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/add_1AddV2Fsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul_1:z:0Dsequential/module_wrapper_22/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2D
Bsequential/module_wrapper_22/batch_normalization_5/batchnorm/add_1?
/sequential/module_wrapper_23/dropout_5/IdentityIdentityFsequential/module_wrapper_22/batch_normalization_5/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????21
/sequential/module_wrapper_23/dropout_5/Identity?
:sequential/module_wrapper_24/dense_2/MatMul/ReadVariableOpReadVariableOpCsequential_module_wrapper_24_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02<
:sequential/module_wrapper_24/dense_2/MatMul/ReadVariableOp?
+sequential/module_wrapper_24/dense_2/MatMulMatMul8sequential/module_wrapper_23/dropout_5/Identity:output:0Bsequential/module_wrapper_24/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+sequential/module_wrapper_24/dense_2/MatMul?
;sequential/module_wrapper_24/dense_2/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_24_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02=
;sequential/module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_24/dense_2/BiasAddBiasAdd5sequential/module_wrapper_24/dense_2/MatMul:product:0Csequential/module_wrapper_24/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,sequential/module_wrapper_24/dense_2/BiasAdd?
,sequential/module_wrapper_24/dense_2/SoftmaxSoftmax5sequential/module_wrapper_24/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2.
,sequential/module_wrapper_24/dense_2/Softmax?
IdentityIdentity6sequential/module_wrapper_24/dense_2/Softmax:softmax:08^sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7^sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp<^sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp;^sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpS^sequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpU^sequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1B^sequential/module_wrapper_10/batch_normalization_2/ReadVariableOpD^sequential/module_wrapper_10/batch_normalization_2/ReadVariableOp_1=^sequential/module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp<^sequential/module_wrapper_13/conv2d_4/Conv2D/ReadVariableOpS^sequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpU^sequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1B^sequential/module_wrapper_14/batch_normalization_3/ReadVariableOpD^sequential/module_wrapper_14/batch_normalization_3/ReadVariableOp_1:^sequential/module_wrapper_18/dense/BiasAdd/ReadVariableOp9^sequential/module_wrapper_18/dense/MatMul/ReadVariableOpL^sequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpN^sequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1N^sequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2P^sequential/module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpP^sequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpR^sequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?^sequential/module_wrapper_2/batch_normalization/ReadVariableOpA^sequential/module_wrapper_2/batch_normalization/ReadVariableOp_1<^sequential/module_wrapper_21/dense_1/BiasAdd/ReadVariableOp;^sequential/module_wrapper_21/dense_1/MatMul/ReadVariableOpL^sequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpN^sequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1N^sequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2P^sequential/module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp<^sequential/module_wrapper_24/dense_2/BiasAdd/ReadVariableOp;^sequential/module_wrapper_24/dense_2/MatMul/ReadVariableOp<^sequential/module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp;^sequential/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOpR^sequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpT^sequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1A^sequential/module_wrapper_6/batch_normalization_1/ReadVariableOpC^sequential/module_wrapper_6/batch_normalization_1/ReadVariableOp_1<^sequential/module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp;^sequential/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp2p
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp2z
;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2?
Rsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpRsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Tsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Tsequential/module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12?
Asequential/module_wrapper_10/batch_normalization_2/ReadVariableOpAsequential/module_wrapper_10/batch_normalization_2/ReadVariableOp2?
Csequential/module_wrapper_10/batch_normalization_2/ReadVariableOp_1Csequential/module_wrapper_10/batch_normalization_2/ReadVariableOp_12|
<sequential/module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp<sequential/module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp2z
;sequential/module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp;sequential/module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp2?
Rsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpRsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2?
Tsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Tsequential/module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12?
Asequential/module_wrapper_14/batch_normalization_3/ReadVariableOpAsequential/module_wrapper_14/batch_normalization_3/ReadVariableOp2?
Csequential/module_wrapper_14/batch_normalization_3/ReadVariableOp_1Csequential/module_wrapper_14/batch_normalization_3/ReadVariableOp_12v
9sequential/module_wrapper_18/dense/BiasAdd/ReadVariableOp9sequential/module_wrapper_18/dense/BiasAdd/ReadVariableOp2t
8sequential/module_wrapper_18/dense/MatMul/ReadVariableOp8sequential/module_wrapper_18/dense/MatMul/ReadVariableOp2?
Ksequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpKsequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp2?
Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_12?
Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2Msequential/module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_22?
Osequential/module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpOsequential/module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp2?
Osequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpOsequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp2?
Qsequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Qsequential/module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_12?
>sequential/module_wrapper_2/batch_normalization/ReadVariableOp>sequential/module_wrapper_2/batch_normalization/ReadVariableOp2?
@sequential/module_wrapper_2/batch_normalization/ReadVariableOp_1@sequential/module_wrapper_2/batch_normalization/ReadVariableOp_12z
;sequential/module_wrapper_21/dense_1/BiasAdd/ReadVariableOp;sequential/module_wrapper_21/dense_1/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_21/dense_1/MatMul/ReadVariableOp:sequential/module_wrapper_21/dense_1/MatMul/ReadVariableOp2?
Ksequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpKsequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp2?
Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_12?
Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2Msequential/module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_22?
Osequential/module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpOsequential/module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp2z
;sequential/module_wrapper_24/dense_2/BiasAdd/ReadVariableOp;sequential/module_wrapper_24/dense_2/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_24/dense_2/MatMul/ReadVariableOp:sequential/module_wrapper_24/dense_2/MatMul/ReadVariableOp2z
;sequential/module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp;sequential/module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp:sequential/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp2?
Qsequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpQsequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
Ssequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ssequential/module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12?
@sequential/module_wrapper_6/batch_normalization_1/ReadVariableOp@sequential/module_wrapper_6/batch_normalization_1/ReadVariableOp2?
Bsequential/module_wrapper_6/batch_normalization_1/ReadVariableOp_1Bsequential/module_wrapper_6/batch_normalization_1/ReadVariableOp_12z
;sequential/module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp;sequential/module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:sequential/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:e a
/
_output_shapes
:?????????00
.
_user_specified_namemodule_wrapper_input
??
?
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_61394

args_0L
=batch_normalization_5_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_5_assignmovingavg_1_readvariableop_resource:	?J
;batch_normalization_5_batchnorm_mul_readvariableop_resource:	?F
7batch_normalization_5_batchnorm_readvariableop_resource:	?
identity??%batch_normalization_5/AssignMovingAvg?4batch_normalization_5/AssignMovingAvg/ReadVariableOp?'batch_normalization_5/AssignMovingAvg_1?6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_5/batchnorm/ReadVariableOp?2batch_normalization_5/batchnorm/mul/ReadVariableOp?
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_5/moments/mean/reduction_indices?
"batch_normalization_5/moments/meanMeanargs_0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_5/moments/mean?
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_5/moments/StopGradient?
/batch_normalization_5/moments/SquaredDifferenceSquaredDifferenceargs_03batch_normalization_5/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_5/moments/SquaredDifference?
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_5/moments/variance/reduction_indices?
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_5/moments/variance?
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_5/moments/Squeeze?
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_5/moments/Squeeze_1?
+batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_5/AssignMovingAvg/decay?
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_5/AssignMovingAvg/ReadVariableOp?
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_5/AssignMovingAvg/sub?
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_5/AssignMovingAvg/mul?
%batch_normalization_5/AssignMovingAvgAssignSubVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_5/AssignMovingAvg?
-batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_5/AssignMovingAvg_1/decay?
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_5/AssignMovingAvg_1/sub?
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_5/AssignMovingAvg_1/mul?
'batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_5/AssignMovingAvg_1?
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_5/batchnorm/add/y?
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/add?
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/Rsqrt?
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_5/batchnorm/mul/ReadVariableOp?
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/mul?
%batch_normalization_5/batchnorm/mul_1Mulargs_0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/mul_1?
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/mul_2?
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_5/batchnorm/ReadVariableOp?
#batch_normalization_5/batchnorm/subSub6batch_normalization_5/batchnorm/ReadVariableOp:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/sub?
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/add_1?
IdentityIdentity)batch_normalization_5/batchnorm/add_1:z:0&^batch_normalization_5/AssignMovingAvg5^batch_normalization_5/AssignMovingAvg/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_17^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp3^batch_normalization_5/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2N
%batch_normalization_5/AssignMovingAvg%batch_normalization_5/AssignMovingAvg2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_1'batch_normalization_5/AssignMovingAvg_12p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_65015

args_0<
-batch_normalization_1_readvariableop_resource:	?>
/batch_normalization_1_readvariableop_1_resource:	?M
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_1/AssignNewValue?&batch_normalization_1/AssignNewValue_1?5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_1/ReadVariableOp?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_1/ReadVariableOp_1?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_1/FusedBatchNormV3?
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue?
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1?
IdentityIdentity*batch_normalization_1/FusedBatchNormV3:y:0%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_65050

args_0
identityw
dropout_1/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_1/Identityx
IdentityIdentitydropout_1/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_61542

args_08
$dense_matmul_readvariableop_resource:
?$?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_15_layer_call_fn_65323

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_616022
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63274

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_65164

args_0<
-batch_normalization_2_readvariableop_resource:	?>
/batch_normalization_2_readvariableop_1_resource:	?M
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_2/AssignNewValue?&batch_normalization_2/AssignNewValue_1?5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_2/FusedBatchNormV3?
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_2/AssignNewValue?
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_2/AssignNewValue_1?
IdentityIdentity*batch_normalization_2/FusedBatchNormV3:y:0%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?	
*__inference_sequential_layer_call_fn_63944
module_wrapper_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?&

unknown_13:??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
?$?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?

unknown_31:
??

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
 !"%&'(*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_622482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????00
.
_user_specified_namemodule_wrapper_input
?
?
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_61147

args_0:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
IdentityIdentitydense_1/Relu:activations:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_65502

args_0L
=batch_normalization_4_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_4_assignmovingavg_1_readvariableop_resource:	?J
;batch_normalization_4_batchnorm_mul_readvariableop_resource:	?F
7batch_normalization_4_batchnorm_readvariableop_resource:	?
identity??%batch_normalization_4/AssignMovingAvg?4batch_normalization_4/AssignMovingAvg/ReadVariableOp?'batch_normalization_4/AssignMovingAvg_1?6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_4/batchnorm/ReadVariableOp?2batch_normalization_4/batchnorm/mul/ReadVariableOp?
4batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_4/moments/mean/reduction_indices?
"batch_normalization_4/moments/meanMeanargs_0=batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_4/moments/mean?
*batch_normalization_4/moments/StopGradientStopGradient+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_4/moments/StopGradient?
/batch_normalization_4/moments/SquaredDifferenceSquaredDifferenceargs_03batch_normalization_4/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_4/moments/SquaredDifference?
8batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_4/moments/variance/reduction_indices?
&batch_normalization_4/moments/varianceMean3batch_normalization_4/moments/SquaredDifference:z:0Abatch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_4/moments/variance?
%batch_normalization_4/moments/SqueezeSqueeze+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_4/moments/Squeeze?
'batch_normalization_4/moments/Squeeze_1Squeeze/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_4/moments/Squeeze_1?
+batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_4/AssignMovingAvg/decay?
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_4/AssignMovingAvg/ReadVariableOp?
)batch_normalization_4/AssignMovingAvg/subSub<batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_4/AssignMovingAvg/sub?
)batch_normalization_4/AssignMovingAvg/mulMul-batch_normalization_4/AssignMovingAvg/sub:z:04batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_4/AssignMovingAvg/mul?
%batch_normalization_4/AssignMovingAvgAssignSubVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource-batch_normalization_4/AssignMovingAvg/mul:z:05^batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_4/AssignMovingAvg?
-batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_4/AssignMovingAvg_1/decay?
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_4/AssignMovingAvg_1/subSub>batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_4/AssignMovingAvg_1/sub?
+batch_normalization_4/AssignMovingAvg_1/mulMul/batch_normalization_4/AssignMovingAvg_1/sub:z:06batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_4/AssignMovingAvg_1/mul?
'batch_normalization_4/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource/batch_normalization_4/AssignMovingAvg_1/mul:z:07^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_4/AssignMovingAvg_1?
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_4/batchnorm/add/y?
#batch_normalization_4/batchnorm/addAddV20batch_normalization_4/moments/Squeeze_1:output:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/add?
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/Rsqrt?
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_4/batchnorm/mul/ReadVariableOp?
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/mul?
%batch_normalization_4/batchnorm/mul_1Mulargs_0'batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/mul_1?
%batch_normalization_4/batchnorm/mul_2Mul.batch_normalization_4/moments/Squeeze:output:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/mul_2?
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_4/batchnorm/ReadVariableOp?
#batch_normalization_4/batchnorm/subSub6batch_normalization_4/batchnorm/ReadVariableOp:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/sub?
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/add_1?
IdentityIdentity)batch_normalization_4/batchnorm/add_1:z:0&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2N
%batch_normalization_4/AssignMovingAvg%batch_normalization_4/AssignMovingAvg2l
4batch_normalization_4/AssignMovingAvg/ReadVariableOp4batch_normalization_4/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_1'batch_normalization_4/AssignMovingAvg_12p
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_61173

args_0F
7batch_normalization_5_batchnorm_readvariableop_resource:	?J
;batch_normalization_5_batchnorm_mul_readvariableop_resource:	?H
9batch_normalization_5_batchnorm_readvariableop_1_resource:	?H
9batch_normalization_5_batchnorm_readvariableop_2_resource:	?
identity??.batch_normalization_5/batchnorm/ReadVariableOp?0batch_normalization_5/batchnorm/ReadVariableOp_1?0batch_normalization_5/batchnorm/ReadVariableOp_2?2batch_normalization_5/batchnorm/mul/ReadVariableOp?
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_5/batchnorm/ReadVariableOp?
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_5/batchnorm/add/y?
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/add?
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/Rsqrt?
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_5/batchnorm/mul/ReadVariableOp?
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/mul?
%batch_normalization_5/batchnorm/mul_1Mulargs_0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/mul_1?
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_1?
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_5/batchnorm/mul_2?
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_2?
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_5/batchnorm/sub?
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_5/batchnorm/add_1?
IdentityIdentity)batch_normalization_5/batchnorm/add_1:z:0/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_62248

inputs.
module_wrapper_62142: "
module_wrapper_62144: 0
module_wrapper_1_62147: @$
module_wrapper_1_62149:@$
module_wrapper_2_62152:@$
module_wrapper_2_62154:@$
module_wrapper_2_62156:@$
module_wrapper_2_62158:@1
module_wrapper_5_62163:@?%
module_wrapper_5_62165:	?%
module_wrapper_6_62168:	?%
module_wrapper_6_62170:	?%
module_wrapper_6_62172:	?%
module_wrapper_6_62174:	?2
module_wrapper_9_62179:??%
module_wrapper_9_62181:	?&
module_wrapper_10_62184:	?&
module_wrapper_10_62186:	?&
module_wrapper_10_62188:	?&
module_wrapper_10_62190:	?3
module_wrapper_13_62195:??&
module_wrapper_13_62197:	?&
module_wrapper_14_62200:	?&
module_wrapper_14_62202:	?&
module_wrapper_14_62204:	?&
module_wrapper_14_62206:	?+
module_wrapper_18_62212:
?$?&
module_wrapper_18_62214:	?&
module_wrapper_19_62217:	?&
module_wrapper_19_62219:	?&
module_wrapper_19_62221:	?&
module_wrapper_19_62223:	?+
module_wrapper_21_62227:
??&
module_wrapper_21_62229:	?&
module_wrapper_22_62232:	?&
module_wrapper_22_62234:	?&
module_wrapper_22_62236:	?&
module_wrapper_22_62238:	?*
module_wrapper_24_62242:	?%
module_wrapper_24_62244:
identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?)module_wrapper_10/StatefulPartitionedCall?)module_wrapper_12/StatefulPartitionedCall?)module_wrapper_13/StatefulPartitionedCall?)module_wrapper_14/StatefulPartitionedCall?)module_wrapper_16/StatefulPartitionedCall?)module_wrapper_18/StatefulPartitionedCall?)module_wrapper_19/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?)module_wrapper_20/StatefulPartitionedCall?)module_wrapper_21/StatefulPartitionedCall?)module_wrapper_22/StatefulPartitionedCall?)module_wrapper_23/StatefulPartitionedCall?)module_wrapper_24/StatefulPartitionedCall?(module_wrapper_4/StatefulPartitionedCall?(module_wrapper_5/StatefulPartitionedCall?(module_wrapper_6/StatefulPartitionedCall?(module_wrapper_8/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_62142module_wrapper_62144*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_620452(
&module_wrapper/StatefulPartitionedCall?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0module_wrapper_1_62147module_wrapper_1_62149*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_620152*
(module_wrapper_1/StatefulPartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_62152module_wrapper_2_62154module_wrapper_2_62156module_wrapper_2_62158*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_619812*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_619442"
 module_wrapper_3/PartitionedCall?
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_619282*
(module_wrapper_4/StatefulPartitionedCall?
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_4/StatefulPartitionedCall:output:0module_wrapper_5_62163module_wrapper_5_62165*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_619012*
(module_wrapper_5/StatefulPartitionedCall?
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_5/StatefulPartitionedCall:output:0module_wrapper_6_62168module_wrapper_6_62170module_wrapper_6_62172module_wrapper_6_62174*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_618672*
(module_wrapper_6/StatefulPartitionedCall?
 module_wrapper_7/PartitionedCallPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_618302"
 module_wrapper_7/PartitionedCall?
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_7/PartitionedCall:output:0)^module_wrapper_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_618142*
(module_wrapper_8/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_8/StatefulPartitionedCall:output:0module_wrapper_9_62179module_wrapper_9_62181*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_617872*
(module_wrapper_9/StatefulPartitionedCall?
)module_wrapper_10/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0module_wrapper_10_62184module_wrapper_10_62186module_wrapper_10_62188module_wrapper_10_62190*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_617532+
)module_wrapper_10/StatefulPartitionedCall?
!module_wrapper_11/PartitionedCallPartitionedCall2module_wrapper_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_617162#
!module_wrapper_11/PartitionedCall?
)module_wrapper_12/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_11/PartitionedCall:output:0)^module_wrapper_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_617002+
)module_wrapper_12/StatefulPartitionedCall?
)module_wrapper_13/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_12/StatefulPartitionedCall:output:0module_wrapper_13_62195module_wrapper_13_62197*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_616732+
)module_wrapper_13/StatefulPartitionedCall?
)module_wrapper_14/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_13/StatefulPartitionedCall:output:0module_wrapper_14_62200module_wrapper_14_62202module_wrapper_14_62204module_wrapper_14_62206*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_616392+
)module_wrapper_14/StatefulPartitionedCall?
!module_wrapper_15/PartitionedCallPartitionedCall2module_wrapper_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_616022#
!module_wrapper_15/PartitionedCall?
)module_wrapper_16/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_15/PartitionedCall:output:0*^module_wrapper_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_615862+
)module_wrapper_16/StatefulPartitionedCall?
!module_wrapper_17/PartitionedCallPartitionedCall2module_wrapper_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_615632#
!module_wrapper_17/PartitionedCall?
)module_wrapper_18/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_17/PartitionedCall:output:0module_wrapper_18_62212module_wrapper_18_62214*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_615422+
)module_wrapper_18/StatefulPartitionedCall?
)module_wrapper_19/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_18/StatefulPartitionedCall:output:0module_wrapper_19_62217module_wrapper_19_62219module_wrapper_19_62221module_wrapper_19_62223*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_615082+
)module_wrapper_19/StatefulPartitionedCall?
)module_wrapper_20/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_19/StatefulPartitionedCall:output:0*^module_wrapper_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_614552+
)module_wrapper_20/StatefulPartitionedCall?
)module_wrapper_21/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_20/StatefulPartitionedCall:output:0module_wrapper_21_62227module_wrapper_21_62229*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_614282+
)module_wrapper_21/StatefulPartitionedCall?
)module_wrapper_22/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_21/StatefulPartitionedCall:output:0module_wrapper_22_62232module_wrapper_22_62234module_wrapper_22_62236module_wrapper_22_62238*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_613942+
)module_wrapper_22/StatefulPartitionedCall?
)module_wrapper_23/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_22/StatefulPartitionedCall:output:0*^module_wrapper_20/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_613412+
)module_wrapper_23/StatefulPartitionedCall?
)module_wrapper_24/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_23/StatefulPartitionedCall:output:0module_wrapper_24_62242module_wrapper_24_62244*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_613142+
)module_wrapper_24/StatefulPartitionedCall?
IdentityIdentity2module_wrapper_24/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall*^module_wrapper_10/StatefulPartitionedCall*^module_wrapper_12/StatefulPartitionedCall*^module_wrapper_13/StatefulPartitionedCall*^module_wrapper_14/StatefulPartitionedCall*^module_wrapper_16/StatefulPartitionedCall*^module_wrapper_18/StatefulPartitionedCall*^module_wrapper_19/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall*^module_wrapper_20/StatefulPartitionedCall*^module_wrapper_21/StatefulPartitionedCall*^module_wrapper_22/StatefulPartitionedCall*^module_wrapper_23/StatefulPartitionedCall*^module_wrapper_24/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2V
)module_wrapper_10/StatefulPartitionedCall)module_wrapper_10/StatefulPartitionedCall2V
)module_wrapper_12/StatefulPartitionedCall)module_wrapper_12/StatefulPartitionedCall2V
)module_wrapper_13/StatefulPartitionedCall)module_wrapper_13/StatefulPartitionedCall2V
)module_wrapper_14/StatefulPartitionedCall)module_wrapper_14/StatefulPartitionedCall2V
)module_wrapper_16/StatefulPartitionedCall)module_wrapper_16/StatefulPartitionedCall2V
)module_wrapper_18/StatefulPartitionedCall)module_wrapper_18/StatefulPartitionedCall2V
)module_wrapper_19/StatefulPartitionedCall)module_wrapper_19/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2V
)module_wrapper_20/StatefulPartitionedCall)module_wrapper_20/StatefulPartitionedCall2V
)module_wrapper_21/StatefulPartitionedCall)module_wrapper_21/StatefulPartitionedCall2V
)module_wrapper_22/StatefulPartitionedCall)module_wrapper_22/StatefulPartitionedCall2V
)module_wrapper_23/StatefulPartitionedCall)module_wrapper_23/StatefulPartitionedCall2V
)module_wrapper_24/StatefulPartitionedCall)module_wrapper_24/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
k
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_65676

args_0
identity?w
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_5/dropout/Const?
dropout_5/dropout/MulMulargs_0 dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/dropout/Mulh
dropout_5/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_5/dropout/random_uniform/RandomUniform?
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_5/dropout/GreaterEqual/y?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_5/dropout/GreaterEqual?
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_5/dropout/Cast?
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_5/dropout/Mul_1p
IdentityIdentitydropout_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_3_layer_call_fn_64871

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_608882
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????00@:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_64901

args_0
identityr
dropout/IdentityIdentityargs_0*
T0*/
_output_shapes
:?????????@2
dropout/Identityu
IdentityIdentitydropout/Identity:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_5_layer_call_fn_64931

args_0"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_619012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_65091

args_0C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_3/Relu?
IdentityIdentityconv2d_3/Relu:activations:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
.__inference_module_wrapper_layer_call_fn_64733

args_0!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_608322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_24_layer_call_fn_65685

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_612012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_21_layer_call_fn_65547

args_0
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_614282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
5__inference_batch_normalization_2_layer_call_fn_65872

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_630702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
0__inference_module_wrapper_2_layer_call_fn_64817

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_608732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_7_layer_call_fn_65020

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_609472
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_62888

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_3_layer_call_fn_65927

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_631642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_4_layer_call_fn_66002

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_633642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_module_wrapper_11_layer_call_fn_65174

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_617162
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_61673

args_0C
'conv2d_4_conv2d_readvariableop_resource:??7
(conv2d_4_biasadd_readvariableop_resource:	?
identity??conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2Dargs_0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_4/Conv2D?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_4/Relu?
IdentityIdentityconv2d_4/Relu:activations:0 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?.
E__inference_sequential_layer_call_and_return_conditional_losses_64494
module_wrapper_inputN
4module_wrapper_conv2d_conv2d_readvariableop_resource: C
5module_wrapper_conv2d_biasadd_readvariableop_resource: R
8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: @G
9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource:@J
<module_wrapper_2_batch_normalization_readvariableop_resource:@L
>module_wrapper_2_batch_normalization_readvariableop_1_resource:@[
Mmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource:@]
Omodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@S
8module_wrapper_5_conv2d_2_conv2d_readvariableop_resource:@?H
9module_wrapper_5_conv2d_2_biasadd_readvariableop_resource:	?M
>module_wrapper_6_batch_normalization_1_readvariableop_resource:	?O
@module_wrapper_6_batch_normalization_1_readvariableop_1_resource:	?^
Omodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	?`
Qmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	?T
8module_wrapper_9_conv2d_3_conv2d_readvariableop_resource:??H
9module_wrapper_9_conv2d_3_biasadd_readvariableop_resource:	?N
?module_wrapper_10_batch_normalization_2_readvariableop_resource:	?P
Amodule_wrapper_10_batch_normalization_2_readvariableop_1_resource:	?_
Pmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?a
Rmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?U
9module_wrapper_13_conv2d_4_conv2d_readvariableop_resource:??I
:module_wrapper_13_conv2d_4_biasadd_readvariableop_resource:	?N
?module_wrapper_14_batch_normalization_3_readvariableop_resource:	?P
Amodule_wrapper_14_batch_normalization_3_readvariableop_1_resource:	?_
Pmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	?a
Rmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	?J
6module_wrapper_18_dense_matmul_readvariableop_resource:
?$?F
7module_wrapper_18_dense_biasadd_readvariableop_resource:	?X
Imodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource:	?\
Mmodule_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource:	?Z
Kmodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_1_resource:	?Z
Kmodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_2_resource:	?L
8module_wrapper_21_dense_1_matmul_readvariableop_resource:
??H
9module_wrapper_21_dense_1_biasadd_readvariableop_resource:	?X
Imodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource:	?\
Mmodule_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource:	?Z
Kmodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_1_resource:	?Z
Kmodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_2_resource:	?K
8module_wrapper_24_dense_2_matmul_readvariableop_resource:	?G
9module_wrapper_24_dense_2_biasadd_readvariableop_resource:
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?6module_wrapper_10/batch_normalization_2/ReadVariableOp?8module_wrapper_10/batch_normalization_2/ReadVariableOp_1?1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?6module_wrapper_14/batch_normalization_3/ReadVariableOp?8module_wrapper_14/batch_normalization_3/ReadVariableOp_1?.module_wrapper_18/dense/BiasAdd/ReadVariableOp?-module_wrapper_18/dense/MatMul/ReadVariableOp?@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1?Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2?Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?3module_wrapper_2/batch_normalization/ReadVariableOp?5module_wrapper_2/batch_normalization/ReadVariableOp_1?0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?/module_wrapper_21/dense_1/MatMul/ReadVariableOp?@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1?Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2?Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?/module_wrapper_24/dense_2/MatMul/ReadVariableOp?0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?5module_wrapper_6/batch_normalization_1/ReadVariableOp?7module_wrapper_6/batch_normalization_1/ReadVariableOp_1?0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
module_wrapper/conv2d/Relu?
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_1/conv2d_1/Conv2DConv2D(module_wrapper/conv2d/Relu:activations:07module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2"
 module_wrapper_1/conv2d_1/Conv2D?
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_1/conv2d_1/BiasAddBiasAdd)module_wrapper_1/conv2d_1/Conv2D:output:08module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2#
!module_wrapper_1/conv2d_1/BiasAdd?
module_wrapper_1/conv2d_1/ReluRelu*module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2 
module_wrapper_1/conv2d_1/Relu?
3module_wrapper_2/batch_normalization/ReadVariableOpReadVariableOp<module_wrapper_2_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype025
3module_wrapper_2/batch_normalization/ReadVariableOp?
5module_wrapper_2/batch_normalization/ReadVariableOp_1ReadVariableOp>module_wrapper_2_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5module_wrapper_2/batch_normalization/ReadVariableOp_1?
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpMmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
5module_wrapper_2/batch_normalization/FusedBatchNormV3FusedBatchNormV3,module_wrapper_1/conv2d_1/Relu:activations:0;module_wrapper_2/batch_normalization/ReadVariableOp:value:0=module_wrapper_2/batch_normalization/ReadVariableOp_1:value:0Lmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Nmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5module_wrapper_2/batch_normalization/FusedBatchNormV3?
&module_wrapper_3/max_pooling2d/MaxPoolMaxPool9module_wrapper_2/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_3/max_pooling2d/MaxPool?
!module_wrapper_4/dropout/IdentityIdentity/module_wrapper_3/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_4/dropout/Identity?
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_5_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype021
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_5/conv2d_2/Conv2DConv2D*module_wrapper_4/dropout/Identity:output:07module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2"
 module_wrapper_5/conv2d_2/Conv2D?
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_5_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_5/conv2d_2/BiasAddBiasAdd)module_wrapper_5/conv2d_2/Conv2D:output:08module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!module_wrapper_5/conv2d_2/BiasAdd?
module_wrapper_5/conv2d_2/ReluRelu*module_wrapper_5/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
module_wrapper_5/conv2d_2/Relu?
5module_wrapper_6/batch_normalization_1/ReadVariableOpReadVariableOp>module_wrapper_6_batch_normalization_1_readvariableop_resource*
_output_shapes	
:?*
dtype027
5module_wrapper_6/batch_normalization_1/ReadVariableOp?
7module_wrapper_6/batch_normalization_1/ReadVariableOp_1ReadVariableOp@module_wrapper_6_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_6/batch_normalization_1/ReadVariableOp_1?
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpOmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpQmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
7module_wrapper_6/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3,module_wrapper_5/conv2d_2/Relu:activations:0=module_wrapper_6/batch_normalization_1/ReadVariableOp:value:0?module_wrapper_6/batch_normalization_1/ReadVariableOp_1:value:0Nmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Pmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 29
7module_wrapper_6/batch_normalization_1/FusedBatchNormV3?
(module_wrapper_7/max_pooling2d_1/MaxPoolMaxPool;module_wrapper_6/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2*
(module_wrapper_7/max_pooling2d_1/MaxPool?
#module_wrapper_8/dropout_1/IdentityIdentity1module_wrapper_7/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_8/dropout_1/Identity?
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_9_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype021
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
 module_wrapper_9/conv2d_3/Conv2DConv2D,module_wrapper_8/dropout_1/Identity:output:07module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2"
 module_wrapper_9/conv2d_3/Conv2D?
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_9_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?
!module_wrapper_9/conv2d_3/BiasAddBiasAdd)module_wrapper_9/conv2d_3/Conv2D:output:08module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!module_wrapper_9/conv2d_3/BiasAdd?
module_wrapper_9/conv2d_3/ReluRelu*module_wrapper_9/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
module_wrapper_9/conv2d_3/Relu?
6module_wrapper_10/batch_normalization_2/ReadVariableOpReadVariableOp?module_wrapper_10_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_10/batch_normalization_2/ReadVariableOp?
8module_wrapper_10/batch_normalization_2/ReadVariableOp_1ReadVariableOpAmodule_wrapper_10_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_10/batch_normalization_2/ReadVariableOp_1?
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpPmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
8module_wrapper_10/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3,module_wrapper_9/conv2d_3/Relu:activations:0>module_wrapper_10/batch_normalization_2/ReadVariableOp:value:0@module_wrapper_10/batch_normalization_2/ReadVariableOp_1:value:0Omodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Qmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2:
8module_wrapper_10/batch_normalization_2/FusedBatchNormV3?
)module_wrapper_11/max_pooling2d_2/MaxPoolMaxPool<module_wrapper_10/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_11/max_pooling2d_2/MaxPool?
$module_wrapper_12/dropout_2/IdentityIdentity2module_wrapper_11/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:??????????2&
$module_wrapper_12/dropout_2/Identity?
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOpReadVariableOp9module_wrapper_13_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?
!module_wrapper_13/conv2d_4/Conv2DConv2D-module_wrapper_12/dropout_2/Identity:output:08module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!module_wrapper_13/conv2d_4/Conv2D?
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:module_wrapper_13_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?
"module_wrapper_13/conv2d_4/BiasAddBiasAdd*module_wrapper_13/conv2d_4/Conv2D:output:09module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"module_wrapper_13/conv2d_4/BiasAdd?
module_wrapper_13/conv2d_4/ReluRelu+module_wrapper_13/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
module_wrapper_13/conv2d_4/Relu?
6module_wrapper_14/batch_normalization_3/ReadVariableOpReadVariableOp?module_wrapper_14_batch_normalization_3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_14/batch_normalization_3/ReadVariableOp?
8module_wrapper_14/batch_normalization_3/ReadVariableOp_1ReadVariableOpAmodule_wrapper_14_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_14/batch_normalization_3/ReadVariableOp_1?
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpPmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
8module_wrapper_14/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3-module_wrapper_13/conv2d_4/Relu:activations:0>module_wrapper_14/batch_normalization_3/ReadVariableOp:value:0@module_wrapper_14/batch_normalization_3/ReadVariableOp_1:value:0Omodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Qmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2:
8module_wrapper_14/batch_normalization_3/FusedBatchNormV3?
)module_wrapper_15/max_pooling2d_3/MaxPoolMaxPool<module_wrapper_14/batch_normalization_3/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_15/max_pooling2d_3/MaxPool?
$module_wrapper_16/dropout_3/IdentityIdentity2module_wrapper_15/max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:??????????2&
$module_wrapper_16/dropout_3/Identity?
module_wrapper_17/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2!
module_wrapper_17/flatten/Const?
!module_wrapper_17/flatten/ReshapeReshape-module_wrapper_16/dropout_3/Identity:output:0(module_wrapper_17/flatten/Const:output:0*
T0*(
_output_shapes
:??????????$2#
!module_wrapper_17/flatten/Reshape?
-module_wrapper_18/dense/MatMul/ReadVariableOpReadVariableOp6module_wrapper_18_dense_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02/
-module_wrapper_18/dense/MatMul/ReadVariableOp?
module_wrapper_18/dense/MatMulMatMul*module_wrapper_17/flatten/Reshape:output:05module_wrapper_18/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_18/dense/MatMul?
.module_wrapper_18/dense/BiasAdd/ReadVariableOpReadVariableOp7module_wrapper_18_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_18/dense/BiasAdd/ReadVariableOp?
module_wrapper_18/dense/BiasAddBiasAdd(module_wrapper_18/dense/MatMul:product:06module_wrapper_18/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
module_wrapper_18/dense/BiasAdd?
module_wrapper_18/dense/ReluRelu(module_wrapper_18/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_18/dense/Relu?
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpImodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?
7module_wrapper_19/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_19/batch_normalization_4/batchnorm/add/y?
5module_wrapper_19/batch_normalization_4/batchnorm/addAddV2Hmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp:value:0@module_wrapper_19/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/add?
7module_wrapper_19/batch_normalization_4/batchnorm/RsqrtRsqrt9module_wrapper_19/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt?
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpMmodule_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?
5module_wrapper_19/batch_normalization_4/batchnorm/mulMul;module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt:y:0Lmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/mul?
7module_wrapper_19/batch_normalization_4/batchnorm/mul_1Mul*module_wrapper_18/dense/Relu:activations:09module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_19/batch_normalization_4/batchnorm/mul_1?
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpKmodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02D
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1?
7module_wrapper_19/batch_normalization_4/batchnorm/mul_2MulJmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1:value:09module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_19/batch_normalization_4/batchnorm/mul_2?
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpKmodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02D
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2?
5module_wrapper_19/batch_normalization_4/batchnorm/subSubJmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2:value:0;module_wrapper_19/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/sub?
7module_wrapper_19/batch_normalization_4/batchnorm/add_1AddV2;module_wrapper_19/batch_normalization_4/batchnorm/mul_1:z:09module_wrapper_19/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_19/batch_normalization_4/batchnorm/add_1?
$module_wrapper_20/dropout_4/IdentityIdentity;module_wrapper_19/batch_normalization_4/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$module_wrapper_20/dropout_4/Identity?
/module_wrapper_21/dense_1/MatMul/ReadVariableOpReadVariableOp8module_wrapper_21_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/module_wrapper_21/dense_1/MatMul/ReadVariableOp?
 module_wrapper_21/dense_1/MatMulMatMul-module_wrapper_20/dropout_4/Identity:output:07module_wrapper_21/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_21/dense_1/MatMul?
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_21_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?
!module_wrapper_21/dense_1/BiasAddBiasAdd*module_wrapper_21/dense_1/MatMul:product:08module_wrapper_21/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_21/dense_1/BiasAdd?
module_wrapper_21/dense_1/ReluRelu*module_wrapper_21/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_21/dense_1/Relu?
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpImodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?
7module_wrapper_22/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_22/batch_normalization_5/batchnorm/add/y?
5module_wrapper_22/batch_normalization_5/batchnorm/addAddV2Hmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp:value:0@module_wrapper_22/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/add?
7module_wrapper_22/batch_normalization_5/batchnorm/RsqrtRsqrt9module_wrapper_22/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt?
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpMmodule_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?
5module_wrapper_22/batch_normalization_5/batchnorm/mulMul;module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt:y:0Lmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/mul?
7module_wrapper_22/batch_normalization_5/batchnorm/mul_1Mul,module_wrapper_21/dense_1/Relu:activations:09module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_22/batch_normalization_5/batchnorm/mul_1?
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpKmodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02D
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1?
7module_wrapper_22/batch_normalization_5/batchnorm/mul_2MulJmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1:value:09module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_22/batch_normalization_5/batchnorm/mul_2?
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpKmodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02D
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2?
5module_wrapper_22/batch_normalization_5/batchnorm/subSubJmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2:value:0;module_wrapper_22/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/sub?
7module_wrapper_22/batch_normalization_5/batchnorm/add_1AddV2;module_wrapper_22/batch_normalization_5/batchnorm/mul_1:z:09module_wrapper_22/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_22/batch_normalization_5/batchnorm/add_1?
$module_wrapper_23/dropout_5/IdentityIdentity;module_wrapper_22/batch_normalization_5/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$module_wrapper_23/dropout_5/Identity?
/module_wrapper_24/dense_2/MatMul/ReadVariableOpReadVariableOp8module_wrapper_24_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_24/dense_2/MatMul/ReadVariableOp?
 module_wrapper_24/dense_2/MatMulMatMul-module_wrapper_23/dropout_5/Identity:output:07module_wrapper_24/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_24/dense_2/MatMul?
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_24_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?
!module_wrapper_24/dense_2/BiasAddBiasAdd*module_wrapper_24/dense_2/MatMul:product:08module_wrapper_24/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_24/dense_2/BiasAdd?
!module_wrapper_24/dense_2/SoftmaxSoftmax*module_wrapper_24/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_24/dense_2/Softmax?
IdentityIdentity+module_wrapper_24/dense_2/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpH^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpJ^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17^module_wrapper_10/batch_normalization_2/ReadVariableOp9^module_wrapper_10/batch_normalization_2/ReadVariableOp_12^module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp1^module_wrapper_13/conv2d_4/Conv2D/ReadVariableOpH^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpJ^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17^module_wrapper_14/batch_normalization_3/ReadVariableOp9^module_wrapper_14/batch_normalization_3/ReadVariableOp_1/^module_wrapper_18/dense/BiasAdd/ReadVariableOp.^module_wrapper_18/dense/MatMul/ReadVariableOpA^module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpC^module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1C^module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2E^module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpE^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpG^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_14^module_wrapper_2/batch_normalization/ReadVariableOp6^module_wrapper_2/batch_normalization/ReadVariableOp_11^module_wrapper_21/dense_1/BiasAdd/ReadVariableOp0^module_wrapper_21/dense_1/MatMul/ReadVariableOpA^module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpC^module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1C^module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2E^module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp1^module_wrapper_24/dense_2/BiasAdd/ReadVariableOp0^module_wrapper_24/dense_2/MatMul/ReadVariableOp1^module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_5/conv2d_2/Conv2D/ReadVariableOpG^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpI^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_16^module_wrapper_6/batch_normalization_1/ReadVariableOp8^module_wrapper_6/batch_normalization_1/ReadVariableOp_11^module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp0^module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2?
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpGmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12p
6module_wrapper_10/batch_normalization_2/ReadVariableOp6module_wrapper_10/batch_normalization_2/ReadVariableOp2t
8module_wrapper_10/batch_normalization_2/ReadVariableOp_18module_wrapper_10/batch_normalization_2/ReadVariableOp_12f
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp2d
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp2?
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpGmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2?
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12p
6module_wrapper_14/batch_normalization_3/ReadVariableOp6module_wrapper_14/batch_normalization_3/ReadVariableOp2t
8module_wrapper_14/batch_normalization_3/ReadVariableOp_18module_wrapper_14/batch_normalization_3/ReadVariableOp_12`
.module_wrapper_18/dense/BiasAdd/ReadVariableOp.module_wrapper_18/dense/BiasAdd/ReadVariableOp2^
-module_wrapper_18/dense/MatMul/ReadVariableOp-module_wrapper_18/dense/MatMul/ReadVariableOp2?
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp2?
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_1Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_12?
Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_2Bmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp_22?
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpDmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp2?
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpDmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp2?
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_12j
3module_wrapper_2/batch_normalization/ReadVariableOp3module_wrapper_2/batch_normalization/ReadVariableOp2n
5module_wrapper_2/batch_normalization/ReadVariableOp_15module_wrapper_2/batch_normalization/ReadVariableOp_12d
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp2b
/module_wrapper_21/dense_1/MatMul/ReadVariableOp/module_wrapper_21/dense_1/MatMul/ReadVariableOp2?
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp2?
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_1Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_12?
Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_2Bmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp_22?
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpDmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp2d
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp2b
/module_wrapper_24/dense_2/MatMul/ReadVariableOp/module_wrapper_24/dense_2/MatMul/ReadVariableOp2d
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp2?
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpFmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12n
5module_wrapper_6/batch_normalization_1/ReadVariableOp5module_wrapper_6/batch_normalization_1/ReadVariableOp2r
7module_wrapper_6/batch_normalization_1/ReadVariableOp_17module_wrapper_6/batch_normalization_1/ReadVariableOp_12d
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp2b
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:e a
/
_output_shapes
:?????????00
.
_user_specified_namemodule_wrapper_input
?
?
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_65146

args_0<
-batch_normalization_2_readvariableop_resource:	?>
/batch_normalization_2_readvariableop_1_resource:	?M
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3?
IdentityIdentity*batch_normalization_2/FusedBatchNormV3:y:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_10_layer_call_fn_65128

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_617532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
5__inference_batch_normalization_2_layer_call_fn_65859

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_630262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
k
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_61341

args_0
identity?w
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_5/dropout/Const?
dropout_5/dropout/MulMulargs_0 dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/dropout/Mulh
dropout_5/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_5/dropout/random_uniform/RandomUniform?
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_5/dropout/GreaterEqual/y?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_5/dropout/GreaterEqual?
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_5/dropout/Cast?
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_5/dropout/Mul_1p
IdentityIdentitydropout_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_66102

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_60991

args_0<
-batch_normalization_2_readvariableop_resource:	?>
/batch_normalization_2_readvariableop_1_resource:	?M
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3args_0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3?
IdentityIdentity*batch_normalization_2/FusedBatchNormV3:y:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_64793

args_0A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_18_layer_call_fn_65400

args_0
unknown:
?$?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_615422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_65468

args_0F
7batch_normalization_4_batchnorm_readvariableop_resource:	?J
;batch_normalization_4_batchnorm_mul_readvariableop_resource:	?H
9batch_normalization_4_batchnorm_readvariableop_1_resource:	?H
9batch_normalization_4_batchnorm_readvariableop_2_resource:	?
identity??.batch_normalization_4/batchnorm/ReadVariableOp?0batch_normalization_4/batchnorm/ReadVariableOp_1?0batch_normalization_4/batchnorm/ReadVariableOp_2?2batch_normalization_4/batchnorm/mul/ReadVariableOp?
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_4/batchnorm/ReadVariableOp?
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_4/batchnorm/add/y?
#batch_normalization_4/batchnorm/addAddV26batch_normalization_4/batchnorm/ReadVariableOp:value:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/add?
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/Rsqrt?
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_4/batchnorm/mul/ReadVariableOp?
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/mul?
%batch_normalization_4/batchnorm/mul_1Mulargs_0'batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/mul_1?
0batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_1?
%batch_normalization_4/batchnorm/mul_2Mul8batch_normalization_4/batchnorm/ReadVariableOp_1:value:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_4/batchnorm/mul_2?
0batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_2?
#batch_normalization_4/batchnorm/subSub8batch_normalization_4/batchnorm/ReadVariableOp_2:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_4/batchnorm/sub?
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_4/batchnorm/add_1?
IdentityIdentity)batch_normalization_4/batchnorm/add_1:z:0/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2d
0batch_normalization_4/batchnorm/ReadVariableOp_10batch_normalization_4/batchnorm/ReadVariableOp_12d
0batch_normalization_4/batchnorm/ReadVariableOp_20batch_normalization_4/batchnorm/ReadVariableOp_22h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_24_layer_call_fn_65694

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_613142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_60832

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_65030

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool}
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_14_layer_call_fn_65264

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_610502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_63304

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?3
E__inference_sequential_layer_call_and_return_conditional_losses_64724
module_wrapper_inputN
4module_wrapper_conv2d_conv2d_readvariableop_resource: C
5module_wrapper_conv2d_biasadd_readvariableop_resource: R
8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: @G
9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource:@J
<module_wrapper_2_batch_normalization_readvariableop_resource:@L
>module_wrapper_2_batch_normalization_readvariableop_1_resource:@[
Mmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource:@]
Omodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@S
8module_wrapper_5_conv2d_2_conv2d_readvariableop_resource:@?H
9module_wrapper_5_conv2d_2_biasadd_readvariableop_resource:	?M
>module_wrapper_6_batch_normalization_1_readvariableop_resource:	?O
@module_wrapper_6_batch_normalization_1_readvariableop_1_resource:	?^
Omodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	?`
Qmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	?T
8module_wrapper_9_conv2d_3_conv2d_readvariableop_resource:??H
9module_wrapper_9_conv2d_3_biasadd_readvariableop_resource:	?N
?module_wrapper_10_batch_normalization_2_readvariableop_resource:	?P
Amodule_wrapper_10_batch_normalization_2_readvariableop_1_resource:	?_
Pmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?a
Rmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?U
9module_wrapper_13_conv2d_4_conv2d_readvariableop_resource:??I
:module_wrapper_13_conv2d_4_biasadd_readvariableop_resource:	?N
?module_wrapper_14_batch_normalization_3_readvariableop_resource:	?P
Amodule_wrapper_14_batch_normalization_3_readvariableop_1_resource:	?_
Pmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	?a
Rmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	?J
6module_wrapper_18_dense_matmul_readvariableop_resource:
?$?F
7module_wrapper_18_dense_biasadd_readvariableop_resource:	?^
Omodule_wrapper_19_batch_normalization_4_assignmovingavg_readvariableop_resource:	?`
Qmodule_wrapper_19_batch_normalization_4_assignmovingavg_1_readvariableop_resource:	?\
Mmodule_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource:	?X
Imodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource:	?L
8module_wrapper_21_dense_1_matmul_readvariableop_resource:
??H
9module_wrapper_21_dense_1_biasadd_readvariableop_resource:	?^
Omodule_wrapper_22_batch_normalization_5_assignmovingavg_readvariableop_resource:	?`
Qmodule_wrapper_22_batch_normalization_5_assignmovingavg_1_readvariableop_resource:	?\
Mmodule_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource:	?X
Imodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource:	?K
8module_wrapper_24_dense_2_matmul_readvariableop_resource:	?G
9module_wrapper_24_dense_2_biasadd_readvariableop_resource:
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?6module_wrapper_10/batch_normalization_2/AssignNewValue?8module_wrapper_10/batch_normalization_2/AssignNewValue_1?Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?6module_wrapper_10/batch_normalization_2/ReadVariableOp?8module_wrapper_10/batch_normalization_2/ReadVariableOp_1?1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?6module_wrapper_14/batch_normalization_3/AssignNewValue?8module_wrapper_14/batch_normalization_3/AssignNewValue_1?Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?6module_wrapper_14/batch_normalization_3/ReadVariableOp?8module_wrapper_14/batch_normalization_3/ReadVariableOp_1?.module_wrapper_18/dense/BiasAdd/ReadVariableOp?-module_wrapper_18/dense/MatMul/ReadVariableOp?7module_wrapper_19/batch_normalization_4/AssignMovingAvg?Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp?9module_wrapper_19/batch_normalization_4/AssignMovingAvg_1?Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?3module_wrapper_2/batch_normalization/AssignNewValue?5module_wrapper_2/batch_normalization/AssignNewValue_1?Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?3module_wrapper_2/batch_normalization/ReadVariableOp?5module_wrapper_2/batch_normalization/ReadVariableOp_1?0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?/module_wrapper_21/dense_1/MatMul/ReadVariableOp?7module_wrapper_22/batch_normalization_5/AssignMovingAvg?Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp?9module_wrapper_22/batch_normalization_5/AssignMovingAvg_1?Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?/module_wrapper_24/dense_2/MatMul/ReadVariableOp?0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?5module_wrapper_6/batch_normalization_1/AssignNewValue?7module_wrapper_6/batch_normalization_1/AssignNewValue_1?Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?5module_wrapper_6/batch_normalization_1/ReadVariableOp?7module_wrapper_6/batch_normalization_1/ReadVariableOp_1?0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
module_wrapper/conv2d/Relu?
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_1/conv2d_1/Conv2DConv2D(module_wrapper/conv2d/Relu:activations:07module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2"
 module_wrapper_1/conv2d_1/Conv2D?
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_1/conv2d_1/BiasAddBiasAdd)module_wrapper_1/conv2d_1/Conv2D:output:08module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2#
!module_wrapper_1/conv2d_1/BiasAdd?
module_wrapper_1/conv2d_1/ReluRelu*module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2 
module_wrapper_1/conv2d_1/Relu?
3module_wrapper_2/batch_normalization/ReadVariableOpReadVariableOp<module_wrapper_2_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype025
3module_wrapper_2/batch_normalization/ReadVariableOp?
5module_wrapper_2/batch_normalization/ReadVariableOp_1ReadVariableOp>module_wrapper_2_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5module_wrapper_2/batch_normalization/ReadVariableOp_1?
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpMmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp?
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
5module_wrapper_2/batch_normalization/FusedBatchNormV3FusedBatchNormV3,module_wrapper_1/conv2d_1/Relu:activations:0;module_wrapper_2/batch_normalization/ReadVariableOp:value:0=module_wrapper_2/batch_normalization/ReadVariableOp_1:value:0Lmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Nmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<27
5module_wrapper_2/batch_normalization/FusedBatchNormV3?
3module_wrapper_2/batch_normalization/AssignNewValueAssignVariableOpMmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_resourceBmodule_wrapper_2/batch_normalization/FusedBatchNormV3:batch_mean:0E^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype025
3module_wrapper_2/batch_normalization/AssignNewValue?
5module_wrapper_2/batch_normalization/AssignNewValue_1AssignVariableOpOmodule_wrapper_2_batch_normalization_fusedbatchnormv3_readvariableop_1_resourceFmodule_wrapper_2/batch_normalization/FusedBatchNormV3:batch_variance:0G^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype027
5module_wrapper_2/batch_normalization/AssignNewValue_1?
&module_wrapper_3/max_pooling2d/MaxPoolMaxPool9module_wrapper_2/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_3/max_pooling2d/MaxPool?
&module_wrapper_4/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2(
&module_wrapper_4/dropout/dropout/Const?
$module_wrapper_4/dropout/dropout/MulMul/module_wrapper_3/max_pooling2d/MaxPool:output:0/module_wrapper_4/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2&
$module_wrapper_4/dropout/dropout/Mul?
&module_wrapper_4/dropout/dropout/ShapeShape/module_wrapper_3/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2(
&module_wrapper_4/dropout/dropout/Shape?
=module_wrapper_4/dropout/dropout/random_uniform/RandomUniformRandomUniform/module_wrapper_4/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02?
=module_wrapper_4/dropout/dropout/random_uniform/RandomUniform?
/module_wrapper_4/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>21
/module_wrapper_4/dropout/dropout/GreaterEqual/y?
-module_wrapper_4/dropout/dropout/GreaterEqualGreaterEqualFmodule_wrapper_4/dropout/dropout/random_uniform/RandomUniform:output:08module_wrapper_4/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2/
-module_wrapper_4/dropout/dropout/GreaterEqual?
%module_wrapper_4/dropout/dropout/CastCast1module_wrapper_4/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2'
%module_wrapper_4/dropout/dropout/Cast?
&module_wrapper_4/dropout/dropout/Mul_1Mul(module_wrapper_4/dropout/dropout/Mul:z:0)module_wrapper_4/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2(
&module_wrapper_4/dropout/dropout/Mul_1?
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_5_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype021
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_5/conv2d_2/Conv2DConv2D*module_wrapper_4/dropout/dropout/Mul_1:z:07module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2"
 module_wrapper_5/conv2d_2/Conv2D?
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_5_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_5/conv2d_2/BiasAddBiasAdd)module_wrapper_5/conv2d_2/Conv2D:output:08module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!module_wrapper_5/conv2d_2/BiasAdd?
module_wrapper_5/conv2d_2/ReluRelu*module_wrapper_5/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
module_wrapper_5/conv2d_2/Relu?
5module_wrapper_6/batch_normalization_1/ReadVariableOpReadVariableOp>module_wrapper_6_batch_normalization_1_readvariableop_resource*
_output_shapes	
:?*
dtype027
5module_wrapper_6/batch_normalization_1/ReadVariableOp?
7module_wrapper_6/batch_normalization_1/ReadVariableOp_1ReadVariableOp@module_wrapper_6_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_6/batch_normalization_1/ReadVariableOp_1?
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpOmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpQmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
7module_wrapper_6/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3,module_wrapper_5/conv2d_2/Relu:activations:0=module_wrapper_6/batch_normalization_1/ReadVariableOp:value:0?module_wrapper_6/batch_normalization_1/ReadVariableOp_1:value:0Nmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Pmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<29
7module_wrapper_6/batch_normalization_1/FusedBatchNormV3?
5module_wrapper_6/batch_normalization_1/AssignNewValueAssignVariableOpOmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceDmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3:batch_mean:0G^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype027
5module_wrapper_6/batch_normalization_1/AssignNewValue?
7module_wrapper_6/batch_normalization_1/AssignNewValue_1AssignVariableOpQmodule_wrapper_6_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceHmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3:batch_variance:0I^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype029
7module_wrapper_6/batch_normalization_1/AssignNewValue_1?
(module_wrapper_7/max_pooling2d_1/MaxPoolMaxPool;module_wrapper_6/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2*
(module_wrapper_7/max_pooling2d_1/MaxPool?
(module_wrapper_8/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2*
(module_wrapper_8/dropout_1/dropout/Const?
&module_wrapper_8/dropout_1/dropout/MulMul1module_wrapper_7/max_pooling2d_1/MaxPool:output:01module_wrapper_8/dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2(
&module_wrapper_8/dropout_1/dropout/Mul?
(module_wrapper_8/dropout_1/dropout/ShapeShape1module_wrapper_7/max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2*
(module_wrapper_8/dropout_1/dropout/Shape?
?module_wrapper_8/dropout_1/dropout/random_uniform/RandomUniformRandomUniform1module_wrapper_8/dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02A
?module_wrapper_8/dropout_1/dropout/random_uniform/RandomUniform?
1module_wrapper_8/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>23
1module_wrapper_8/dropout_1/dropout/GreaterEqual/y?
/module_wrapper_8/dropout_1/dropout/GreaterEqualGreaterEqualHmodule_wrapper_8/dropout_1/dropout/random_uniform/RandomUniform:output:0:module_wrapper_8/dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????21
/module_wrapper_8/dropout_1/dropout/GreaterEqual?
'module_wrapper_8/dropout_1/dropout/CastCast3module_wrapper_8/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2)
'module_wrapper_8/dropout_1/dropout/Cast?
(module_wrapper_8/dropout_1/dropout/Mul_1Mul*module_wrapper_8/dropout_1/dropout/Mul:z:0+module_wrapper_8/dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2*
(module_wrapper_8/dropout_1/dropout/Mul_1?
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_9_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype021
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp?
 module_wrapper_9/conv2d_3/Conv2DConv2D,module_wrapper_8/dropout_1/dropout/Mul_1:z:07module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2"
 module_wrapper_9/conv2d_3/Conv2D?
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_9_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp?
!module_wrapper_9/conv2d_3/BiasAddBiasAdd)module_wrapper_9/conv2d_3/Conv2D:output:08module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!module_wrapper_9/conv2d_3/BiasAdd?
module_wrapper_9/conv2d_3/ReluRelu*module_wrapper_9/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
module_wrapper_9/conv2d_3/Relu?
6module_wrapper_10/batch_normalization_2/ReadVariableOpReadVariableOp?module_wrapper_10_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_10/batch_normalization_2/ReadVariableOp?
8module_wrapper_10/batch_normalization_2/ReadVariableOp_1ReadVariableOpAmodule_wrapper_10_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_10/batch_normalization_2/ReadVariableOp_1?
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpPmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
8module_wrapper_10/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3,module_wrapper_9/conv2d_3/Relu:activations:0>module_wrapper_10/batch_normalization_2/ReadVariableOp:value:0@module_wrapper_10/batch_normalization_2/ReadVariableOp_1:value:0Omodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Qmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2:
8module_wrapper_10/batch_normalization_2/FusedBatchNormV3?
6module_wrapper_10/batch_normalization_2/AssignNewValueAssignVariableOpPmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceEmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3:batch_mean:0H^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype028
6module_wrapper_10/batch_normalization_2/AssignNewValue?
8module_wrapper_10/batch_normalization_2/AssignNewValue_1AssignVariableOpRmodule_wrapper_10_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceImodule_wrapper_10/batch_normalization_2/FusedBatchNormV3:batch_variance:0J^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02:
8module_wrapper_10/batch_normalization_2/AssignNewValue_1?
)module_wrapper_11/max_pooling2d_2/MaxPoolMaxPool<module_wrapper_10/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_11/max_pooling2d_2/MaxPool?
)module_wrapper_12/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)module_wrapper_12/dropout_2/dropout/Const?
'module_wrapper_12/dropout_2/dropout/MulMul2module_wrapper_11/max_pooling2d_2/MaxPool:output:02module_wrapper_12/dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2)
'module_wrapper_12/dropout_2/dropout/Mul?
)module_wrapper_12/dropout_2/dropout/ShapeShape2module_wrapper_11/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2+
)module_wrapper_12/dropout_2/dropout/Shape?
@module_wrapper_12/dropout_2/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_12/dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02B
@module_wrapper_12/dropout_2/dropout/random_uniform/RandomUniform?
2module_wrapper_12/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>24
2module_wrapper_12/dropout_2/dropout/GreaterEqual/y?
0module_wrapper_12/dropout_2/dropout/GreaterEqualGreaterEqualImodule_wrapper_12/dropout_2/dropout/random_uniform/RandomUniform:output:0;module_wrapper_12/dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????22
0module_wrapper_12/dropout_2/dropout/GreaterEqual?
(module_wrapper_12/dropout_2/dropout/CastCast4module_wrapper_12/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2*
(module_wrapper_12/dropout_2/dropout/Cast?
)module_wrapper_12/dropout_2/dropout/Mul_1Mul+module_wrapper_12/dropout_2/dropout/Mul:z:0,module_wrapper_12/dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2+
)module_wrapper_12/dropout_2/dropout/Mul_1?
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOpReadVariableOp9module_wrapper_13_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp?
!module_wrapper_13/conv2d_4/Conv2DConv2D-module_wrapper_12/dropout_2/dropout/Mul_1:z:08module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!module_wrapper_13/conv2d_4/Conv2D?
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:module_wrapper_13_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp?
"module_wrapper_13/conv2d_4/BiasAddBiasAdd*module_wrapper_13/conv2d_4/Conv2D:output:09module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"module_wrapper_13/conv2d_4/BiasAdd?
module_wrapper_13/conv2d_4/ReluRelu+module_wrapper_13/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
module_wrapper_13/conv2d_4/Relu?
6module_wrapper_14/batch_normalization_3/ReadVariableOpReadVariableOp?module_wrapper_14_batch_normalization_3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_14/batch_normalization_3/ReadVariableOp?
8module_wrapper_14/batch_normalization_3/ReadVariableOp_1ReadVariableOpAmodule_wrapper_14_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_14/batch_normalization_3/ReadVariableOp_1?
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpPmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
8module_wrapper_14/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3-module_wrapper_13/conv2d_4/Relu:activations:0>module_wrapper_14/batch_normalization_3/ReadVariableOp:value:0@module_wrapper_14/batch_normalization_3/ReadVariableOp_1:value:0Omodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Qmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2:
8module_wrapper_14/batch_normalization_3/FusedBatchNormV3?
6module_wrapper_14/batch_normalization_3/AssignNewValueAssignVariableOpPmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_resourceEmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3:batch_mean:0H^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype028
6module_wrapper_14/batch_normalization_3/AssignNewValue?
8module_wrapper_14/batch_normalization_3/AssignNewValue_1AssignVariableOpRmodule_wrapper_14_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resourceImodule_wrapper_14/batch_normalization_3/FusedBatchNormV3:batch_variance:0J^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02:
8module_wrapper_14/batch_normalization_3/AssignNewValue_1?
)module_wrapper_15/max_pooling2d_3/MaxPoolMaxPool<module_wrapper_14/batch_normalization_3/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_15/max_pooling2d_3/MaxPool?
)module_wrapper_16/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)module_wrapper_16/dropout_3/dropout/Const?
'module_wrapper_16/dropout_3/dropout/MulMul2module_wrapper_15/max_pooling2d_3/MaxPool:output:02module_wrapper_16/dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2)
'module_wrapper_16/dropout_3/dropout/Mul?
)module_wrapper_16/dropout_3/dropout/ShapeShape2module_wrapper_15/max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:2+
)module_wrapper_16/dropout_3/dropout/Shape?
@module_wrapper_16/dropout_3/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_16/dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02B
@module_wrapper_16/dropout_3/dropout/random_uniform/RandomUniform?
2module_wrapper_16/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>24
2module_wrapper_16/dropout_3/dropout/GreaterEqual/y?
0module_wrapper_16/dropout_3/dropout/GreaterEqualGreaterEqualImodule_wrapper_16/dropout_3/dropout/random_uniform/RandomUniform:output:0;module_wrapper_16/dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????22
0module_wrapper_16/dropout_3/dropout/GreaterEqual?
(module_wrapper_16/dropout_3/dropout/CastCast4module_wrapper_16/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2*
(module_wrapper_16/dropout_3/dropout/Cast?
)module_wrapper_16/dropout_3/dropout/Mul_1Mul+module_wrapper_16/dropout_3/dropout/Mul:z:0,module_wrapper_16/dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2+
)module_wrapper_16/dropout_3/dropout/Mul_1?
module_wrapper_17/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2!
module_wrapper_17/flatten/Const?
!module_wrapper_17/flatten/ReshapeReshape-module_wrapper_16/dropout_3/dropout/Mul_1:z:0(module_wrapper_17/flatten/Const:output:0*
T0*(
_output_shapes
:??????????$2#
!module_wrapper_17/flatten/Reshape?
-module_wrapper_18/dense/MatMul/ReadVariableOpReadVariableOp6module_wrapper_18_dense_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02/
-module_wrapper_18/dense/MatMul/ReadVariableOp?
module_wrapper_18/dense/MatMulMatMul*module_wrapper_17/flatten/Reshape:output:05module_wrapper_18/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_18/dense/MatMul?
.module_wrapper_18/dense/BiasAdd/ReadVariableOpReadVariableOp7module_wrapper_18_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_18/dense/BiasAdd/ReadVariableOp?
module_wrapper_18/dense/BiasAddBiasAdd(module_wrapper_18/dense/MatMul:product:06module_wrapper_18/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
module_wrapper_18/dense/BiasAdd?
module_wrapper_18/dense/ReluRelu(module_wrapper_18/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_18/dense/Relu?
Fmodule_wrapper_19/batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fmodule_wrapper_19/batch_normalization_4/moments/mean/reduction_indices?
4module_wrapper_19/batch_normalization_4/moments/meanMean*module_wrapper_18/dense/Relu:activations:0Omodule_wrapper_19/batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(26
4module_wrapper_19/batch_normalization_4/moments/mean?
<module_wrapper_19/batch_normalization_4/moments/StopGradientStopGradient=module_wrapper_19/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:	?2>
<module_wrapper_19/batch_normalization_4/moments/StopGradient?
Amodule_wrapper_19/batch_normalization_4/moments/SquaredDifferenceSquaredDifference*module_wrapper_18/dense/Relu:activations:0Emodule_wrapper_19/batch_normalization_4/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2C
Amodule_wrapper_19/batch_normalization_4/moments/SquaredDifference?
Jmodule_wrapper_19/batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2L
Jmodule_wrapper_19/batch_normalization_4/moments/variance/reduction_indices?
8module_wrapper_19/batch_normalization_4/moments/varianceMeanEmodule_wrapper_19/batch_normalization_4/moments/SquaredDifference:z:0Smodule_wrapper_19/batch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2:
8module_wrapper_19/batch_normalization_4/moments/variance?
7module_wrapper_19/batch_normalization_4/moments/SqueezeSqueeze=module_wrapper_19/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 29
7module_wrapper_19/batch_normalization_4/moments/Squeeze?
9module_wrapper_19/batch_normalization_4/moments/Squeeze_1SqueezeAmodule_wrapper_19/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2;
9module_wrapper_19/batch_normalization_4/moments/Squeeze_1?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg/decay?
Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOpOmodule_wrapper_19_batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp?
;module_wrapper_19/batch_normalization_4/AssignMovingAvg/subSubNmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0@module_wrapper_19/batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2=
;module_wrapper_19/batch_normalization_4/AssignMovingAvg/sub?
;module_wrapper_19/batch_normalization_4/AssignMovingAvg/mulMul?module_wrapper_19/batch_normalization_4/AssignMovingAvg/sub:z:0Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2=
;module_wrapper_19/batch_normalization_4/AssignMovingAvg/mul?
7module_wrapper_19/batch_normalization_4/AssignMovingAvgAssignSubVariableOpOmodule_wrapper_19_batch_normalization_4_assignmovingavg_readvariableop_resource?module_wrapper_19/batch_normalization_4/AssignMovingAvg/mul:z:0G^module_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_19/batch_normalization_4/AssignMovingAvg?
?module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2A
?module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/decay?
Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOpQmodule_wrapper_19_batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/subSubPmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:0Bmodule_wrapper_19/batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/sub?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/mulMulAmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/sub:z:0Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2?
=module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/mul?
9module_wrapper_19/batch_normalization_4/AssignMovingAvg_1AssignSubVariableOpQmodule_wrapper_19_batch_normalization_4_assignmovingavg_1_readvariableop_resourceAmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/mul:z:0I^module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02;
9module_wrapper_19/batch_normalization_4/AssignMovingAvg_1?
7module_wrapper_19/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_19/batch_normalization_4/batchnorm/add/y?
5module_wrapper_19/batch_normalization_4/batchnorm/addAddV2Bmodule_wrapper_19/batch_normalization_4/moments/Squeeze_1:output:0@module_wrapper_19/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/add?
7module_wrapper_19/batch_normalization_4/batchnorm/RsqrtRsqrt9module_wrapper_19/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt?
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpMmodule_wrapper_19_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp?
5module_wrapper_19/batch_normalization_4/batchnorm/mulMul;module_wrapper_19/batch_normalization_4/batchnorm/Rsqrt:y:0Lmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/mul?
7module_wrapper_19/batch_normalization_4/batchnorm/mul_1Mul*module_wrapper_18/dense/Relu:activations:09module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_19/batch_normalization_4/batchnorm/mul_1?
7module_wrapper_19/batch_normalization_4/batchnorm/mul_2Mul@module_wrapper_19/batch_normalization_4/moments/Squeeze:output:09module_wrapper_19/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_19/batch_normalization_4/batchnorm/mul_2?
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpImodule_wrapper_19_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp?
5module_wrapper_19/batch_normalization_4/batchnorm/subSubHmodule_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp:value:0;module_wrapper_19/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?27
5module_wrapper_19/batch_normalization_4/batchnorm/sub?
7module_wrapper_19/batch_normalization_4/batchnorm/add_1AddV2;module_wrapper_19/batch_normalization_4/batchnorm/mul_1:z:09module_wrapper_19/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_19/batch_normalization_4/batchnorm/add_1?
)module_wrapper_20/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)module_wrapper_20/dropout_4/dropout/Const?
'module_wrapper_20/dropout_4/dropout/MulMul;module_wrapper_19/batch_normalization_4/batchnorm/add_1:z:02module_wrapper_20/dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2)
'module_wrapper_20/dropout_4/dropout/Mul?
)module_wrapper_20/dropout_4/dropout/ShapeShape;module_wrapper_19/batch_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:2+
)module_wrapper_20/dropout_4/dropout/Shape?
@module_wrapper_20/dropout_4/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_20/dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02B
@module_wrapper_20/dropout_4/dropout/random_uniform/RandomUniform?
2module_wrapper_20/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>24
2module_wrapper_20/dropout_4/dropout/GreaterEqual/y?
0module_wrapper_20/dropout_4/dropout/GreaterEqualGreaterEqualImodule_wrapper_20/dropout_4/dropout/random_uniform/RandomUniform:output:0;module_wrapper_20/dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????22
0module_wrapper_20/dropout_4/dropout/GreaterEqual?
(module_wrapper_20/dropout_4/dropout/CastCast4module_wrapper_20/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2*
(module_wrapper_20/dropout_4/dropout/Cast?
)module_wrapper_20/dropout_4/dropout/Mul_1Mul+module_wrapper_20/dropout_4/dropout/Mul:z:0,module_wrapper_20/dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2+
)module_wrapper_20/dropout_4/dropout/Mul_1?
/module_wrapper_21/dense_1/MatMul/ReadVariableOpReadVariableOp8module_wrapper_21_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/module_wrapper_21/dense_1/MatMul/ReadVariableOp?
 module_wrapper_21/dense_1/MatMulMatMul-module_wrapper_20/dropout_4/dropout/Mul_1:z:07module_wrapper_21/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_21/dense_1/MatMul?
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_21_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp?
!module_wrapper_21/dense_1/BiasAddBiasAdd*module_wrapper_21/dense_1/MatMul:product:08module_wrapper_21/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_21/dense_1/BiasAdd?
module_wrapper_21/dense_1/ReluRelu*module_wrapper_21/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_21/dense_1/Relu?
Fmodule_wrapper_22/batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fmodule_wrapper_22/batch_normalization_5/moments/mean/reduction_indices?
4module_wrapper_22/batch_normalization_5/moments/meanMean,module_wrapper_21/dense_1/Relu:activations:0Omodule_wrapper_22/batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(26
4module_wrapper_22/batch_normalization_5/moments/mean?
<module_wrapper_22/batch_normalization_5/moments/StopGradientStopGradient=module_wrapper_22/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:	?2>
<module_wrapper_22/batch_normalization_5/moments/StopGradient?
Amodule_wrapper_22/batch_normalization_5/moments/SquaredDifferenceSquaredDifference,module_wrapper_21/dense_1/Relu:activations:0Emodule_wrapper_22/batch_normalization_5/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2C
Amodule_wrapper_22/batch_normalization_5/moments/SquaredDifference?
Jmodule_wrapper_22/batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2L
Jmodule_wrapper_22/batch_normalization_5/moments/variance/reduction_indices?
8module_wrapper_22/batch_normalization_5/moments/varianceMeanEmodule_wrapper_22/batch_normalization_5/moments/SquaredDifference:z:0Smodule_wrapper_22/batch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2:
8module_wrapper_22/batch_normalization_5/moments/variance?
7module_wrapper_22/batch_normalization_5/moments/SqueezeSqueeze=module_wrapper_22/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 29
7module_wrapper_22/batch_normalization_5/moments/Squeeze?
9module_wrapper_22/batch_normalization_5/moments/Squeeze_1SqueezeAmodule_wrapper_22/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2;
9module_wrapper_22/batch_normalization_5/moments/Squeeze_1?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg/decay?
Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOpOmodule_wrapper_22_batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp?
;module_wrapper_22/batch_normalization_5/AssignMovingAvg/subSubNmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0@module_wrapper_22/batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2=
;module_wrapper_22/batch_normalization_5/AssignMovingAvg/sub?
;module_wrapper_22/batch_normalization_5/AssignMovingAvg/mulMul?module_wrapper_22/batch_normalization_5/AssignMovingAvg/sub:z:0Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2=
;module_wrapper_22/batch_normalization_5/AssignMovingAvg/mul?
7module_wrapper_22/batch_normalization_5/AssignMovingAvgAssignSubVariableOpOmodule_wrapper_22_batch_normalization_5_assignmovingavg_readvariableop_resource?module_wrapper_22/batch_normalization_5/AssignMovingAvg/mul:z:0G^module_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_22/batch_normalization_5/AssignMovingAvg?
?module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2A
?module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/decay?
Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOpQmodule_wrapper_22_batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/subSubPmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:0Bmodule_wrapper_22/batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/sub?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/mulMulAmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/sub:z:0Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2?
=module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/mul?
9module_wrapper_22/batch_normalization_5/AssignMovingAvg_1AssignSubVariableOpQmodule_wrapper_22_batch_normalization_5_assignmovingavg_1_readvariableop_resourceAmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/mul:z:0I^module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02;
9module_wrapper_22/batch_normalization_5/AssignMovingAvg_1?
7module_wrapper_22/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:29
7module_wrapper_22/batch_normalization_5/batchnorm/add/y?
5module_wrapper_22/batch_normalization_5/batchnorm/addAddV2Bmodule_wrapper_22/batch_normalization_5/moments/Squeeze_1:output:0@module_wrapper_22/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/add?
7module_wrapper_22/batch_normalization_5/batchnorm/RsqrtRsqrt9module_wrapper_22/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt?
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpMmodule_wrapper_22_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp?
5module_wrapper_22/batch_normalization_5/batchnorm/mulMul;module_wrapper_22/batch_normalization_5/batchnorm/Rsqrt:y:0Lmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/mul?
7module_wrapper_22/batch_normalization_5/batchnorm/mul_1Mul,module_wrapper_21/dense_1/Relu:activations:09module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_22/batch_normalization_5/batchnorm/mul_1?
7module_wrapper_22/batch_normalization_5/batchnorm/mul_2Mul@module_wrapper_22/batch_normalization_5/moments/Squeeze:output:09module_wrapper_22/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:?29
7module_wrapper_22/batch_normalization_5/batchnorm/mul_2?
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpImodule_wrapper_22_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp?
5module_wrapper_22/batch_normalization_5/batchnorm/subSubHmodule_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp:value:0;module_wrapper_22/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?27
5module_wrapper_22/batch_normalization_5/batchnorm/sub?
7module_wrapper_22/batch_normalization_5/batchnorm/add_1AddV2;module_wrapper_22/batch_normalization_5/batchnorm/mul_1:z:09module_wrapper_22/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_22/batch_normalization_5/batchnorm/add_1?
)module_wrapper_23/dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)module_wrapper_23/dropout_5/dropout/Const?
'module_wrapper_23/dropout_5/dropout/MulMul;module_wrapper_22/batch_normalization_5/batchnorm/add_1:z:02module_wrapper_23/dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2)
'module_wrapper_23/dropout_5/dropout/Mul?
)module_wrapper_23/dropout_5/dropout/ShapeShape;module_wrapper_22/batch_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:2+
)module_wrapper_23/dropout_5/dropout/Shape?
@module_wrapper_23/dropout_5/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_23/dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02B
@module_wrapper_23/dropout_5/dropout/random_uniform/RandomUniform?
2module_wrapper_23/dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>24
2module_wrapper_23/dropout_5/dropout/GreaterEqual/y?
0module_wrapper_23/dropout_5/dropout/GreaterEqualGreaterEqualImodule_wrapper_23/dropout_5/dropout/random_uniform/RandomUniform:output:0;module_wrapper_23/dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????22
0module_wrapper_23/dropout_5/dropout/GreaterEqual?
(module_wrapper_23/dropout_5/dropout/CastCast4module_wrapper_23/dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2*
(module_wrapper_23/dropout_5/dropout/Cast?
)module_wrapper_23/dropout_5/dropout/Mul_1Mul+module_wrapper_23/dropout_5/dropout/Mul:z:0,module_wrapper_23/dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2+
)module_wrapper_23/dropout_5/dropout/Mul_1?
/module_wrapper_24/dense_2/MatMul/ReadVariableOpReadVariableOp8module_wrapper_24_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_24/dense_2/MatMul/ReadVariableOp?
 module_wrapper_24/dense_2/MatMulMatMul-module_wrapper_23/dropout_5/dropout/Mul_1:z:07module_wrapper_24/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_24/dense_2/MatMul?
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_24_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp?
!module_wrapper_24/dense_2/BiasAddBiasAdd*module_wrapper_24/dense_2/MatMul:product:08module_wrapper_24/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_24/dense_2/BiasAdd?
!module_wrapper_24/dense_2/SoftmaxSoftmax*module_wrapper_24/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_24/dense_2/Softmax?
IdentityIdentity+module_wrapper_24/dense_2/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp7^module_wrapper_10/batch_normalization_2/AssignNewValue9^module_wrapper_10/batch_normalization_2/AssignNewValue_1H^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpJ^module_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17^module_wrapper_10/batch_normalization_2/ReadVariableOp9^module_wrapper_10/batch_normalization_2/ReadVariableOp_12^module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp1^module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp7^module_wrapper_14/batch_normalization_3/AssignNewValue9^module_wrapper_14/batch_normalization_3/AssignNewValue_1H^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpJ^module_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17^module_wrapper_14/batch_normalization_3/ReadVariableOp9^module_wrapper_14/batch_normalization_3/ReadVariableOp_1/^module_wrapper_18/dense/BiasAdd/ReadVariableOp.^module_wrapper_18/dense/MatMul/ReadVariableOp8^module_wrapper_19/batch_normalization_4/AssignMovingAvgG^module_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp:^module_wrapper_19/batch_normalization_4/AssignMovingAvg_1I^module_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpA^module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOpE^module_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp4^module_wrapper_2/batch_normalization/AssignNewValue6^module_wrapper_2/batch_normalization/AssignNewValue_1E^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpG^module_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_14^module_wrapper_2/batch_normalization/ReadVariableOp6^module_wrapper_2/batch_normalization/ReadVariableOp_11^module_wrapper_21/dense_1/BiasAdd/ReadVariableOp0^module_wrapper_21/dense_1/MatMul/ReadVariableOp8^module_wrapper_22/batch_normalization_5/AssignMovingAvgG^module_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp:^module_wrapper_22/batch_normalization_5/AssignMovingAvg_1I^module_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpA^module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOpE^module_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp1^module_wrapper_24/dense_2/BiasAdd/ReadVariableOp0^module_wrapper_24/dense_2/MatMul/ReadVariableOp1^module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp6^module_wrapper_6/batch_normalization_1/AssignNewValue8^module_wrapper_6/batch_normalization_1/AssignNewValue_1G^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpI^module_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_16^module_wrapper_6/batch_normalization_1/ReadVariableOp8^module_wrapper_6/batch_normalization_1/ReadVariableOp_11^module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp0^module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2p
6module_wrapper_10/batch_normalization_2/AssignNewValue6module_wrapper_10/batch_normalization_2/AssignNewValue2t
8module_wrapper_10/batch_normalization_2/AssignNewValue_18module_wrapper_10/batch_normalization_2/AssignNewValue_12?
Gmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOpGmodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Imodule_wrapper_10/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12p
6module_wrapper_10/batch_normalization_2/ReadVariableOp6module_wrapper_10/batch_normalization_2/ReadVariableOp2t
8module_wrapper_10/batch_normalization_2/ReadVariableOp_18module_wrapper_10/batch_normalization_2/ReadVariableOp_12f
1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp1module_wrapper_13/conv2d_4/BiasAdd/ReadVariableOp2d
0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp0module_wrapper_13/conv2d_4/Conv2D/ReadVariableOp2p
6module_wrapper_14/batch_normalization_3/AssignNewValue6module_wrapper_14/batch_normalization_3/AssignNewValue2t
8module_wrapper_14/batch_normalization_3/AssignNewValue_18module_wrapper_14/batch_normalization_3/AssignNewValue_12?
Gmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOpGmodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2?
Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Imodule_wrapper_14/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12p
6module_wrapper_14/batch_normalization_3/ReadVariableOp6module_wrapper_14/batch_normalization_3/ReadVariableOp2t
8module_wrapper_14/batch_normalization_3/ReadVariableOp_18module_wrapper_14/batch_normalization_3/ReadVariableOp_12`
.module_wrapper_18/dense/BiasAdd/ReadVariableOp.module_wrapper_18/dense/BiasAdd/ReadVariableOp2^
-module_wrapper_18/dense/MatMul/ReadVariableOp-module_wrapper_18/dense/MatMul/ReadVariableOp2r
7module_wrapper_19/batch_normalization_4/AssignMovingAvg7module_wrapper_19/batch_normalization_4/AssignMovingAvg2?
Fmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOpFmodule_wrapper_19/batch_normalization_4/AssignMovingAvg/ReadVariableOp2v
9module_wrapper_19/batch_normalization_4/AssignMovingAvg_19module_wrapper_19/batch_normalization_4/AssignMovingAvg_12?
Hmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpHmodule_wrapper_19/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2?
@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp@module_wrapper_19/batch_normalization_4/batchnorm/ReadVariableOp2?
Dmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOpDmodule_wrapper_19/batch_normalization_4/batchnorm/mul/ReadVariableOp2j
3module_wrapper_2/batch_normalization/AssignNewValue3module_wrapper_2/batch_normalization/AssignNewValue2n
5module_wrapper_2/batch_normalization/AssignNewValue_15module_wrapper_2/batch_normalization/AssignNewValue_12?
Dmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOpDmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp2?
Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Fmodule_wrapper_2/batch_normalization/FusedBatchNormV3/ReadVariableOp_12j
3module_wrapper_2/batch_normalization/ReadVariableOp3module_wrapper_2/batch_normalization/ReadVariableOp2n
5module_wrapper_2/batch_normalization/ReadVariableOp_15module_wrapper_2/batch_normalization/ReadVariableOp_12d
0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp0module_wrapper_21/dense_1/BiasAdd/ReadVariableOp2b
/module_wrapper_21/dense_1/MatMul/ReadVariableOp/module_wrapper_21/dense_1/MatMul/ReadVariableOp2r
7module_wrapper_22/batch_normalization_5/AssignMovingAvg7module_wrapper_22/batch_normalization_5/AssignMovingAvg2?
Fmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOpFmodule_wrapper_22/batch_normalization_5/AssignMovingAvg/ReadVariableOp2v
9module_wrapper_22/batch_normalization_5/AssignMovingAvg_19module_wrapper_22/batch_normalization_5/AssignMovingAvg_12?
Hmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpHmodule_wrapper_22/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2?
@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp@module_wrapper_22/batch_normalization_5/batchnorm/ReadVariableOp2?
Dmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOpDmodule_wrapper_22/batch_normalization_5/batchnorm/mul/ReadVariableOp2d
0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp0module_wrapper_24/dense_2/BiasAdd/ReadVariableOp2b
/module_wrapper_24/dense_2/MatMul/ReadVariableOp/module_wrapper_24/dense_2/MatMul/ReadVariableOp2d
0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_5/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_5/conv2d_2/Conv2D/ReadVariableOp2n
5module_wrapper_6/batch_normalization_1/AssignNewValue5module_wrapper_6/batch_normalization_1/AssignNewValue2r
7module_wrapper_6/batch_normalization_1/AssignNewValue_17module_wrapper_6/batch_normalization_1/AssignNewValue_12?
Fmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOpFmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Hmodule_wrapper_6/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12n
5module_wrapper_6/batch_normalization_1/ReadVariableOp5module_wrapper_6/batch_normalization_1/ReadVariableOp2r
7module_wrapper_6/batch_normalization_1/ReadVariableOp_17module_wrapper_6/batch_normalization_1/ReadVariableOp_12d
0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp0module_wrapper_9/conv2d_3/BiasAdd/ReadVariableOp2b
/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp/module_wrapper_9/conv2d_3/Conv2D/ReadVariableOp:e a
/
_output_shapes
:?????????00
.
_user_specified_namemodule_wrapper_input
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_63164

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?	
*__inference_sequential_layer_call_fn_63774

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?&

unknown_13:??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
?$?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?

unknown_31:
??

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_612082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
L
0__inference_module_wrapper_3_layer_call_fn_64876

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_619442
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????00@:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_65705

args_09
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulargs_0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_15_layer_call_fn_65318

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_610652
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_60947

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool}
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_65199

args_0
identityw
dropout_2/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_2/Identityx
IdentityIdentitydropout_2/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_61586

args_0
identity?w
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_3/dropout/Const?
dropout_3/dropout/MulMulargs_0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_3/dropout/Mulh
dropout_3/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_3/dropout/Mul_1x
IdentityIdentitydropout_3/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_65569

args_0:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
IdentityIdentitydense_1/Relu:activations:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_19_layer_call_fn_65435

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_611192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_63136

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_61981

args_09
+batch_normalization_readvariableop_resource:@;
-batch_normalization_readvariableop_1_resource:@J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:@L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@
identity??"batch_normalization/AssignNewValue?$batch_normalization/AssignNewValue_1?3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02$
"batch_normalization/ReadVariableOp?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02&
$batch_normalization/ReadVariableOp_1?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3args_0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2&
$batch_normalization/FusedBatchNormV3?
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue?
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02&
$batch_normalization/AssignNewValue_1?
IdentityIdentity(batch_normalization/FusedBatchNormV3:y:0#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_64848

args_09
+batch_normalization_readvariableop_resource:@;
-batch_normalization_readvariableop_1_resource:@J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:@L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@
identity??3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02$
"batch_normalization/ReadVariableOp?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02&
$batch_normalization/ReadVariableOp_1?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3args_0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2&
$batch_normalization/FusedBatchNormV3?
IdentityIdentity(batch_normalization/FusedBatchNormV3:y:04^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
.__inference_module_wrapper_layer_call_fn_64742

args_0!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_620452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_65035

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool}
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_61134

args_0
identityo
dropout_4/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_4/Identityp
IdentityIdentitydropout_4/Identity:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_65760

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_65240

args_0C
'conv2d_4_conv2d_readvariableop_resource:??7
(conv2d_4_biasadd_readvariableop_resource:	?
identity??conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2Dargs_0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_4/Conv2D?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_4/Relu?
IdentityIdentityconv2d_4/Relu:activations:0 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_62794

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
g
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_61830

args_0
identity?
max_pooling2d_1/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool}
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_65411

args_08
$dense_matmul_readvariableop_resource:
?$?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_61208

inputs.
module_wrapper_60833: "
module_wrapper_60835: 0
module_wrapper_1_60850: @$
module_wrapper_1_60852:@$
module_wrapper_2_60874:@$
module_wrapper_2_60876:@$
module_wrapper_2_60878:@$
module_wrapper_2_60880:@1
module_wrapper_5_60909:@?%
module_wrapper_5_60911:	?%
module_wrapper_6_60933:	?%
module_wrapper_6_60935:	?%
module_wrapper_6_60937:	?%
module_wrapper_6_60939:	?2
module_wrapper_9_60968:??%
module_wrapper_9_60970:	?&
module_wrapper_10_60992:	?&
module_wrapper_10_60994:	?&
module_wrapper_10_60996:	?&
module_wrapper_10_60998:	?3
module_wrapper_13_61027:??&
module_wrapper_13_61029:	?&
module_wrapper_14_61051:	?&
module_wrapper_14_61053:	?&
module_wrapper_14_61055:	?&
module_wrapper_14_61057:	?+
module_wrapper_18_61094:
?$?&
module_wrapper_18_61096:	?&
module_wrapper_19_61120:	?&
module_wrapper_19_61122:	?&
module_wrapper_19_61124:	?&
module_wrapper_19_61126:	?+
module_wrapper_21_61148:
??&
module_wrapper_21_61150:	?&
module_wrapper_22_61174:	?&
module_wrapper_22_61176:	?&
module_wrapper_22_61178:	?&
module_wrapper_22_61180:	?*
module_wrapper_24_61202:	?%
module_wrapper_24_61204:
identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?)module_wrapper_10/StatefulPartitionedCall?)module_wrapper_13/StatefulPartitionedCall?)module_wrapper_14/StatefulPartitionedCall?)module_wrapper_18/StatefulPartitionedCall?)module_wrapper_19/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?)module_wrapper_21/StatefulPartitionedCall?)module_wrapper_22/StatefulPartitionedCall?)module_wrapper_24/StatefulPartitionedCall?(module_wrapper_5/StatefulPartitionedCall?(module_wrapper_6/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_60833module_wrapper_60835*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_608322(
&module_wrapper/StatefulPartitionedCall?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0module_wrapper_1_60850module_wrapper_1_60852*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_608492*
(module_wrapper_1/StatefulPartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_60874module_wrapper_2_60876module_wrapper_2_60878module_wrapper_2_60880*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_608732*
(module_wrapper_2/StatefulPartitionedCall?
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_608882"
 module_wrapper_3/PartitionedCall?
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_608952"
 module_wrapper_4/PartitionedCall?
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_4/PartitionedCall:output:0module_wrapper_5_60909module_wrapper_5_60911*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_609082*
(module_wrapper_5/StatefulPartitionedCall?
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_5/StatefulPartitionedCall:output:0module_wrapper_6_60933module_wrapper_6_60935module_wrapper_6_60937module_wrapper_6_60939*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_609322*
(module_wrapper_6/StatefulPartitionedCall?
 module_wrapper_7/PartitionedCallPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_609472"
 module_wrapper_7/PartitionedCall?
 module_wrapper_8/PartitionedCallPartitionedCall)module_wrapper_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_609542"
 module_wrapper_8/PartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_8/PartitionedCall:output:0module_wrapper_9_60968module_wrapper_9_60970*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_609672*
(module_wrapper_9/StatefulPartitionedCall?
)module_wrapper_10/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0module_wrapper_10_60992module_wrapper_10_60994module_wrapper_10_60996module_wrapper_10_60998*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_609912+
)module_wrapper_10/StatefulPartitionedCall?
!module_wrapper_11/PartitionedCallPartitionedCall2module_wrapper_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_610062#
!module_wrapper_11/PartitionedCall?
!module_wrapper_12/PartitionedCallPartitionedCall*module_wrapper_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_610132#
!module_wrapper_12/PartitionedCall?
)module_wrapper_13/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_12/PartitionedCall:output:0module_wrapper_13_61027module_wrapper_13_61029*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_610262+
)module_wrapper_13/StatefulPartitionedCall?
)module_wrapper_14/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_13/StatefulPartitionedCall:output:0module_wrapper_14_61051module_wrapper_14_61053module_wrapper_14_61055module_wrapper_14_61057*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_610502+
)module_wrapper_14/StatefulPartitionedCall?
!module_wrapper_15/PartitionedCallPartitionedCall2module_wrapper_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_610652#
!module_wrapper_15/PartitionedCall?
!module_wrapper_16/PartitionedCallPartitionedCall*module_wrapper_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_610722#
!module_wrapper_16/PartitionedCall?
!module_wrapper_17/PartitionedCallPartitionedCall*module_wrapper_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_610802#
!module_wrapper_17/PartitionedCall?
)module_wrapper_18/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_17/PartitionedCall:output:0module_wrapper_18_61094module_wrapper_18_61096*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_610932+
)module_wrapper_18/StatefulPartitionedCall?
)module_wrapper_19/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_18/StatefulPartitionedCall:output:0module_wrapper_19_61120module_wrapper_19_61122module_wrapper_19_61124module_wrapper_19_61126*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_611192+
)module_wrapper_19/StatefulPartitionedCall?
!module_wrapper_20/PartitionedCallPartitionedCall2module_wrapper_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_611342#
!module_wrapper_20/PartitionedCall?
)module_wrapper_21/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_20/PartitionedCall:output:0module_wrapper_21_61148module_wrapper_21_61150*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_611472+
)module_wrapper_21/StatefulPartitionedCall?
)module_wrapper_22/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_21/StatefulPartitionedCall:output:0module_wrapper_22_61174module_wrapper_22_61176module_wrapper_22_61178module_wrapper_22_61180*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_611732+
)module_wrapper_22/StatefulPartitionedCall?
!module_wrapper_23/PartitionedCallPartitionedCall2module_wrapper_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_611882#
!module_wrapper_23/PartitionedCall?
)module_wrapper_24/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_23/PartitionedCall:output:0module_wrapper_24_61202module_wrapper_24_61204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_612012+
)module_wrapper_24/StatefulPartitionedCall?
IdentityIdentity2module_wrapper_24/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall*^module_wrapper_10/StatefulPartitionedCall*^module_wrapper_13/StatefulPartitionedCall*^module_wrapper_14/StatefulPartitionedCall*^module_wrapper_18/StatefulPartitionedCall*^module_wrapper_19/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall*^module_wrapper_21/StatefulPartitionedCall*^module_wrapper_22/StatefulPartitionedCall*^module_wrapper_24/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2V
)module_wrapper_10/StatefulPartitionedCall)module_wrapper_10/StatefulPartitionedCall2V
)module_wrapper_13/StatefulPartitionedCall)module_wrapper_13/StatefulPartitionedCall2V
)module_wrapper_14/StatefulPartitionedCall)module_wrapper_14/StatefulPartitionedCall2V
)module_wrapper_18/StatefulPartitionedCall)module_wrapper_18/StatefulPartitionedCall2V
)module_wrapper_19/StatefulPartitionedCall)module_wrapper_19/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2V
)module_wrapper_21/StatefulPartitionedCall)module_wrapper_21/StatefulPartitionedCall2V
)module_wrapper_22/StatefulPartitionedCall)module_wrapper_22/StatefulPartitionedCall2V
)module_wrapper_24/StatefulPartitionedCall)module_wrapper_24/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_65840

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?	
*__inference_sequential_layer_call_fn_63859

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?&

unknown_13:??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
?$?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?

unknown_31:
??

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
 !"%&'(*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_622482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_65102

args_0C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_3/Relu?
IdentityIdentityconv2d_3/Relu:activations:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_65422

args_08
$dense_matmul_readvariableop_resource:
?$?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_12_layer_call_fn_65189

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_610132
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_61787

args_0C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_3/Relu?
IdentityIdentityconv2d_3/Relu:activations:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
__inference_loss_fn_0_66147g
Kmodule_wrapper_9_conv2d_3_kernel_regularizer_square_readvariableop_resource:??
identity??Bmodule_wrapper_9/conv2d_3/kernel/Regularizer/Square/ReadVariableOp?
Bmodule_wrapper_9/conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpKmodule_wrapper_9_conv2d_3_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:??*
dtype02D
Bmodule_wrapper_9/conv2d_3/kernel/Regularizer/Square/ReadVariableOp?
3module_wrapper_9/conv2d_3/kernel/Regularizer/SquareSquareJmodule_wrapper_9/conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??25
3module_wrapper_9/conv2d_3/kernel/Regularizer/Square?
2module_wrapper_9/conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             24
2module_wrapper_9/conv2d_3/kernel/Regularizer/Const?
0module_wrapper_9/conv2d_3/kernel/Regularizer/SumSum7module_wrapper_9/conv2d_3/kernel/Regularizer/Square:y:0;module_wrapper_9/conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 22
0module_wrapper_9/conv2d_3/kernel/Regularizer/Sum?
2module_wrapper_9/conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<24
2module_wrapper_9/conv2d_3/kernel/Regularizer/mul/x?
0module_wrapper_9/conv2d_3/kernel/Regularizer/mulMul;module_wrapper_9/conv2d_3/kernel/Regularizer/mul/x:output:09module_wrapper_9/conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 22
0module_wrapper_9/conv2d_3/kernel/Regularizer/mul?
IdentityIdentity4module_wrapper_9/conv2d_3/kernel/Regularizer/mul:z:0C^module_wrapper_9/conv2d_3/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
Bmodule_wrapper_9/conv2d_3/kernel/Regularizer/Square/ReadVariableOpBmodule_wrapper_9/conv2d_3/kernel/Regularizer/Square/ReadVariableOp
?
?
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_66022

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?	
*__inference_sequential_layer_call_fn_63689
module_wrapper_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?&

unknown_13:??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
?$?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?

unknown_31:
??

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_612082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????00
.
_user_specified_namemodule_wrapper_input
?
?
1__inference_module_wrapper_14_layer_call_fn_65277

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_616392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_11_layer_call_fn_65169

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_610062
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
]
module_wrapper_inputE
&serving_default_module_wrapper_input:0?????????00E
module_wrapper_240
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?"
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
layer-15
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer_with_weights-11
layer-21
layer_with_weights-12
layer-22
layer-23
layer_with_weights-13
layer-24
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "module_wrapper_input"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}]}, "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, null]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [64, 48, 48, 1]}, "float32", "module_wrapper_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 2}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
 _module
!regularization_losses
"trainable_variables
#	variables
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
%_module
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
*_module
+regularization_losses
,trainable_variables
-	variables
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
/_module
0regularization_losses
1trainable_variables
2	variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
4_module
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
9_module
:regularization_losses
;trainable_variables
<	variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
>_module
?regularization_losses
@trainable_variables
A	variables
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
C_module
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
H_module
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
M_module
Nregularization_losses
Otrainable_variables
P	variables
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
R_module
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
W_module
Xregularization_losses
Ytrainable_variables
Z	variables
[	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
\_module
]regularization_losses
^trainable_variables
_	variables
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
a_module
bregularization_losses
ctrainable_variables
d	variables
e	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
f_module
gregularization_losses
htrainable_variables
i	variables
j	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
k_module
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
p_module
qregularization_losses
rtrainable_variables
s	variables
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
u_module
vregularization_losses
wtrainable_variables
x	variables
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
z_module
{regularization_losses
|trainable_variables
}	variables
~	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_19", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_20", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_21", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_22", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_23", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
 "
trackable_list_wrapper
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27"
trackable_list_wrapper
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39"
trackable_list_wrapper
?
regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
trainable_variables
	variables
?layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?

?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 48, 48, 1]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
!regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
"trainable_variables
#	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 48, 48, 32]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
&regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
'trainable_variables
(	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 48, 48, 64]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
+regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
,trainable_variables
-	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
0regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
1trainable_variables
2	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
5regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
6trainable_variables
7	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 24, 24, 64]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
:regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
;trainable_variables
<	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 24, 24, 128]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
@trainable_variables
A	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Etrainable_variables
F	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Iregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Jtrainable_variables
K	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 12, 12, 128]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
Nregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Otrainable_variables
P	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 12, 12, 512]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
Sregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Ttrainable_variables
U	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Ytrainable_variables
Z	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
]regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
^trainable_variables
_	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 6, 6, 512]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
bregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
ctrainable_variables
d	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 6, 6, 512]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
gregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
htrainable_variables
i	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
lregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
mtrainable_variables
n	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
qregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
rtrainable_variables
s	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
vregularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
wtrainable_variables
x	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4608}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 4608]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
{regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
|trainable_variables
}	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 256]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 256]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 512]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 512]}}
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
6:4 2module_wrapper/conv2d/kernel
(:& 2module_wrapper/conv2d/bias
::8 @2 module_wrapper_1/conv2d_1/kernel
,:*@2module_wrapper_1/conv2d_1/bias
8:6@2*module_wrapper_2/batch_normalization/gamma
7:5@2)module_wrapper_2/batch_normalization/beta
;:9@?2 module_wrapper_5/conv2d_2/kernel
-:+?2module_wrapper_5/conv2d_2/bias
;:9?2,module_wrapper_6/batch_normalization_1/gamma
::8?2+module_wrapper_6/batch_normalization_1/beta
<::??2 module_wrapper_9/conv2d_3/kernel
-:+?2module_wrapper_9/conv2d_3/bias
<::?2-module_wrapper_10/batch_normalization_2/gamma
;:9?2,module_wrapper_10/batch_normalization_2/beta
=:;??2!module_wrapper_13/conv2d_4/kernel
.:,?2module_wrapper_13/conv2d_4/bias
<::?2-module_wrapper_14/batch_normalization_3/gamma
;:9?2,module_wrapper_14/batch_normalization_3/beta
2:0
?$?2module_wrapper_18/dense/kernel
+:)?2module_wrapper_18/dense/bias
<::?2-module_wrapper_19/batch_normalization_4/gamma
;:9?2,module_wrapper_19/batch_normalization_4/beta
4:2
??2 module_wrapper_21/dense_1/kernel
-:+?2module_wrapper_21/dense_1/bias
<::?2-module_wrapper_22/batch_normalization_5/gamma
;:9?2,module_wrapper_22/batch_normalization_5/beta
3:1	?2 module_wrapper_24/dense_2/kernel
,:*2module_wrapper_24/dense_2/bias
@:>@ (20module_wrapper_2/batch_normalization/moving_mean
D:B@ (24module_wrapper_2/batch_normalization/moving_variance
C:A? (22module_wrapper_6/batch_normalization_1/moving_mean
G:E? (26module_wrapper_6/batch_normalization_1/moving_variance
D:B? (23module_wrapper_10/batch_normalization_2/moving_mean
H:F? (27module_wrapper_10/batch_normalization_2/moving_variance
D:B? (23module_wrapper_14/batch_normalization_3/moving_mean
H:F? (27module_wrapper_14/batch_normalization_3/moving_variance
D:B? (23module_wrapper_19/batch_normalization_4/moving_mean
H:F? (27module_wrapper_19/batch_normalization_4/moving_variance
D:B? (23module_wrapper_22/batch_normalization_5/moving_mean
H:F? (27module_wrapper_22/batch_normalization_5/moving_variance
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
?trainable_variables
?	variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
trackable_dict_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 3}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 2}
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
 "
trackable_list_wrapper
(
?0"
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
0
?0
?1"
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
 "
trackable_list_wrapper
(
?0"
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
0
?0
?1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
;:9 2#Adam/module_wrapper/conv2d/kernel/m
-:+ 2!Adam/module_wrapper/conv2d/bias/m
?:= @2'Adam/module_wrapper_1/conv2d_1/kernel/m
1:/@2%Adam/module_wrapper_1/conv2d_1/bias/m
=:;@21Adam/module_wrapper_2/batch_normalization/gamma/m
<::@20Adam/module_wrapper_2/batch_normalization/beta/m
@:>@?2'Adam/module_wrapper_5/conv2d_2/kernel/m
2:0?2%Adam/module_wrapper_5/conv2d_2/bias/m
@:>?23Adam/module_wrapper_6/batch_normalization_1/gamma/m
?:=?22Adam/module_wrapper_6/batch_normalization_1/beta/m
A:???2'Adam/module_wrapper_9/conv2d_3/kernel/m
2:0?2%Adam/module_wrapper_9/conv2d_3/bias/m
A:??24Adam/module_wrapper_10/batch_normalization_2/gamma/m
@:>?23Adam/module_wrapper_10/batch_normalization_2/beta/m
B:@??2(Adam/module_wrapper_13/conv2d_4/kernel/m
3:1?2&Adam/module_wrapper_13/conv2d_4/bias/m
A:??24Adam/module_wrapper_14/batch_normalization_3/gamma/m
@:>?23Adam/module_wrapper_14/batch_normalization_3/beta/m
7:5
?$?2%Adam/module_wrapper_18/dense/kernel/m
0:.?2#Adam/module_wrapper_18/dense/bias/m
A:??24Adam/module_wrapper_19/batch_normalization_4/gamma/m
@:>?23Adam/module_wrapper_19/batch_normalization_4/beta/m
9:7
??2'Adam/module_wrapper_21/dense_1/kernel/m
2:0?2%Adam/module_wrapper_21/dense_1/bias/m
A:??24Adam/module_wrapper_22/batch_normalization_5/gamma/m
@:>?23Adam/module_wrapper_22/batch_normalization_5/beta/m
8:6	?2'Adam/module_wrapper_24/dense_2/kernel/m
1:/2%Adam/module_wrapper_24/dense_2/bias/m
;:9 2#Adam/module_wrapper/conv2d/kernel/v
-:+ 2!Adam/module_wrapper/conv2d/bias/v
?:= @2'Adam/module_wrapper_1/conv2d_1/kernel/v
1:/@2%Adam/module_wrapper_1/conv2d_1/bias/v
=:;@21Adam/module_wrapper_2/batch_normalization/gamma/v
<::@20Adam/module_wrapper_2/batch_normalization/beta/v
@:>@?2'Adam/module_wrapper_5/conv2d_2/kernel/v
2:0?2%Adam/module_wrapper_5/conv2d_2/bias/v
@:>?23Adam/module_wrapper_6/batch_normalization_1/gamma/v
?:=?22Adam/module_wrapper_6/batch_normalization_1/beta/v
A:???2'Adam/module_wrapper_9/conv2d_3/kernel/v
2:0?2%Adam/module_wrapper_9/conv2d_3/bias/v
A:??24Adam/module_wrapper_10/batch_normalization_2/gamma/v
@:>?23Adam/module_wrapper_10/batch_normalization_2/beta/v
B:@??2(Adam/module_wrapper_13/conv2d_4/kernel/v
3:1?2&Adam/module_wrapper_13/conv2d_4/bias/v
A:??24Adam/module_wrapper_14/batch_normalization_3/gamma/v
@:>?23Adam/module_wrapper_14/batch_normalization_3/beta/v
7:5
?$?2%Adam/module_wrapper_18/dense/kernel/v
0:.?2#Adam/module_wrapper_18/dense/bias/v
A:??24Adam/module_wrapper_19/batch_normalization_4/gamma/v
@:>?23Adam/module_wrapper_19/batch_normalization_4/beta/v
9:7
??2'Adam/module_wrapper_21/dense_1/kernel/v
2:0?2%Adam/module_wrapper_21/dense_1/bias/v
A:??24Adam/module_wrapper_22/batch_normalization_5/gamma/v
@:>?23Adam/module_wrapper_22/batch_normalization_5/beta/v
8:6	?2'Adam/module_wrapper_24/dense_2/kernel/v
1:/2%Adam/module_wrapper_24/dense_2/bias/v
?2?
 __inference__wrapped_model_60814?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *;?8
6?3
module_wrapper_input?????????00
?2?
*__inference_sequential_layer_call_fn_63689
*__inference_sequential_layer_call_fn_63774
*__inference_sequential_layer_call_fn_63859
*__inference_sequential_layer_call_fn_63944?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_64104
E__inference_sequential_layer_call_and_return_conditional_losses_64334
E__inference_sequential_layer_call_and_return_conditional_losses_64494
E__inference_sequential_layer_call_and_return_conditional_losses_64724?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_module_wrapper_layer_call_fn_64733
.__inference_module_wrapper_layer_call_fn_64742?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_64753
I__inference_module_wrapper_layer_call_and_return_conditional_losses_64764?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_1_layer_call_fn_64773
0__inference_module_wrapper_1_layer_call_fn_64782?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_64793
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_64804?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_2_layer_call_fn_64817
0__inference_module_wrapper_2_layer_call_fn_64830?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_64848
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_64866?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_3_layer_call_fn_64871
0__inference_module_wrapper_3_layer_call_fn_64876?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_64881
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_64886?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_4_layer_call_fn_64891
0__inference_module_wrapper_4_layer_call_fn_64896?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_64901
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_64913?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_5_layer_call_fn_64922
0__inference_module_wrapper_5_layer_call_fn_64931?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_64942
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_64953?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_6_layer_call_fn_64966
0__inference_module_wrapper_6_layer_call_fn_64979?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_64997
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_65015?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_7_layer_call_fn_65020
0__inference_module_wrapper_7_layer_call_fn_65025?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_65030
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_65035?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_8_layer_call_fn_65040
0__inference_module_wrapper_8_layer_call_fn_65045?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_65050
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_65062?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_9_layer_call_fn_65071
0__inference_module_wrapper_9_layer_call_fn_65080?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_65091
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_65102?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_10_layer_call_fn_65115
1__inference_module_wrapper_10_layer_call_fn_65128?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_65146
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_65164?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_11_layer_call_fn_65169
1__inference_module_wrapper_11_layer_call_fn_65174?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_65179
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_65184?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_12_layer_call_fn_65189
1__inference_module_wrapper_12_layer_call_fn_65194?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_65199
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_65211?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_13_layer_call_fn_65220
1__inference_module_wrapper_13_layer_call_fn_65229?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_65240
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_65251?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_14_layer_call_fn_65264
1__inference_module_wrapper_14_layer_call_fn_65277?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_65295
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_65313?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_15_layer_call_fn_65318
1__inference_module_wrapper_15_layer_call_fn_65323?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_65328
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_65333?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_16_layer_call_fn_65338
1__inference_module_wrapper_16_layer_call_fn_65343?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_65348
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_65360?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_17_layer_call_fn_65365
1__inference_module_wrapper_17_layer_call_fn_65370?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_65376
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_65382?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_18_layer_call_fn_65391
1__inference_module_wrapper_18_layer_call_fn_65400?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_65411
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_65422?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_19_layer_call_fn_65435
1__inference_module_wrapper_19_layer_call_fn_65448?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_65468
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_65502?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_20_layer_call_fn_65507
1__inference_module_wrapper_20_layer_call_fn_65512?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_65517
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_65529?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_21_layer_call_fn_65538
1__inference_module_wrapper_21_layer_call_fn_65547?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_65558
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_65569?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_22_layer_call_fn_65582
1__inference_module_wrapper_22_layer_call_fn_65595?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_65615
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_65649?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_23_layer_call_fn_65654
1__inference_module_wrapper_23_layer_call_fn_65659?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_65664
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_65676?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_24_layer_call_fn_65685
1__inference_module_wrapper_24_layer_call_fn_65694?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_65705
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_65716?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
#__inference_signature_wrapper_62727module_wrapper_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_batch_normalization_layer_call_fn_65729
3__inference_batch_normalization_layer_call_fn_65742?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_65760
N__inference_batch_normalization_layer_call_and_return_conditional_losses_65778?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_max_pooling2d_layer_call_fn_62866?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_62860?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_1_layer_call_fn_65791
5__inference_batch_normalization_1_layer_call_fn_65804?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_65822
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_65840?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_max_pooling2d_1_layer_call_fn_63004?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_62998?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_2_layer_call_fn_65859
5__inference_batch_normalization_2_layer_call_fn_65872?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_65890
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_65908?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_max_pooling2d_2_layer_call_fn_63142?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_63136?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_3_layer_call_fn_65927
5__inference_batch_normalization_3_layer_call_fn_65940?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_65958
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_65976?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_max_pooling2d_3_layer_call_fn_63280?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63274?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_4_layer_call_fn_65989
5__inference_batch_normalization_4_layer_call_fn_66002?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_66022
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_66056?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_5_layer_call_fn_66069
5__inference_batch_normalization_5_layer_call_fn_66082?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_66102
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_66136?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_66147?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_66158?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? ?
 __inference__wrapped_model_60814?P????????????????????????????????????????E?B
;?8
6?3
module_wrapper_input?????????00
? "E?B
@
module_wrapper_24+?(
module_wrapper_24??????????
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_65822?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_65840?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
5__inference_batch_normalization_1_layer_call_fn_65791?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
5__inference_batch_normalization_1_layer_call_fn_65804?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_65890?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_65908?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
5__inference_batch_normalization_2_layer_call_fn_65859?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
5__inference_batch_normalization_2_layer_call_fn_65872?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_65958?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_65976?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
5__inference_batch_normalization_3_layer_call_fn_65927?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
5__inference_batch_normalization_3_layer_call_fn_65940?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_66022h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_66056h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
5__inference_batch_normalization_4_layer_call_fn_65989[????4?1
*?'
!?
inputs??????????
p 
? "????????????
5__inference_batch_normalization_4_layer_call_fn_66002[????4?1
*?'
!?
inputs??????????
p
? "????????????
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_66102h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_66136h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
5__inference_batch_normalization_5_layer_call_fn_66069[????4?1
*?'
!?
inputs??????????
p 
? "????????????
5__inference_batch_normalization_5_layer_call_fn_66082[????4?1
*?'
!?
inputs??????????
p
? "????????????
N__inference_batch_normalization_layer_call_and_return_conditional_losses_65760?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_65778?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
3__inference_batch_normalization_layer_call_fn_65729?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
3__inference_batch_normalization_layer_call_fn_65742?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@;
__inference_loss_fn_0_66147??

? 
? "? ;
__inference_loss_fn_1_66158??

? 
? "? ?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_62998?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_1_layer_call_fn_63004?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_63136?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_2_layer_call_fn_63142?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63274?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_3_layer_call_fn_63280?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_62860?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_max_pooling2d_layer_call_fn_62866?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_65146?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_10_layer_call_and_return_conditional_losses_65164?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_10_layer_call_fn_65115w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_10_layer_call_fn_65128w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_65179zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_65184zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_11_layer_call_fn_65169mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_11_layer_call_fn_65174mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_65199zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_65211zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_12_layer_call_fn_65189mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_12_layer_call_fn_65194mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_65240???H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_65251???H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_13_layer_call_fn_65220s??H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_13_layer_call_fn_65229s??H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_65295?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_65313?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_14_layer_call_fn_65264w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_14_layer_call_fn_65277w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_65328zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_65333zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_15_layer_call_fn_65318mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_15_layer_call_fn_65323mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_65348zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_65360zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_16_layer_call_fn_65338mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_16_layer_call_fn_65343mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_65376rH?E
.?+
)?&
args_0??????????
?

trainingp "&?#
?
0??????????$
? ?
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_65382rH?E
.?+
)?&
args_0??????????
?

trainingp"&?#
?
0??????????$
? ?
1__inference_module_wrapper_17_layer_call_fn_65365eH?E
.?+
)?&
args_0??????????
?

trainingp "???????????$?
1__inference_module_wrapper_17_layer_call_fn_65370eH?E
.?+
)?&
args_0??????????
?

trainingp"???????????$?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_65411p??@?=
&?#
!?
args_0??????????$
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_65422p??@?=
&?#
!?
args_0??????????$
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_18_layer_call_fn_65391c??@?=
&?#
!?
args_0??????????$
?

trainingp "????????????
1__inference_module_wrapper_18_layer_call_fn_65400c??@?=
&?#
!?
args_0??????????$
?

trainingp"????????????
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_65468t????@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_65502t????@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_19_layer_call_fn_65435g????@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_19_layer_call_fn_65448g????@?=
&?#
!?
args_0??????????
?

trainingp"????????????
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_64793~??G?D
-?*
(?%
args_0?????????00 
?

trainingp "-?*
#? 
0?????????00@
? ?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_64804~??G?D
-?*
(?%
args_0?????????00 
?

trainingp"-?*
#? 
0?????????00@
? ?
0__inference_module_wrapper_1_layer_call_fn_64773q??G?D
-?*
(?%
args_0?????????00 
?

trainingp " ??????????00@?
0__inference_module_wrapper_1_layer_call_fn_64782q??G?D
-?*
(?%
args_0?????????00 
?

trainingp" ??????????00@?
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_65517j@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_65529j@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_20_layer_call_fn_65507]@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_20_layer_call_fn_65512]@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_65558p??@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_65569p??@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_21_layer_call_fn_65538c??@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_21_layer_call_fn_65547c??@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_65615t????@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_22_layer_call_and_return_conditional_losses_65649t????@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_22_layer_call_fn_65582g????@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_22_layer_call_fn_65595g????@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_65664j@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_23_layer_call_and_return_conditional_losses_65676j@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_23_layer_call_fn_65654]@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_23_layer_call_fn_65659]@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_65705o??@?=
&?#
!?
args_0??????????
?

trainingp "%?"
?
0?????????
? ?
L__inference_module_wrapper_24_layer_call_and_return_conditional_losses_65716o??@?=
&?#
!?
args_0??????????
?

trainingp"%?"
?
0?????????
? ?
1__inference_module_wrapper_24_layer_call_fn_65685b??@?=
&?#
!?
args_0??????????
?

trainingp "???????????
1__inference_module_wrapper_24_layer_call_fn_65694b??@?=
&?#
!?
args_0??????????
?

trainingp"???????????
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_64848?????G?D
-?*
(?%
args_0?????????00@
?

trainingp "-?*
#? 
0?????????00@
? ?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_64866?????G?D
-?*
(?%
args_0?????????00@
?

trainingp"-?*
#? 
0?????????00@
? ?
0__inference_module_wrapper_2_layer_call_fn_64817u????G?D
-?*
(?%
args_0?????????00@
?

trainingp " ??????????00@?
0__inference_module_wrapper_2_layer_call_fn_64830u????G?D
-?*
(?%
args_0?????????00@
?

trainingp" ??????????00@?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_64881xG?D
-?*
(?%
args_0?????????00@
?

trainingp "-?*
#? 
0?????????@
? ?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_64886xG?D
-?*
(?%
args_0?????????00@
?

trainingp"-?*
#? 
0?????????@
? ?
0__inference_module_wrapper_3_layer_call_fn_64871kG?D
-?*
(?%
args_0?????????00@
?

trainingp " ??????????@?
0__inference_module_wrapper_3_layer_call_fn_64876kG?D
-?*
(?%
args_0?????????00@
?

trainingp" ??????????@?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_64901xG?D
-?*
(?%
args_0?????????@
?

trainingp "-?*
#? 
0?????????@
? ?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_64913xG?D
-?*
(?%
args_0?????????@
?

trainingp"-?*
#? 
0?????????@
? ?
0__inference_module_wrapper_4_layer_call_fn_64891kG?D
-?*
(?%
args_0?????????@
?

trainingp " ??????????@?
0__inference_module_wrapper_4_layer_call_fn_64896kG?D
-?*
(?%
args_0?????????@
?

trainingp" ??????????@?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_64942??G?D
-?*
(?%
args_0?????????@
?

trainingp ".?+
$?!
0??????????
? ?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_64953??G?D
-?*
(?%
args_0?????????@
?

trainingp".?+
$?!
0??????????
? ?
0__inference_module_wrapper_5_layer_call_fn_64922r??G?D
-?*
(?%
args_0?????????@
?

trainingp "!????????????
0__inference_module_wrapper_5_layer_call_fn_64931r??G?D
-?*
(?%
args_0?????????@
?

trainingp"!????????????
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_64997?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_65015?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
0__inference_module_wrapper_6_layer_call_fn_64966w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
0__inference_module_wrapper_6_layer_call_fn_64979w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_65030zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_65035zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
0__inference_module_wrapper_7_layer_call_fn_65020mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
0__inference_module_wrapper_7_layer_call_fn_65025mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_65050zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_65062zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
0__inference_module_wrapper_8_layer_call_fn_65040mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
0__inference_module_wrapper_8_layer_call_fn_65045mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_65091???H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
K__inference_module_wrapper_9_layer_call_and_return_conditional_losses_65102???H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
0__inference_module_wrapper_9_layer_call_fn_65071s??H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
0__inference_module_wrapper_9_layer_call_fn_65080s??H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
I__inference_module_wrapper_layer_call_and_return_conditional_losses_64753~??G?D
-?*
(?%
args_0?????????00
?

trainingp "-?*
#? 
0?????????00 
? ?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_64764~??G?D
-?*
(?%
args_0?????????00
?

trainingp"-?*
#? 
0?????????00 
? ?
.__inference_module_wrapper_layer_call_fn_64733q??G?D
-?*
(?%
args_0?????????00
?

trainingp " ??????????00 ?
.__inference_module_wrapper_layer_call_fn_64742q??G?D
-?*
(?%
args_0?????????00
?

trainingp" ??????????00 ?
E__inference_sequential_layer_call_and_return_conditional_losses_64104?P??????????????????????????????????????????<
5?2
(?%
inputs?????????00
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_64334?P??????????????????????????????????????????<
5?2
(?%
inputs?????????00
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_64494?P????????????????????????????????????????M?J
C?@
6?3
module_wrapper_input?????????00
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_64724?P????????????????????????????????????????M?J
C?@
6?3
module_wrapper_input?????????00
p

 
? "%?"
?
0?????????
? ?
*__inference_sequential_layer_call_fn_63689?P????????????????????????????????????????M?J
C?@
6?3
module_wrapper_input?????????00
p 

 
? "???????????
*__inference_sequential_layer_call_fn_63774?P??????????????????????????????????????????<
5?2
(?%
inputs?????????00
p 

 
? "???????????
*__inference_sequential_layer_call_fn_63859?P??????????????????????????????????????????<
5?2
(?%
inputs?????????00
p

 
? "???????????
*__inference_sequential_layer_call_fn_63944?P????????????????????????????????????????M?J
C?@
6?3
module_wrapper_input?????????00
p

 
? "???????????
#__inference_signature_wrapper_62727?P????????????????????????????????????????]?Z
? 
S?P
N
module_wrapper_input6?3
module_wrapper_input?????????00"E?B
@
module_wrapper_24+?(
module_wrapper_24?????????