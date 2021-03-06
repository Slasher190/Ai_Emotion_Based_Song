??:
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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??1
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
"module_wrapper_50/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"module_wrapper_50/conv2d_10/kernel
?
6module_wrapper_50/conv2d_10/kernel/Read/ReadVariableOpReadVariableOp"module_wrapper_50/conv2d_10/kernel*&
_output_shapes
: *
dtype0
?
 module_wrapper_50/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" module_wrapper_50/conv2d_10/bias
?
4module_wrapper_50/conv2d_10/bias/Read/ReadVariableOpReadVariableOp module_wrapper_50/conv2d_10/bias*
_output_shapes
: *
dtype0
?
"module_wrapper_51/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"module_wrapper_51/conv2d_11/kernel
?
6module_wrapper_51/conv2d_11/kernel/Read/ReadVariableOpReadVariableOp"module_wrapper_51/conv2d_11/kernel*&
_output_shapes
: @*
dtype0
?
 module_wrapper_51/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" module_wrapper_51/conv2d_11/bias
?
4module_wrapper_51/conv2d_11/bias/Read/ReadVariableOpReadVariableOp module_wrapper_51/conv2d_11/bias*
_output_shapes
:@*
dtype0
?
.module_wrapper_52/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.module_wrapper_52/batch_normalization_12/gamma
?
Bmodule_wrapper_52/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp.module_wrapper_52/batch_normalization_12/gamma*
_output_shapes
:@*
dtype0
?
-module_wrapper_52/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-module_wrapper_52/batch_normalization_12/beta
?
Amodule_wrapper_52/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp-module_wrapper_52/batch_normalization_12/beta*
_output_shapes
:@*
dtype0
?
"module_wrapper_55/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*3
shared_name$"module_wrapper_55/conv2d_12/kernel
?
6module_wrapper_55/conv2d_12/kernel/Read/ReadVariableOpReadVariableOp"module_wrapper_55/conv2d_12/kernel*'
_output_shapes
:@?*
dtype0
?
 module_wrapper_55/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" module_wrapper_55/conv2d_12/bias
?
4module_wrapper_55/conv2d_12/bias/Read/ReadVariableOpReadVariableOp module_wrapper_55/conv2d_12/bias*
_output_shapes	
:?*
dtype0
?
.module_wrapper_56/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.module_wrapper_56/batch_normalization_13/gamma
?
Bmodule_wrapper_56/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp.module_wrapper_56/batch_normalization_13/gamma*
_output_shapes	
:?*
dtype0
?
-module_wrapper_56/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_56/batch_normalization_13/beta
?
Amodule_wrapper_56/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp-module_wrapper_56/batch_normalization_13/beta*
_output_shapes	
:?*
dtype0
?
"module_wrapper_59/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"module_wrapper_59/conv2d_13/kernel
?
6module_wrapper_59/conv2d_13/kernel/Read/ReadVariableOpReadVariableOp"module_wrapper_59/conv2d_13/kernel*(
_output_shapes
:??*
dtype0
?
 module_wrapper_59/conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" module_wrapper_59/conv2d_13/bias
?
4module_wrapper_59/conv2d_13/bias/Read/ReadVariableOpReadVariableOp module_wrapper_59/conv2d_13/bias*
_output_shapes	
:?*
dtype0
?
.module_wrapper_60/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.module_wrapper_60/batch_normalization_14/gamma
?
Bmodule_wrapper_60/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp.module_wrapper_60/batch_normalization_14/gamma*
_output_shapes	
:?*
dtype0
?
-module_wrapper_60/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_60/batch_normalization_14/beta
?
Amodule_wrapper_60/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp-module_wrapper_60/batch_normalization_14/beta*
_output_shapes	
:?*
dtype0
?
"module_wrapper_63/conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*3
shared_name$"module_wrapper_63/conv2d_14/kernel
?
6module_wrapper_63/conv2d_14/kernel/Read/ReadVariableOpReadVariableOp"module_wrapper_63/conv2d_14/kernel*(
_output_shapes
:??*
dtype0
?
 module_wrapper_63/conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" module_wrapper_63/conv2d_14/bias
?
4module_wrapper_63/conv2d_14/bias/Read/ReadVariableOpReadVariableOp module_wrapper_63/conv2d_14/bias*
_output_shapes	
:?*
dtype0
?
.module_wrapper_64/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.module_wrapper_64/batch_normalization_15/gamma
?
Bmodule_wrapper_64/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp.module_wrapper_64/batch_normalization_15/gamma*
_output_shapes	
:?*
dtype0
?
-module_wrapper_64/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_64/batch_normalization_15/beta
?
Amodule_wrapper_64/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp-module_wrapper_64/batch_normalization_15/beta*
_output_shapes	
:?*
dtype0
?
 module_wrapper_68/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?$?*1
shared_name" module_wrapper_68/dense_6/kernel
?
4module_wrapper_68/dense_6/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_68/dense_6/kernel* 
_output_shapes
:
?$?*
dtype0
?
module_wrapper_68/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name module_wrapper_68/dense_6/bias
?
2module_wrapper_68/dense_6/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_68/dense_6/bias*
_output_shapes	
:?*
dtype0
?
.module_wrapper_69/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.module_wrapper_69/batch_normalization_16/gamma
?
Bmodule_wrapper_69/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp.module_wrapper_69/batch_normalization_16/gamma*
_output_shapes	
:?*
dtype0
?
-module_wrapper_69/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_69/batch_normalization_16/beta
?
Amodule_wrapper_69/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp-module_wrapper_69/batch_normalization_16/beta*
_output_shapes	
:?*
dtype0
?
 module_wrapper_71/dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" module_wrapper_71/dense_7/kernel
?
4module_wrapper_71/dense_7/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_71/dense_7/kernel* 
_output_shapes
:
??*
dtype0
?
module_wrapper_71/dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name module_wrapper_71/dense_7/bias
?
2module_wrapper_71/dense_7/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_71/dense_7/bias*
_output_shapes	
:?*
dtype0
?
.module_wrapper_72/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.module_wrapper_72/batch_normalization_17/gamma
?
Bmodule_wrapper_72/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp.module_wrapper_72/batch_normalization_17/gamma*
_output_shapes	
:?*
dtype0
?
-module_wrapper_72/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_72/batch_normalization_17/beta
?
Amodule_wrapper_72/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp-module_wrapper_72/batch_normalization_17/beta*
_output_shapes	
:?*
dtype0
?
 module_wrapper_74/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" module_wrapper_74/dense_8/kernel
?
4module_wrapper_74/dense_8/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_74/dense_8/kernel*
_output_shapes
:	?*
dtype0
?
module_wrapper_74/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name module_wrapper_74/dense_8/bias
?
2module_wrapper_74/dense_8/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_74/dense_8/bias*
_output_shapes
:*
dtype0
?
4module_wrapper_52/batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64module_wrapper_52/batch_normalization_12/moving_mean
?
Hmodule_wrapper_52/batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp4module_wrapper_52/batch_normalization_12/moving_mean*
_output_shapes
:@*
dtype0
?
8module_wrapper_52/batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*I
shared_name:8module_wrapper_52/batch_normalization_12/moving_variance
?
Lmodule_wrapper_52/batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp8module_wrapper_52/batch_normalization_12/moving_variance*
_output_shapes
:@*
dtype0
?
4module_wrapper_56/batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64module_wrapper_56/batch_normalization_13/moving_mean
?
Hmodule_wrapper_56/batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp4module_wrapper_56/batch_normalization_13/moving_mean*
_output_shapes	
:?*
dtype0
?
8module_wrapper_56/batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8module_wrapper_56/batch_normalization_13/moving_variance
?
Lmodule_wrapper_56/batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp8module_wrapper_56/batch_normalization_13/moving_variance*
_output_shapes	
:?*
dtype0
?
4module_wrapper_60/batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64module_wrapper_60/batch_normalization_14/moving_mean
?
Hmodule_wrapper_60/batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp4module_wrapper_60/batch_normalization_14/moving_mean*
_output_shapes	
:?*
dtype0
?
8module_wrapper_60/batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8module_wrapper_60/batch_normalization_14/moving_variance
?
Lmodule_wrapper_60/batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp8module_wrapper_60/batch_normalization_14/moving_variance*
_output_shapes	
:?*
dtype0
?
4module_wrapper_64/batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64module_wrapper_64/batch_normalization_15/moving_mean
?
Hmodule_wrapper_64/batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp4module_wrapper_64/batch_normalization_15/moving_mean*
_output_shapes	
:?*
dtype0
?
8module_wrapper_64/batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8module_wrapper_64/batch_normalization_15/moving_variance
?
Lmodule_wrapper_64/batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp8module_wrapper_64/batch_normalization_15/moving_variance*
_output_shapes	
:?*
dtype0
?
4module_wrapper_69/batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64module_wrapper_69/batch_normalization_16/moving_mean
?
Hmodule_wrapper_69/batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp4module_wrapper_69/batch_normalization_16/moving_mean*
_output_shapes	
:?*
dtype0
?
8module_wrapper_69/batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8module_wrapper_69/batch_normalization_16/moving_variance
?
Lmodule_wrapper_69/batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp8module_wrapper_69/batch_normalization_16/moving_variance*
_output_shapes	
:?*
dtype0
?
4module_wrapper_72/batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64module_wrapper_72/batch_normalization_17/moving_mean
?
Hmodule_wrapper_72/batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp4module_wrapper_72/batch_normalization_17/moving_mean*
_output_shapes	
:?*
dtype0
?
8module_wrapper_72/batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*I
shared_name:8module_wrapper_72/batch_normalization_17/moving_variance
?
Lmodule_wrapper_72/batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp8module_wrapper_72/batch_normalization_17/moving_variance*
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
)Adam/module_wrapper_50/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)Adam/module_wrapper_50/conv2d_10/kernel/m
?
=Adam/module_wrapper_50/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_50/conv2d_10/kernel/m*&
_output_shapes
: *
dtype0
?
'Adam/module_wrapper_50/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/module_wrapper_50/conv2d_10/bias/m
?
;Adam/module_wrapper_50/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_50/conv2d_10/bias/m*
_output_shapes
: *
dtype0
?
)Adam/module_wrapper_51/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*:
shared_name+)Adam/module_wrapper_51/conv2d_11/kernel/m
?
=Adam/module_wrapper_51/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_51/conv2d_11/kernel/m*&
_output_shapes
: @*
dtype0
?
'Adam/module_wrapper_51/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/module_wrapper_51/conv2d_11/bias/m
?
;Adam/module_wrapper_51/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_51/conv2d_11/bias/m*
_output_shapes
:@*
dtype0
?
5Adam/module_wrapper_52/batch_normalization_12/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/module_wrapper_52/batch_normalization_12/gamma/m
?
IAdam/module_wrapper_52/batch_normalization_12/gamma/m/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_52/batch_normalization_12/gamma/m*
_output_shapes
:@*
dtype0
?
4Adam/module_wrapper_52/batch_normalization_12/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64Adam/module_wrapper_52/batch_normalization_12/beta/m
?
HAdam/module_wrapper_52/batch_normalization_12/beta/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_52/batch_normalization_12/beta/m*
_output_shapes
:@*
dtype0
?
)Adam/module_wrapper_55/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*:
shared_name+)Adam/module_wrapper_55/conv2d_12/kernel/m
?
=Adam/module_wrapper_55/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_55/conv2d_12/kernel/m*'
_output_shapes
:@?*
dtype0
?
'Adam/module_wrapper_55/conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/module_wrapper_55/conv2d_12/bias/m
?
;Adam/module_wrapper_55/conv2d_12/bias/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_55/conv2d_12/bias/m*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_56/batch_normalization_13/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_56/batch_normalization_13/gamma/m
?
IAdam/module_wrapper_56/batch_normalization_13/gamma/m/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_56/batch_normalization_13/gamma/m*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_56/batch_normalization_13/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_56/batch_normalization_13/beta/m
?
HAdam/module_wrapper_56/batch_normalization_13/beta/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_56/batch_normalization_13/beta/m*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_59/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*:
shared_name+)Adam/module_wrapper_59/conv2d_13/kernel/m
?
=Adam/module_wrapper_59/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_59/conv2d_13/kernel/m*(
_output_shapes
:??*
dtype0
?
'Adam/module_wrapper_59/conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/module_wrapper_59/conv2d_13/bias/m
?
;Adam/module_wrapper_59/conv2d_13/bias/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_59/conv2d_13/bias/m*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_60/batch_normalization_14/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_60/batch_normalization_14/gamma/m
?
IAdam/module_wrapper_60/batch_normalization_14/gamma/m/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_60/batch_normalization_14/gamma/m*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_60/batch_normalization_14/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_60/batch_normalization_14/beta/m
?
HAdam/module_wrapper_60/batch_normalization_14/beta/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_60/batch_normalization_14/beta/m*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_63/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*:
shared_name+)Adam/module_wrapper_63/conv2d_14/kernel/m
?
=Adam/module_wrapper_63/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_63/conv2d_14/kernel/m*(
_output_shapes
:??*
dtype0
?
'Adam/module_wrapper_63/conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/module_wrapper_63/conv2d_14/bias/m
?
;Adam/module_wrapper_63/conv2d_14/bias/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_63/conv2d_14/bias/m*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_64/batch_normalization_15/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_64/batch_normalization_15/gamma/m
?
IAdam/module_wrapper_64/batch_normalization_15/gamma/m/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_64/batch_normalization_15/gamma/m*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_64/batch_normalization_15/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_64/batch_normalization_15/beta/m
?
HAdam/module_wrapper_64/batch_normalization_15/beta/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_64/batch_normalization_15/beta/m*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_68/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?$?*8
shared_name)'Adam/module_wrapper_68/dense_6/kernel/m
?
;Adam/module_wrapper_68/dense_6/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_68/dense_6/kernel/m* 
_output_shapes
:
?$?*
dtype0
?
%Adam/module_wrapper_68/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_68/dense_6/bias/m
?
9Adam/module_wrapper_68/dense_6/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_68/dense_6/bias/m*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_69/batch_normalization_16/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_69/batch_normalization_16/gamma/m
?
IAdam/module_wrapper_69/batch_normalization_16/gamma/m/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_69/batch_normalization_16/gamma/m*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_69/batch_normalization_16/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_69/batch_normalization_16/beta/m
?
HAdam/module_wrapper_69/batch_normalization_16/beta/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_69/batch_normalization_16/beta/m*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_71/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'Adam/module_wrapper_71/dense_7/kernel/m
?
;Adam/module_wrapper_71/dense_7/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_71/dense_7/kernel/m* 
_output_shapes
:
??*
dtype0
?
%Adam/module_wrapper_71/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_71/dense_7/bias/m
?
9Adam/module_wrapper_71/dense_7/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_71/dense_7/bias/m*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_72/batch_normalization_17/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_72/batch_normalization_17/gamma/m
?
IAdam/module_wrapper_72/batch_normalization_17/gamma/m/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_72/batch_normalization_17/gamma/m*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_72/batch_normalization_17/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_72/batch_normalization_17/beta/m
?
HAdam/module_wrapper_72/batch_normalization_17/beta/m/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_72/batch_normalization_17/beta/m*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_74/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/module_wrapper_74/dense_8/kernel/m
?
;Adam/module_wrapper_74/dense_8/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_74/dense_8/kernel/m*
_output_shapes
:	?*
dtype0
?
%Adam/module_wrapper_74/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_74/dense_8/bias/m
?
9Adam/module_wrapper_74/dense_8/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_74/dense_8/bias/m*
_output_shapes
:*
dtype0
?
)Adam/module_wrapper_50/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)Adam/module_wrapper_50/conv2d_10/kernel/v
?
=Adam/module_wrapper_50/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_50/conv2d_10/kernel/v*&
_output_shapes
: *
dtype0
?
'Adam/module_wrapper_50/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/module_wrapper_50/conv2d_10/bias/v
?
;Adam/module_wrapper_50/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_50/conv2d_10/bias/v*
_output_shapes
: *
dtype0
?
)Adam/module_wrapper_51/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*:
shared_name+)Adam/module_wrapper_51/conv2d_11/kernel/v
?
=Adam/module_wrapper_51/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_51/conv2d_11/kernel/v*&
_output_shapes
: @*
dtype0
?
'Adam/module_wrapper_51/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/module_wrapper_51/conv2d_11/bias/v
?
;Adam/module_wrapper_51/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_51/conv2d_11/bias/v*
_output_shapes
:@*
dtype0
?
5Adam/module_wrapper_52/batch_normalization_12/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/module_wrapper_52/batch_normalization_12/gamma/v
?
IAdam/module_wrapper_52/batch_normalization_12/gamma/v/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_52/batch_normalization_12/gamma/v*
_output_shapes
:@*
dtype0
?
4Adam/module_wrapper_52/batch_normalization_12/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64Adam/module_wrapper_52/batch_normalization_12/beta/v
?
HAdam/module_wrapper_52/batch_normalization_12/beta/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_52/batch_normalization_12/beta/v*
_output_shapes
:@*
dtype0
?
)Adam/module_wrapper_55/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*:
shared_name+)Adam/module_wrapper_55/conv2d_12/kernel/v
?
=Adam/module_wrapper_55/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_55/conv2d_12/kernel/v*'
_output_shapes
:@?*
dtype0
?
'Adam/module_wrapper_55/conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/module_wrapper_55/conv2d_12/bias/v
?
;Adam/module_wrapper_55/conv2d_12/bias/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_55/conv2d_12/bias/v*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_56/batch_normalization_13/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_56/batch_normalization_13/gamma/v
?
IAdam/module_wrapper_56/batch_normalization_13/gamma/v/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_56/batch_normalization_13/gamma/v*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_56/batch_normalization_13/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_56/batch_normalization_13/beta/v
?
HAdam/module_wrapper_56/batch_normalization_13/beta/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_56/batch_normalization_13/beta/v*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_59/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*:
shared_name+)Adam/module_wrapper_59/conv2d_13/kernel/v
?
=Adam/module_wrapper_59/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_59/conv2d_13/kernel/v*(
_output_shapes
:??*
dtype0
?
'Adam/module_wrapper_59/conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/module_wrapper_59/conv2d_13/bias/v
?
;Adam/module_wrapper_59/conv2d_13/bias/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_59/conv2d_13/bias/v*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_60/batch_normalization_14/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_60/batch_normalization_14/gamma/v
?
IAdam/module_wrapper_60/batch_normalization_14/gamma/v/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_60/batch_normalization_14/gamma/v*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_60/batch_normalization_14/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_60/batch_normalization_14/beta/v
?
HAdam/module_wrapper_60/batch_normalization_14/beta/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_60/batch_normalization_14/beta/v*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_63/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*:
shared_name+)Adam/module_wrapper_63/conv2d_14/kernel/v
?
=Adam/module_wrapper_63/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_63/conv2d_14/kernel/v*(
_output_shapes
:??*
dtype0
?
'Adam/module_wrapper_63/conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/module_wrapper_63/conv2d_14/bias/v
?
;Adam/module_wrapper_63/conv2d_14/bias/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_63/conv2d_14/bias/v*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_64/batch_normalization_15/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_64/batch_normalization_15/gamma/v
?
IAdam/module_wrapper_64/batch_normalization_15/gamma/v/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_64/batch_normalization_15/gamma/v*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_64/batch_normalization_15/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_64/batch_normalization_15/beta/v
?
HAdam/module_wrapper_64/batch_normalization_15/beta/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_64/batch_normalization_15/beta/v*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_68/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?$?*8
shared_name)'Adam/module_wrapper_68/dense_6/kernel/v
?
;Adam/module_wrapper_68/dense_6/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_68/dense_6/kernel/v* 
_output_shapes
:
?$?*
dtype0
?
%Adam/module_wrapper_68/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_68/dense_6/bias/v
?
9Adam/module_wrapper_68/dense_6/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_68/dense_6/bias/v*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_69/batch_normalization_16/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_69/batch_normalization_16/gamma/v
?
IAdam/module_wrapper_69/batch_normalization_16/gamma/v/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_69/batch_normalization_16/gamma/v*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_69/batch_normalization_16/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_69/batch_normalization_16/beta/v
?
HAdam/module_wrapper_69/batch_normalization_16/beta/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_69/batch_normalization_16/beta/v*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_71/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'Adam/module_wrapper_71/dense_7/kernel/v
?
;Adam/module_wrapper_71/dense_7/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_71/dense_7/kernel/v* 
_output_shapes
:
??*
dtype0
?
%Adam/module_wrapper_71/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/module_wrapper_71/dense_7/bias/v
?
9Adam/module_wrapper_71/dense_7/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_71/dense_7/bias/v*
_output_shapes	
:?*
dtype0
?
5Adam/module_wrapper_72/batch_normalization_17/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/module_wrapper_72/batch_normalization_17/gamma/v
?
IAdam/module_wrapper_72/batch_normalization_17/gamma/v/Read/ReadVariableOpReadVariableOp5Adam/module_wrapper_72/batch_normalization_17/gamma/v*
_output_shapes	
:?*
dtype0
?
4Adam/module_wrapper_72/batch_normalization_17/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/module_wrapper_72/batch_normalization_17/beta/v
?
HAdam/module_wrapper_72/batch_normalization_17/beta/v/Read/ReadVariableOpReadVariableOp4Adam/module_wrapper_72/batch_normalization_17/beta/v*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_74/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/module_wrapper_74/dense_8/kernel/v
?
;Adam/module_wrapper_74/dense_8/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_74/dense_8/kernel/v*
_output_shapes
:	?*
dtype0
?
%Adam/module_wrapper_74/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_74/dense_8/bias/v
?
9Adam/module_wrapper_74/dense_8/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_74/dense_8/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ۀ
valueЀB̀ BĀ
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
?layer_metrics
?metrics
 ?layer_regularization_losses
regularization_losses
trainable_variables
?non_trainable_variables
	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
!regularization_losses
"trainable_variables
?non_trainable_variables
#	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
&regularization_losses
'trainable_variables
?non_trainable_variables
(	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
+regularization_losses
,trainable_variables
?non_trainable_variables
-	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
0regularization_losses
1trainable_variables
?non_trainable_variables
2	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
5regularization_losses
6trainable_variables
?non_trainable_variables
7	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
:regularization_losses
;trainable_variables
?non_trainable_variables
<	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
@trainable_variables
?non_trainable_variables
A	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
Dregularization_losses
Etrainable_variables
?non_trainable_variables
F	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
Iregularization_losses
Jtrainable_variables
?non_trainable_variables
K	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
Nregularization_losses
Otrainable_variables
?non_trainable_variables
P	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
Sregularization_losses
Ttrainable_variables
?non_trainable_variables
U	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
Xregularization_losses
Ytrainable_variables
?non_trainable_variables
Z	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
]regularization_losses
^trainable_variables
?non_trainable_variables
_	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
bregularization_losses
ctrainable_variables
?non_trainable_variables
d	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
gregularization_losses
htrainable_variables
?non_trainable_variables
i	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
lregularization_losses
mtrainable_variables
?non_trainable_variables
n	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
qregularization_losses
rtrainable_variables
?non_trainable_variables
s	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
vregularization_losses
wtrainable_variables
?non_trainable_variables
x	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
{regularization_losses
|trainable_variables
?non_trainable_variables
}	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
hf
VARIABLE_VALUE"module_wrapper_50/conv2d_10/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE module_wrapper_50/conv2d_10/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE"module_wrapper_51/conv2d_11/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE module_wrapper_51/conv2d_11/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE.module_wrapper_52/batch_normalization_12/gamma0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE-module_wrapper_52/batch_normalization_12/beta0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE"module_wrapper_55/conv2d_12/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE module_wrapper_55/conv2d_12/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE.module_wrapper_56/batch_normalization_13/gamma0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE-module_wrapper_56/batch_normalization_13/beta0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE"module_wrapper_59/conv2d_13/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE module_wrapper_59/conv2d_13/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE.module_wrapper_60/batch_normalization_14/gamma1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE-module_wrapper_60/batch_normalization_14/beta1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE"module_wrapper_63/conv2d_14/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE module_wrapper_63/conv2d_14/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE.module_wrapper_64/batch_normalization_15/gamma1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE-module_wrapper_64/batch_normalization_15/beta1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE module_wrapper_68/dense_6/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEmodule_wrapper_68/dense_6/bias1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE.module_wrapper_69/batch_normalization_16/gamma1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE-module_wrapper_69/batch_normalization_16/beta1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE module_wrapper_71/dense_7/kernel1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEmodule_wrapper_71/dense_7/bias1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE.module_wrapper_72/batch_normalization_17/gamma1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE-module_wrapper_72/batch_normalization_17/beta1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE module_wrapper_74/dense_8/kernel1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEmodule_wrapper_74/dense_8/bias1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE4module_wrapper_52/batch_normalization_12/moving_mean&variables/6/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE8module_wrapper_52/batch_normalization_12/moving_variance&variables/7/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE4module_wrapper_56/batch_normalization_13/moving_mean'variables/12/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE8module_wrapper_56/batch_normalization_13/moving_variance'variables/13/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE4module_wrapper_60/batch_normalization_14/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE8module_wrapper_60/batch_normalization_14/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE4module_wrapper_64/batch_normalization_15/moving_mean'variables/24/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE8module_wrapper_64/batch_normalization_15/moving_variance'variables/25/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE4module_wrapper_69/batch_normalization_16/moving_mean'variables/30/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE8module_wrapper_69/batch_normalization_16/moving_variance'variables/31/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE4module_wrapper_72/batch_normalization_17/moving_mean'variables/36/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE8module_wrapper_72/batch_normalization_17/moving_variance'variables/37/.ATTRIBUTES/VARIABLE_VALUE
 
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

?0
?1

?0
?1
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
 
 
 
 
 
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
 
 
 
 
 
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
 
 
 
 
 
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
 
 
 
 
 
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
 
 
 
 
 
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
VARIABLE_VALUE)Adam/module_wrapper_50/conv2d_10/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_50/conv2d_10/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_51/conv2d_11/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_51/conv2d_11/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_52/batch_normalization_12/gamma/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_52/batch_normalization_12/beta/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_55/conv2d_12/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_55/conv2d_12/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_56/batch_normalization_13/gamma/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_56/batch_normalization_13/beta/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_59/conv2d_13/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_59/conv2d_13/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_60/batch_normalization_14/gamma/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_60/batch_normalization_14/beta/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_63/conv2d_14/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_63/conv2d_14/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_64/batch_normalization_15/gamma/mMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_64/batch_normalization_15/beta/mMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_68/dense_6/kernel/mMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_68/dense_6/bias/mMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_69/batch_normalization_16/gamma/mMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_69/batch_normalization_16/beta/mMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_71/dense_7/kernel/mMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_71/dense_7/bias/mMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_72/batch_normalization_17/gamma/mMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_72/batch_normalization_17/beta/mMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_74/dense_8/kernel/mMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_74/dense_8/bias/mMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_50/conv2d_10/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_50/conv2d_10/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_51/conv2d_11/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_51/conv2d_11/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_52/batch_normalization_12/gamma/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_52/batch_normalization_12/beta/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_55/conv2d_12/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_55/conv2d_12/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_56/batch_normalization_13/gamma/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_56/batch_normalization_13/beta/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_59/conv2d_13/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_59/conv2d_13/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_60/batch_normalization_14/gamma/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_60/batch_normalization_14/beta/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_63/conv2d_14/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_63/conv2d_14/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_64/batch_normalization_15/gamma/vMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_64/batch_normalization_15/beta/vMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_68/dense_6/kernel/vMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_68/dense_6/bias/vMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_69/batch_normalization_16/gamma/vMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_69/batch_normalization_16/beta/vMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_71/dense_7/kernel/vMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_71/dense_7/bias/vMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/module_wrapper_72/batch_normalization_17/gamma/vMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/module_wrapper_72/batch_normalization_17/beta/vMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_74/dense_8/kernel/vMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_74/dense_8/bias/vMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
'serving_default_module_wrapper_50_inputPlaceholder*/
_output_shapes
:?????????00*
dtype0*$
shape:?????????00
?
StatefulPartitionedCallStatefulPartitionedCall'serving_default_module_wrapper_50_input"module_wrapper_50/conv2d_10/kernel module_wrapper_50/conv2d_10/bias"module_wrapper_51/conv2d_11/kernel module_wrapper_51/conv2d_11/bias.module_wrapper_52/batch_normalization_12/gamma-module_wrapper_52/batch_normalization_12/beta4module_wrapper_52/batch_normalization_12/moving_mean8module_wrapper_52/batch_normalization_12/moving_variance"module_wrapper_55/conv2d_12/kernel module_wrapper_55/conv2d_12/bias.module_wrapper_56/batch_normalization_13/gamma-module_wrapper_56/batch_normalization_13/beta4module_wrapper_56/batch_normalization_13/moving_mean8module_wrapper_56/batch_normalization_13/moving_variance"module_wrapper_59/conv2d_13/kernel module_wrapper_59/conv2d_13/bias.module_wrapper_60/batch_normalization_14/gamma-module_wrapper_60/batch_normalization_14/beta4module_wrapper_60/batch_normalization_14/moving_mean8module_wrapper_60/batch_normalization_14/moving_variance"module_wrapper_63/conv2d_14/kernel module_wrapper_63/conv2d_14/bias.module_wrapper_64/batch_normalization_15/gamma-module_wrapper_64/batch_normalization_15/beta4module_wrapper_64/batch_normalization_15/moving_mean8module_wrapper_64/batch_normalization_15/moving_variance module_wrapper_68/dense_6/kernelmodule_wrapper_68/dense_6/bias8module_wrapper_69/batch_normalization_16/moving_variance.module_wrapper_69/batch_normalization_16/gamma4module_wrapper_69/batch_normalization_16/moving_mean-module_wrapper_69/batch_normalization_16/beta module_wrapper_71/dense_7/kernelmodule_wrapper_71/dense_7/bias8module_wrapper_72/batch_normalization_17/moving_variance.module_wrapper_72/batch_normalization_17/gamma4module_wrapper_72/batch_normalization_17/moving_mean-module_wrapper_72/batch_normalization_17/beta module_wrapper_74/dense_8/kernelmodule_wrapper_74/dense_8/bias*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_53347
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?6
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp6module_wrapper_50/conv2d_10/kernel/Read/ReadVariableOp4module_wrapper_50/conv2d_10/bias/Read/ReadVariableOp6module_wrapper_51/conv2d_11/kernel/Read/ReadVariableOp4module_wrapper_51/conv2d_11/bias/Read/ReadVariableOpBmodule_wrapper_52/batch_normalization_12/gamma/Read/ReadVariableOpAmodule_wrapper_52/batch_normalization_12/beta/Read/ReadVariableOp6module_wrapper_55/conv2d_12/kernel/Read/ReadVariableOp4module_wrapper_55/conv2d_12/bias/Read/ReadVariableOpBmodule_wrapper_56/batch_normalization_13/gamma/Read/ReadVariableOpAmodule_wrapper_56/batch_normalization_13/beta/Read/ReadVariableOp6module_wrapper_59/conv2d_13/kernel/Read/ReadVariableOp4module_wrapper_59/conv2d_13/bias/Read/ReadVariableOpBmodule_wrapper_60/batch_normalization_14/gamma/Read/ReadVariableOpAmodule_wrapper_60/batch_normalization_14/beta/Read/ReadVariableOp6module_wrapper_63/conv2d_14/kernel/Read/ReadVariableOp4module_wrapper_63/conv2d_14/bias/Read/ReadVariableOpBmodule_wrapper_64/batch_normalization_15/gamma/Read/ReadVariableOpAmodule_wrapper_64/batch_normalization_15/beta/Read/ReadVariableOp4module_wrapper_68/dense_6/kernel/Read/ReadVariableOp2module_wrapper_68/dense_6/bias/Read/ReadVariableOpBmodule_wrapper_69/batch_normalization_16/gamma/Read/ReadVariableOpAmodule_wrapper_69/batch_normalization_16/beta/Read/ReadVariableOp4module_wrapper_71/dense_7/kernel/Read/ReadVariableOp2module_wrapper_71/dense_7/bias/Read/ReadVariableOpBmodule_wrapper_72/batch_normalization_17/gamma/Read/ReadVariableOpAmodule_wrapper_72/batch_normalization_17/beta/Read/ReadVariableOp4module_wrapper_74/dense_8/kernel/Read/ReadVariableOp2module_wrapper_74/dense_8/bias/Read/ReadVariableOpHmodule_wrapper_52/batch_normalization_12/moving_mean/Read/ReadVariableOpLmodule_wrapper_52/batch_normalization_12/moving_variance/Read/ReadVariableOpHmodule_wrapper_56/batch_normalization_13/moving_mean/Read/ReadVariableOpLmodule_wrapper_56/batch_normalization_13/moving_variance/Read/ReadVariableOpHmodule_wrapper_60/batch_normalization_14/moving_mean/Read/ReadVariableOpLmodule_wrapper_60/batch_normalization_14/moving_variance/Read/ReadVariableOpHmodule_wrapper_64/batch_normalization_15/moving_mean/Read/ReadVariableOpLmodule_wrapper_64/batch_normalization_15/moving_variance/Read/ReadVariableOpHmodule_wrapper_69/batch_normalization_16/moving_mean/Read/ReadVariableOpLmodule_wrapper_69/batch_normalization_16/moving_variance/Read/ReadVariableOpHmodule_wrapper_72/batch_normalization_17/moving_mean/Read/ReadVariableOpLmodule_wrapper_72/batch_normalization_17/moving_variance/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp=Adam/module_wrapper_50/conv2d_10/kernel/m/Read/ReadVariableOp;Adam/module_wrapper_50/conv2d_10/bias/m/Read/ReadVariableOp=Adam/module_wrapper_51/conv2d_11/kernel/m/Read/ReadVariableOp;Adam/module_wrapper_51/conv2d_11/bias/m/Read/ReadVariableOpIAdam/module_wrapper_52/batch_normalization_12/gamma/m/Read/ReadVariableOpHAdam/module_wrapper_52/batch_normalization_12/beta/m/Read/ReadVariableOp=Adam/module_wrapper_55/conv2d_12/kernel/m/Read/ReadVariableOp;Adam/module_wrapper_55/conv2d_12/bias/m/Read/ReadVariableOpIAdam/module_wrapper_56/batch_normalization_13/gamma/m/Read/ReadVariableOpHAdam/module_wrapper_56/batch_normalization_13/beta/m/Read/ReadVariableOp=Adam/module_wrapper_59/conv2d_13/kernel/m/Read/ReadVariableOp;Adam/module_wrapper_59/conv2d_13/bias/m/Read/ReadVariableOpIAdam/module_wrapper_60/batch_normalization_14/gamma/m/Read/ReadVariableOpHAdam/module_wrapper_60/batch_normalization_14/beta/m/Read/ReadVariableOp=Adam/module_wrapper_63/conv2d_14/kernel/m/Read/ReadVariableOp;Adam/module_wrapper_63/conv2d_14/bias/m/Read/ReadVariableOpIAdam/module_wrapper_64/batch_normalization_15/gamma/m/Read/ReadVariableOpHAdam/module_wrapper_64/batch_normalization_15/beta/m/Read/ReadVariableOp;Adam/module_wrapper_68/dense_6/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_68/dense_6/bias/m/Read/ReadVariableOpIAdam/module_wrapper_69/batch_normalization_16/gamma/m/Read/ReadVariableOpHAdam/module_wrapper_69/batch_normalization_16/beta/m/Read/ReadVariableOp;Adam/module_wrapper_71/dense_7/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_71/dense_7/bias/m/Read/ReadVariableOpIAdam/module_wrapper_72/batch_normalization_17/gamma/m/Read/ReadVariableOpHAdam/module_wrapper_72/batch_normalization_17/beta/m/Read/ReadVariableOp;Adam/module_wrapper_74/dense_8/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_74/dense_8/bias/m/Read/ReadVariableOp=Adam/module_wrapper_50/conv2d_10/kernel/v/Read/ReadVariableOp;Adam/module_wrapper_50/conv2d_10/bias/v/Read/ReadVariableOp=Adam/module_wrapper_51/conv2d_11/kernel/v/Read/ReadVariableOp;Adam/module_wrapper_51/conv2d_11/bias/v/Read/ReadVariableOpIAdam/module_wrapper_52/batch_normalization_12/gamma/v/Read/ReadVariableOpHAdam/module_wrapper_52/batch_normalization_12/beta/v/Read/ReadVariableOp=Adam/module_wrapper_55/conv2d_12/kernel/v/Read/ReadVariableOp;Adam/module_wrapper_55/conv2d_12/bias/v/Read/ReadVariableOpIAdam/module_wrapper_56/batch_normalization_13/gamma/v/Read/ReadVariableOpHAdam/module_wrapper_56/batch_normalization_13/beta/v/Read/ReadVariableOp=Adam/module_wrapper_59/conv2d_13/kernel/v/Read/ReadVariableOp;Adam/module_wrapper_59/conv2d_13/bias/v/Read/ReadVariableOpIAdam/module_wrapper_60/batch_normalization_14/gamma/v/Read/ReadVariableOpHAdam/module_wrapper_60/batch_normalization_14/beta/v/Read/ReadVariableOp=Adam/module_wrapper_63/conv2d_14/kernel/v/Read/ReadVariableOp;Adam/module_wrapper_63/conv2d_14/bias/v/Read/ReadVariableOpIAdam/module_wrapper_64/batch_normalization_15/gamma/v/Read/ReadVariableOpHAdam/module_wrapper_64/batch_normalization_15/beta/v/Read/ReadVariableOp;Adam/module_wrapper_68/dense_6/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_68/dense_6/bias/v/Read/ReadVariableOpIAdam/module_wrapper_69/batch_normalization_16/gamma/v/Read/ReadVariableOpHAdam/module_wrapper_69/batch_normalization_16/beta/v/Read/ReadVariableOp;Adam/module_wrapper_71/dense_7/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_71/dense_7/bias/v/Read/ReadVariableOpIAdam/module_wrapper_72/batch_normalization_17/gamma/v/Read/ReadVariableOpHAdam/module_wrapper_72/batch_normalization_17/beta/v/Read/ReadVariableOp;Adam/module_wrapper_74/dense_8/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_74/dense_8/bias/v/Read/ReadVariableOpConst*v
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
__inference__traced_save_57116
?&
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate"module_wrapper_50/conv2d_10/kernel module_wrapper_50/conv2d_10/bias"module_wrapper_51/conv2d_11/kernel module_wrapper_51/conv2d_11/bias.module_wrapper_52/batch_normalization_12/gamma-module_wrapper_52/batch_normalization_12/beta"module_wrapper_55/conv2d_12/kernel module_wrapper_55/conv2d_12/bias.module_wrapper_56/batch_normalization_13/gamma-module_wrapper_56/batch_normalization_13/beta"module_wrapper_59/conv2d_13/kernel module_wrapper_59/conv2d_13/bias.module_wrapper_60/batch_normalization_14/gamma-module_wrapper_60/batch_normalization_14/beta"module_wrapper_63/conv2d_14/kernel module_wrapper_63/conv2d_14/bias.module_wrapper_64/batch_normalization_15/gamma-module_wrapper_64/batch_normalization_15/beta module_wrapper_68/dense_6/kernelmodule_wrapper_68/dense_6/bias.module_wrapper_69/batch_normalization_16/gamma-module_wrapper_69/batch_normalization_16/beta module_wrapper_71/dense_7/kernelmodule_wrapper_71/dense_7/bias.module_wrapper_72/batch_normalization_17/gamma-module_wrapper_72/batch_normalization_17/beta module_wrapper_74/dense_8/kernelmodule_wrapper_74/dense_8/bias4module_wrapper_52/batch_normalization_12/moving_mean8module_wrapper_52/batch_normalization_12/moving_variance4module_wrapper_56/batch_normalization_13/moving_mean8module_wrapper_56/batch_normalization_13/moving_variance4module_wrapper_60/batch_normalization_14/moving_mean8module_wrapper_60/batch_normalization_14/moving_variance4module_wrapper_64/batch_normalization_15/moving_mean8module_wrapper_64/batch_normalization_15/moving_variance4module_wrapper_69/batch_normalization_16/moving_mean8module_wrapper_69/batch_normalization_16/moving_variance4module_wrapper_72/batch_normalization_17/moving_mean8module_wrapper_72/batch_normalization_17/moving_variancetotalcounttotal_1count_1)Adam/module_wrapper_50/conv2d_10/kernel/m'Adam/module_wrapper_50/conv2d_10/bias/m)Adam/module_wrapper_51/conv2d_11/kernel/m'Adam/module_wrapper_51/conv2d_11/bias/m5Adam/module_wrapper_52/batch_normalization_12/gamma/m4Adam/module_wrapper_52/batch_normalization_12/beta/m)Adam/module_wrapper_55/conv2d_12/kernel/m'Adam/module_wrapper_55/conv2d_12/bias/m5Adam/module_wrapper_56/batch_normalization_13/gamma/m4Adam/module_wrapper_56/batch_normalization_13/beta/m)Adam/module_wrapper_59/conv2d_13/kernel/m'Adam/module_wrapper_59/conv2d_13/bias/m5Adam/module_wrapper_60/batch_normalization_14/gamma/m4Adam/module_wrapper_60/batch_normalization_14/beta/m)Adam/module_wrapper_63/conv2d_14/kernel/m'Adam/module_wrapper_63/conv2d_14/bias/m5Adam/module_wrapper_64/batch_normalization_15/gamma/m4Adam/module_wrapper_64/batch_normalization_15/beta/m'Adam/module_wrapper_68/dense_6/kernel/m%Adam/module_wrapper_68/dense_6/bias/m5Adam/module_wrapper_69/batch_normalization_16/gamma/m4Adam/module_wrapper_69/batch_normalization_16/beta/m'Adam/module_wrapper_71/dense_7/kernel/m%Adam/module_wrapper_71/dense_7/bias/m5Adam/module_wrapper_72/batch_normalization_17/gamma/m4Adam/module_wrapper_72/batch_normalization_17/beta/m'Adam/module_wrapper_74/dense_8/kernel/m%Adam/module_wrapper_74/dense_8/bias/m)Adam/module_wrapper_50/conv2d_10/kernel/v'Adam/module_wrapper_50/conv2d_10/bias/v)Adam/module_wrapper_51/conv2d_11/kernel/v'Adam/module_wrapper_51/conv2d_11/bias/v5Adam/module_wrapper_52/batch_normalization_12/gamma/v4Adam/module_wrapper_52/batch_normalization_12/beta/v)Adam/module_wrapper_55/conv2d_12/kernel/v'Adam/module_wrapper_55/conv2d_12/bias/v5Adam/module_wrapper_56/batch_normalization_13/gamma/v4Adam/module_wrapper_56/batch_normalization_13/beta/v)Adam/module_wrapper_59/conv2d_13/kernel/v'Adam/module_wrapper_59/conv2d_13/bias/v5Adam/module_wrapper_60/batch_normalization_14/gamma/v4Adam/module_wrapper_60/batch_normalization_14/beta/v)Adam/module_wrapper_63/conv2d_14/kernel/v'Adam/module_wrapper_63/conv2d_14/bias/v5Adam/module_wrapper_64/batch_normalization_15/gamma/v4Adam/module_wrapper_64/batch_normalization_15/beta/v'Adam/module_wrapper_68/dense_6/kernel/v%Adam/module_wrapper_68/dense_6/bias/v5Adam/module_wrapper_69/batch_normalization_16/gamma/v4Adam/module_wrapper_69/batch_normalization_16/beta/v'Adam/module_wrapper_71/dense_7/kernel/v%Adam/module_wrapper_71/dense_7/bias/v5Adam/module_wrapper_72/batch_normalization_17/gamma/v4Adam/module_wrapper_72/batch_normalization_17/beta/v'Adam/module_wrapper_74/dense_8/kernel/v%Adam/module_wrapper_74/dense_8/bias/v*u
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
!__inference__traced_restore_57441??,
?
K
/__inference_max_pooling2d_9_layer_call_fn_53624

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
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_536182
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
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_51767

args_0:
&dense_7_matmul_readvariableop_resource:
??6
'dense_7_biasadd_readvariableop_resource:	?
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulargs_0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_7/BiasAddq
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_7/Relu?
IdentityIdentitydense_7/Relu:activations:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_53618

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
?
?
1__inference_module_wrapper_51_layer_call_fn_55402

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_526352
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
?
?
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_55860

args_0D
(conv2d_14_conv2d_readvariableop_resource:??8
)conv2d_14_biasadd_readvariableop_resource:	?
identity?? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2Dargs_0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_14/Relu?
IdentityIdentityconv2d_14/Relu:activations:0!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_66_layer_call_fn_55958

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
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_516922
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
h
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_51808

args_0
identityq
dropout_17/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_17/Identityq
IdentityIdentitydropout_17/Identity:output:0*
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
?
h
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_51574

args_0
identityy
dropout_13/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_13/Identityy
IdentityIdentitydropout_13/Identity:output:0*
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
1__inference_module_wrapper_53_layer_call_fn_55491

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_515082
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
?
?
1__inference_module_wrapper_50_layer_call_fn_55362

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_526652
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
?
L
0__inference_max_pooling2d_11_layer_call_fn_53900

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
GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_538942
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
?
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_52601

args_0<
.batch_normalization_12_readvariableop_resource:@>
0batch_normalization_12_readvariableop_1_resource:@M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@
identity??%batch_normalization_12/AssignNewValue?'batch_normalization_12/AssignNewValue_1?6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_12/ReadVariableOp?'batch_normalization_12/ReadVariableOp_1?
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_12/ReadVariableOp?
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_12/ReadVariableOp_1?
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_12/FusedBatchNormV3?
%batch_normalization_12/AssignNewValueAssignVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource4batch_normalization_12/FusedBatchNormV3:batch_mean:07^batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_12/AssignNewValue?
'batch_normalization_12/AssignNewValue_1AssignVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_12/FusedBatchNormV3:batch_variance:09^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_12/AssignNewValue_1?
IdentityIdentity+batch_normalization_12/FusedBatchNormV3:y:0&^batch_normalization_12/AssignNewValue(^batch_normalization_12/AssignNewValue_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2N
%batch_normalization_12/AssignNewValue%batch_normalization_12/AssignNewValue2R
'batch_normalization_12/AssignNewValue_1'batch_normalization_12/AssignNewValue_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_52336

args_0
identity?
max_pooling2d_10/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool~
IdentityIdentity!max_pooling2d_10/MaxPool:output:0*
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
?
?
1__inference_module_wrapper_59_layer_call_fn_55700

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_524072
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
?
h
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_52183

args_0
identitys
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapeargs_0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten_2/Reshapeo
IdentityIdentityflatten_2/Reshape:output:0*
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
?
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_56510

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
?
?
1__inference_module_wrapper_60_layer_call_fn_55748

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
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_523732
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
?
?
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_51493

args_0<
.batch_normalization_12_readvariableop_resource:@>
0batch_normalization_12_readvariableop_1_resource:@M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@
identity??6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_12/ReadVariableOp?'batch_normalization_12/ReadVariableOp_1?
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_12/ReadVariableOp?
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_12/ReadVariableOp_1?
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_12/FusedBatchNormV3?
IdentityIdentity+batch_normalization_12/FusedBatchNormV3:y:07^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_52293

args_0D
(conv2d_14_conv2d_readvariableop_resource:??8
)conv2d_14_biasadd_readvariableop_resource:	?
identity?? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2Dargs_0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_14/Relu?
IdentityIdentityconv2d_14/Relu:activations:0!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_55521

args_0
identityx
dropout_12/IdentityIdentityargs_0*
T0*/
_output_shapes
:?????????@2
dropout_12/Identityx
IdentityIdentitydropout_12/Identity:output:0*
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
?
?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_53508

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
?
?
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_51552

args_0=
.batch_normalization_13_readvariableop_resource:	??
0batch_normalization_13_readvariableop_1_resource:	?N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?
identity??6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_13/ReadVariableOp?'batch_normalization_13/ReadVariableOp_1?
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_13/ReadVariableOp?
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_13/ReadVariableOp_1?
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_13/FusedBatchNormV3?
IdentityIdentity+batch_normalization_13/FusedBatchNormV3:y:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_51452

args_0B
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: 
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2Dargs_0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
conv2d_10/Relu?
IdentityIdentityconv2d_10/Relu:activations:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_55915

args_0=
.batch_normalization_15_readvariableop_resource:	??
0batch_normalization_15_readvariableop_1_resource:	?N
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?
identity??6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_15/ReadVariableOp?'batch_normalization_15/ReadVariableOp_1?
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_15/ReadVariableOp?
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_15/ReadVariableOp_1?
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_15/FusedBatchNormV3?
IdentityIdentity+batch_normalization_15/FusedBatchNormV3:y:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_74_layer_call_fn_56314

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_519342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

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
?
M
1__inference_module_wrapper_73_layer_call_fn_56274

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
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_518082
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
?
?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_53784

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
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_55373

args_0B
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: 
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2Dargs_0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
conv2d_10/Relu?
IdentityIdentityconv2d_10/Relu:activations:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_51633

args_0
identityy
dropout_14/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_14/Identityy
IdentityIdentitydropout_14/Identity:output:0*
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
?
j
1__inference_module_wrapper_70_layer_call_fn_56132

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
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_520752
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
??
?5
G__inference_sequential_2_layer_call_and_return_conditional_losses_55344
module_wrapper_50_inputT
:module_wrapper_50_conv2d_10_conv2d_readvariableop_resource: I
;module_wrapper_50_conv2d_10_biasadd_readvariableop_resource: T
:module_wrapper_51_conv2d_11_conv2d_readvariableop_resource: @I
;module_wrapper_51_conv2d_11_biasadd_readvariableop_resource:@N
@module_wrapper_52_batch_normalization_12_readvariableop_resource:@P
Bmodule_wrapper_52_batch_normalization_12_readvariableop_1_resource:@_
Qmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@a
Smodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@U
:module_wrapper_55_conv2d_12_conv2d_readvariableop_resource:@?J
;module_wrapper_55_conv2d_12_biasadd_readvariableop_resource:	?O
@module_wrapper_56_batch_normalization_13_readvariableop_resource:	?Q
Bmodule_wrapper_56_batch_normalization_13_readvariableop_1_resource:	?`
Qmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?V
:module_wrapper_59_conv2d_13_conv2d_readvariableop_resource:??J
;module_wrapper_59_conv2d_13_biasadd_readvariableop_resource:	?O
@module_wrapper_60_batch_normalization_14_readvariableop_resource:	?Q
Bmodule_wrapper_60_batch_normalization_14_readvariableop_1_resource:	?`
Qmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?V
:module_wrapper_63_conv2d_14_conv2d_readvariableop_resource:??J
;module_wrapper_63_conv2d_14_biasadd_readvariableop_resource:	?O
@module_wrapper_64_batch_normalization_15_readvariableop_resource:	?Q
Bmodule_wrapper_64_batch_normalization_15_readvariableop_1_resource:	?`
Qmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?L
8module_wrapper_68_dense_6_matmul_readvariableop_resource:
?$?H
9module_wrapper_68_dense_6_biasadd_readvariableop_resource:	?_
Pmodule_wrapper_69_batch_normalization_16_assignmovingavg_readvariableop_resource:	?a
Rmodule_wrapper_69_batch_normalization_16_assignmovingavg_1_readvariableop_resource:	?]
Nmodule_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource:	?Y
Jmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource:	?L
8module_wrapper_71_dense_7_matmul_readvariableop_resource:
??H
9module_wrapper_71_dense_7_biasadd_readvariableop_resource:	?_
Pmodule_wrapper_72_batch_normalization_17_assignmovingavg_readvariableop_resource:	?a
Rmodule_wrapper_72_batch_normalization_17_assignmovingavg_1_readvariableop_resource:	?]
Nmodule_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource:	?Y
Jmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource:	?K
8module_wrapper_74_dense_8_matmul_readvariableop_resource:	?G
9module_wrapper_74_dense_8_biasadd_readvariableop_resource:
identity??2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp?2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?7module_wrapper_52/batch_normalization_12/AssignNewValue?9module_wrapper_52/batch_normalization_12/AssignNewValue_1?Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_52/batch_normalization_12/ReadVariableOp?9module_wrapper_52/batch_normalization_12/ReadVariableOp_1?2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?7module_wrapper_56/batch_normalization_13/AssignNewValue?9module_wrapper_56/batch_normalization_13/AssignNewValue_1?Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_56/batch_normalization_13/ReadVariableOp?9module_wrapper_56/batch_normalization_13/ReadVariableOp_1?2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?7module_wrapper_60/batch_normalization_14/AssignNewValue?9module_wrapper_60/batch_normalization_14/AssignNewValue_1?Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_60/batch_normalization_14/ReadVariableOp?9module_wrapper_60/batch_normalization_14/ReadVariableOp_1?2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?7module_wrapper_64/batch_normalization_15/AssignNewValue?9module_wrapper_64/batch_normalization_15/AssignNewValue_1?Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_64/batch_normalization_15/ReadVariableOp?9module_wrapper_64/batch_normalization_15/ReadVariableOp_1?0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?/module_wrapper_68/dense_6/MatMul/ReadVariableOp?8module_wrapper_69/batch_normalization_16/AssignMovingAvg?Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp?:module_wrapper_69/batch_normalization_16/AssignMovingAvg_1?Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?/module_wrapper_71/dense_7/MatMul/ReadVariableOp?8module_wrapper_72/batch_normalization_17/AssignMovingAvg?Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp?:module_wrapper_72/batch_normalization_17/AssignMovingAvg_1?Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp?Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_50_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp?
"module_wrapper_50/conv2d_10/Conv2DConv2Dmodule_wrapper_50_input9module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2$
"module_wrapper_50/conv2d_10/Conv2D?
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_50_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?
#module_wrapper_50/conv2d_10/BiasAddBiasAdd+module_wrapper_50/conv2d_10/Conv2D:output:0:module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2%
#module_wrapper_50/conv2d_10/BiasAdd?
 module_wrapper_50/conv2d_10/ReluRelu,module_wrapper_50/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2"
 module_wrapper_50/conv2d_10/Relu?
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_51_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype023
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?
"module_wrapper_51/conv2d_11/Conv2DConv2D.module_wrapper_50/conv2d_10/Relu:activations:09module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2$
"module_wrapper_51/conv2d_11/Conv2D?
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_51_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype024
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?
#module_wrapper_51/conv2d_11/BiasAddBiasAdd+module_wrapper_51/conv2d_11/Conv2D:output:0:module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2%
#module_wrapper_51/conv2d_11/BiasAdd?
 module_wrapper_51/conv2d_11/ReluRelu,module_wrapper_51/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2"
 module_wrapper_51/conv2d_11/Relu?
7module_wrapper_52/batch_normalization_12/ReadVariableOpReadVariableOp@module_wrapper_52_batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype029
7module_wrapper_52/batch_normalization_12/ReadVariableOp?
9module_wrapper_52/batch_normalization_12/ReadVariableOp_1ReadVariableOpBmodule_wrapper_52_batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9module_wrapper_52/batch_normalization_12/ReadVariableOp_1?
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02J
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02L
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_52/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3.module_wrapper_51/conv2d_11/Relu:activations:0?module_wrapper_52/batch_normalization_12/ReadVariableOp:value:0Amodule_wrapper_52/batch_normalization_12/ReadVariableOp_1:value:0Pmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2;
9module_wrapper_52/batch_normalization_12/FusedBatchNormV3?
7module_wrapper_52/batch_normalization_12/AssignNewValueAssignVariableOpQmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resourceFmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3:batch_mean:0I^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_52/batch_normalization_12/AssignNewValue?
9module_wrapper_52/batch_normalization_12/AssignNewValue_1AssignVariableOpSmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resourceJmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3:batch_variance:0K^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02;
9module_wrapper_52/batch_normalization_12/AssignNewValue_1?
)module_wrapper_53/max_pooling2d_8/MaxPoolMaxPool=module_wrapper_52/batch_normalization_12/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_53/max_pooling2d_8/MaxPool?
*module_wrapper_54/dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_54/dropout_12/dropout/Const?
(module_wrapper_54/dropout_12/dropout/MulMul2module_wrapper_53/max_pooling2d_8/MaxPool:output:03module_wrapper_54/dropout_12/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2*
(module_wrapper_54/dropout_12/dropout/Mul?
*module_wrapper_54/dropout_12/dropout/ShapeShape2module_wrapper_53/max_pooling2d_8/MaxPool:output:0*
T0*
_output_shapes
:2,
*module_wrapper_54/dropout_12/dropout/Shape?
Amodule_wrapper_54/dropout_12/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_54/dropout_12/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02C
Amodule_wrapper_54/dropout_12/dropout/random_uniform/RandomUniform?
3module_wrapper_54/dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_54/dropout_12/dropout/GreaterEqual/y?
1module_wrapper_54/dropout_12/dropout/GreaterEqualGreaterEqualJmodule_wrapper_54/dropout_12/dropout/random_uniform/RandomUniform:output:0<module_wrapper_54/dropout_12/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@23
1module_wrapper_54/dropout_12/dropout/GreaterEqual?
)module_wrapper_54/dropout_12/dropout/CastCast5module_wrapper_54/dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2+
)module_wrapper_54/dropout_12/dropout/Cast?
*module_wrapper_54/dropout_12/dropout/Mul_1Mul,module_wrapper_54/dropout_12/dropout/Mul:z:0-module_wrapper_54/dropout_12/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2,
*module_wrapper_54/dropout_12/dropout/Mul_1?
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_55_conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?
"module_wrapper_55/conv2d_12/Conv2DConv2D.module_wrapper_54/dropout_12/dropout/Mul_1:z:09module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_55/conv2d_12/Conv2D?
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_55_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?
#module_wrapper_55/conv2d_12/BiasAddBiasAdd+module_wrapper_55/conv2d_12/Conv2D:output:0:module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_55/conv2d_12/BiasAdd?
 module_wrapper_55/conv2d_12/ReluRelu,module_wrapper_55/conv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_55/conv2d_12/Relu?
7module_wrapper_56/batch_normalization_13/ReadVariableOpReadVariableOp@module_wrapper_56_batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_56/batch_normalization_13/ReadVariableOp?
9module_wrapper_56/batch_normalization_13/ReadVariableOp_1ReadVariableOpBmodule_wrapper_56_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_56/batch_normalization_13/ReadVariableOp_1?
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_56/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3.module_wrapper_55/conv2d_12/Relu:activations:0?module_wrapper_56/batch_normalization_13/ReadVariableOp:value:0Amodule_wrapper_56/batch_normalization_13/ReadVariableOp_1:value:0Pmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2;
9module_wrapper_56/batch_normalization_13/FusedBatchNormV3?
7module_wrapper_56/batch_normalization_13/AssignNewValueAssignVariableOpQmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resourceFmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3:batch_mean:0I^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_56/batch_normalization_13/AssignNewValue?
9module_wrapper_56/batch_normalization_13/AssignNewValue_1AssignVariableOpSmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resourceJmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3:batch_variance:0K^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02;
9module_wrapper_56/batch_normalization_13/AssignNewValue_1?
)module_wrapper_57/max_pooling2d_9/MaxPoolMaxPool=module_wrapper_56/batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_57/max_pooling2d_9/MaxPool?
*module_wrapper_58/dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_58/dropout_13/dropout/Const?
(module_wrapper_58/dropout_13/dropout/MulMul2module_wrapper_57/max_pooling2d_9/MaxPool:output:03module_wrapper_58/dropout_13/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2*
(module_wrapper_58/dropout_13/dropout/Mul?
*module_wrapper_58/dropout_13/dropout/ShapeShape2module_wrapper_57/max_pooling2d_9/MaxPool:output:0*
T0*
_output_shapes
:2,
*module_wrapper_58/dropout_13/dropout/Shape?
Amodule_wrapper_58/dropout_13/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_58/dropout_13/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_58/dropout_13/dropout/random_uniform/RandomUniform?
3module_wrapper_58/dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_58/dropout_13/dropout/GreaterEqual/y?
1module_wrapper_58/dropout_13/dropout/GreaterEqualGreaterEqualJmodule_wrapper_58/dropout_13/dropout/random_uniform/RandomUniform:output:0<module_wrapper_58/dropout_13/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????23
1module_wrapper_58/dropout_13/dropout/GreaterEqual?
)module_wrapper_58/dropout_13/dropout/CastCast5module_wrapper_58/dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2+
)module_wrapper_58/dropout_13/dropout/Cast?
*module_wrapper_58/dropout_13/dropout/Mul_1Mul,module_wrapper_58/dropout_13/dropout/Mul:z:0-module_wrapper_58/dropout_13/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2,
*module_wrapper_58/dropout_13/dropout/Mul_1?
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_59_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?
"module_wrapper_59/conv2d_13/Conv2DConv2D.module_wrapper_58/dropout_13/dropout/Mul_1:z:09module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_59/conv2d_13/Conv2D?
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_59_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?
#module_wrapper_59/conv2d_13/BiasAddBiasAdd+module_wrapper_59/conv2d_13/Conv2D:output:0:module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_59/conv2d_13/BiasAdd?
 module_wrapper_59/conv2d_13/ReluRelu,module_wrapper_59/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_59/conv2d_13/Relu?
7module_wrapper_60/batch_normalization_14/ReadVariableOpReadVariableOp@module_wrapper_60_batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_60/batch_normalization_14/ReadVariableOp?
9module_wrapper_60/batch_normalization_14/ReadVariableOp_1ReadVariableOpBmodule_wrapper_60_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_60/batch_normalization_14/ReadVariableOp_1?
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_60/batch_normalization_14/FusedBatchNormV3FusedBatchNormV3.module_wrapper_59/conv2d_13/Relu:activations:0?module_wrapper_60/batch_normalization_14/ReadVariableOp:value:0Amodule_wrapper_60/batch_normalization_14/ReadVariableOp_1:value:0Pmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2;
9module_wrapper_60/batch_normalization_14/FusedBatchNormV3?
7module_wrapper_60/batch_normalization_14/AssignNewValueAssignVariableOpQmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resourceFmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3:batch_mean:0I^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_60/batch_normalization_14/AssignNewValue?
9module_wrapper_60/batch_normalization_14/AssignNewValue_1AssignVariableOpSmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resourceJmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3:batch_variance:0K^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02;
9module_wrapper_60/batch_normalization_14/AssignNewValue_1?
*module_wrapper_61/max_pooling2d_10/MaxPoolMaxPool=module_wrapper_60/batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2,
*module_wrapper_61/max_pooling2d_10/MaxPool?
*module_wrapper_62/dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_62/dropout_14/dropout/Const?
(module_wrapper_62/dropout_14/dropout/MulMul3module_wrapper_61/max_pooling2d_10/MaxPool:output:03module_wrapper_62/dropout_14/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2*
(module_wrapper_62/dropout_14/dropout/Mul?
*module_wrapper_62/dropout_14/dropout/ShapeShape3module_wrapper_61/max_pooling2d_10/MaxPool:output:0*
T0*
_output_shapes
:2,
*module_wrapper_62/dropout_14/dropout/Shape?
Amodule_wrapper_62/dropout_14/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_62/dropout_14/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_62/dropout_14/dropout/random_uniform/RandomUniform?
3module_wrapper_62/dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_62/dropout_14/dropout/GreaterEqual/y?
1module_wrapper_62/dropout_14/dropout/GreaterEqualGreaterEqualJmodule_wrapper_62/dropout_14/dropout/random_uniform/RandomUniform:output:0<module_wrapper_62/dropout_14/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????23
1module_wrapper_62/dropout_14/dropout/GreaterEqual?
)module_wrapper_62/dropout_14/dropout/CastCast5module_wrapper_62/dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2+
)module_wrapper_62/dropout_14/dropout/Cast?
*module_wrapper_62/dropout_14/dropout/Mul_1Mul,module_wrapper_62/dropout_14/dropout/Mul:z:0-module_wrapper_62/dropout_14/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2,
*module_wrapper_62/dropout_14/dropout/Mul_1?
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_63_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?
"module_wrapper_63/conv2d_14/Conv2DConv2D.module_wrapper_62/dropout_14/dropout/Mul_1:z:09module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_63/conv2d_14/Conv2D?
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_63_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?
#module_wrapper_63/conv2d_14/BiasAddBiasAdd+module_wrapper_63/conv2d_14/Conv2D:output:0:module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_63/conv2d_14/BiasAdd?
 module_wrapper_63/conv2d_14/ReluRelu,module_wrapper_63/conv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_63/conv2d_14/Relu?
7module_wrapper_64/batch_normalization_15/ReadVariableOpReadVariableOp@module_wrapper_64_batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_64/batch_normalization_15/ReadVariableOp?
9module_wrapper_64/batch_normalization_15/ReadVariableOp_1ReadVariableOpBmodule_wrapper_64_batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_64/batch_normalization_15/ReadVariableOp_1?
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_64/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3.module_wrapper_63/conv2d_14/Relu:activations:0?module_wrapper_64/batch_normalization_15/ReadVariableOp:value:0Amodule_wrapper_64/batch_normalization_15/ReadVariableOp_1:value:0Pmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2;
9module_wrapper_64/batch_normalization_15/FusedBatchNormV3?
7module_wrapper_64/batch_normalization_15/AssignNewValueAssignVariableOpQmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resourceFmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3:batch_mean:0I^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_64/batch_normalization_15/AssignNewValue?
9module_wrapper_64/batch_normalization_15/AssignNewValue_1AssignVariableOpSmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resourceJmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3:batch_variance:0K^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02;
9module_wrapper_64/batch_normalization_15/AssignNewValue_1?
*module_wrapper_65/max_pooling2d_11/MaxPoolMaxPool=module_wrapper_64/batch_normalization_15/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2,
*module_wrapper_65/max_pooling2d_11/MaxPool?
*module_wrapper_66/dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_66/dropout_15/dropout/Const?
(module_wrapper_66/dropout_15/dropout/MulMul3module_wrapper_65/max_pooling2d_11/MaxPool:output:03module_wrapper_66/dropout_15/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2*
(module_wrapper_66/dropout_15/dropout/Mul?
*module_wrapper_66/dropout_15/dropout/ShapeShape3module_wrapper_65/max_pooling2d_11/MaxPool:output:0*
T0*
_output_shapes
:2,
*module_wrapper_66/dropout_15/dropout/Shape?
Amodule_wrapper_66/dropout_15/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_66/dropout_15/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_66/dropout_15/dropout/random_uniform/RandomUniform?
3module_wrapper_66/dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_66/dropout_15/dropout/GreaterEqual/y?
1module_wrapper_66/dropout_15/dropout/GreaterEqualGreaterEqualJmodule_wrapper_66/dropout_15/dropout/random_uniform/RandomUniform:output:0<module_wrapper_66/dropout_15/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????23
1module_wrapper_66/dropout_15/dropout/GreaterEqual?
)module_wrapper_66/dropout_15/dropout/CastCast5module_wrapper_66/dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2+
)module_wrapper_66/dropout_15/dropout/Cast?
*module_wrapper_66/dropout_15/dropout/Mul_1Mul,module_wrapper_66/dropout_15/dropout/Mul:z:0-module_wrapper_66/dropout_15/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2,
*module_wrapper_66/dropout_15/dropout/Mul_1?
!module_wrapper_67/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2#
!module_wrapper_67/flatten_2/Const?
#module_wrapper_67/flatten_2/ReshapeReshape.module_wrapper_66/dropout_15/dropout/Mul_1:z:0*module_wrapper_67/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????$2%
#module_wrapper_67/flatten_2/Reshape?
/module_wrapper_68/dense_6/MatMul/ReadVariableOpReadVariableOp8module_wrapper_68_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype021
/module_wrapper_68/dense_6/MatMul/ReadVariableOp?
 module_wrapper_68/dense_6/MatMulMatMul,module_wrapper_67/flatten_2/Reshape:output:07module_wrapper_68/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_68/dense_6/MatMul?
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_68_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?
!module_wrapper_68/dense_6/BiasAddBiasAdd*module_wrapper_68/dense_6/MatMul:product:08module_wrapper_68/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_68/dense_6/BiasAdd?
module_wrapper_68/dense_6/ReluRelu*module_wrapper_68/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_68/dense_6/Relu?
Gmodule_wrapper_69/batch_normalization_16/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gmodule_wrapper_69/batch_normalization_16/moments/mean/reduction_indices?
5module_wrapper_69/batch_normalization_16/moments/meanMean,module_wrapper_68/dense_6/Relu:activations:0Pmodule_wrapper_69/batch_normalization_16/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(27
5module_wrapper_69/batch_normalization_16/moments/mean?
=module_wrapper_69/batch_normalization_16/moments/StopGradientStopGradient>module_wrapper_69/batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes
:	?2?
=module_wrapper_69/batch_normalization_16/moments/StopGradient?
Bmodule_wrapper_69/batch_normalization_16/moments/SquaredDifferenceSquaredDifference,module_wrapper_68/dense_6/Relu:activations:0Fmodule_wrapper_69/batch_normalization_16/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2D
Bmodule_wrapper_69/batch_normalization_16/moments/SquaredDifference?
Kmodule_wrapper_69/batch_normalization_16/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2M
Kmodule_wrapper_69/batch_normalization_16/moments/variance/reduction_indices?
9module_wrapper_69/batch_normalization_16/moments/varianceMeanFmodule_wrapper_69/batch_normalization_16/moments/SquaredDifference:z:0Tmodule_wrapper_69/batch_normalization_16/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2;
9module_wrapper_69/batch_normalization_16/moments/variance?
8module_wrapper_69/batch_normalization_16/moments/SqueezeSqueeze>module_wrapper_69/batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2:
8module_wrapper_69/batch_normalization_16/moments/Squeeze?
:module_wrapper_69/batch_normalization_16/moments/Squeeze_1SqueezeBmodule_wrapper_69/batch_normalization_16/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2<
:module_wrapper_69/batch_normalization_16/moments/Squeeze_1?
>module_wrapper_69/batch_normalization_16/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2@
>module_wrapper_69/batch_normalization_16/AssignMovingAvg/decay?
Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOpReadVariableOpPmodule_wrapper_69_batch_normalization_16_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp?
<module_wrapper_69/batch_normalization_16/AssignMovingAvg/subSubOmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp:value:0Amodule_wrapper_69/batch_normalization_16/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2>
<module_wrapper_69/batch_normalization_16/AssignMovingAvg/sub?
<module_wrapper_69/batch_normalization_16/AssignMovingAvg/mulMul@module_wrapper_69/batch_normalization_16/AssignMovingAvg/sub:z:0Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2>
<module_wrapper_69/batch_normalization_16/AssignMovingAvg/mul?
8module_wrapper_69/batch_normalization_16/AssignMovingAvgAssignSubVariableOpPmodule_wrapper_69_batch_normalization_16_assignmovingavg_readvariableop_resource@module_wrapper_69/batch_normalization_16/AssignMovingAvg/mul:z:0H^module_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02:
8module_wrapper_69/batch_normalization_16/AssignMovingAvg?
@module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2B
@module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/decay?
Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOpReadVariableOpRmodule_wrapper_69_batch_normalization_16_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?
>module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/subSubQmodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp:value:0Cmodule_wrapper_69/batch_normalization_16/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2@
>module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/sub?
>module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/mulMulBmodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/sub:z:0Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2@
>module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/mul?
:module_wrapper_69/batch_normalization_16/AssignMovingAvg_1AssignSubVariableOpRmodule_wrapper_69_batch_normalization_16_assignmovingavg_1_readvariableop_resourceBmodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/mul:z:0J^module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02<
:module_wrapper_69/batch_normalization_16/AssignMovingAvg_1?
8module_wrapper_69/batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8module_wrapper_69/batch_normalization_16/batchnorm/add/y?
6module_wrapper_69/batch_normalization_16/batchnorm/addAddV2Cmodule_wrapper_69/batch_normalization_16/moments/Squeeze_1:output:0Amodule_wrapper_69/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/add?
8module_wrapper_69/batch_normalization_16/batchnorm/RsqrtRsqrt:module_wrapper_69/batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt?
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOpNmodule_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?
6module_wrapper_69/batch_normalization_16/batchnorm/mulMul<module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt:y:0Mmodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/mul?
8module_wrapper_69/batch_normalization_16/batchnorm/mul_1Mul,module_wrapper_68/dense_6/Relu:activations:0:module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_69/batch_normalization_16/batchnorm/mul_1?
8module_wrapper_69/batch_normalization_16/batchnorm/mul_2MulAmodule_wrapper_69/batch_normalization_16/moments/Squeeze:output:0:module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_69/batch_normalization_16/batchnorm/mul_2?
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOpJmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?
6module_wrapper_69/batch_normalization_16/batchnorm/subSubImodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp:value:0<module_wrapper_69/batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/sub?
8module_wrapper_69/batch_normalization_16/batchnorm/add_1AddV2<module_wrapper_69/batch_normalization_16/batchnorm/mul_1:z:0:module_wrapper_69/batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_69/batch_normalization_16/batchnorm/add_1?
*module_wrapper_70/dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_70/dropout_16/dropout/Const?
(module_wrapper_70/dropout_16/dropout/MulMul<module_wrapper_69/batch_normalization_16/batchnorm/add_1:z:03module_wrapper_70/dropout_16/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2*
(module_wrapper_70/dropout_16/dropout/Mul?
*module_wrapper_70/dropout_16/dropout/ShapeShape<module_wrapper_69/batch_normalization_16/batchnorm/add_1:z:0*
T0*
_output_shapes
:2,
*module_wrapper_70/dropout_16/dropout/Shape?
Amodule_wrapper_70/dropout_16/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_70/dropout_16/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_70/dropout_16/dropout/random_uniform/RandomUniform?
3module_wrapper_70/dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_70/dropout_16/dropout/GreaterEqual/y?
1module_wrapper_70/dropout_16/dropout/GreaterEqualGreaterEqualJmodule_wrapper_70/dropout_16/dropout/random_uniform/RandomUniform:output:0<module_wrapper_70/dropout_16/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????23
1module_wrapper_70/dropout_16/dropout/GreaterEqual?
)module_wrapper_70/dropout_16/dropout/CastCast5module_wrapper_70/dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2+
)module_wrapper_70/dropout_16/dropout/Cast?
*module_wrapper_70/dropout_16/dropout/Mul_1Mul,module_wrapper_70/dropout_16/dropout/Mul:z:0-module_wrapper_70/dropout_16/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2,
*module_wrapper_70/dropout_16/dropout/Mul_1?
/module_wrapper_71/dense_7/MatMul/ReadVariableOpReadVariableOp8module_wrapper_71_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/module_wrapper_71/dense_7/MatMul/ReadVariableOp?
 module_wrapper_71/dense_7/MatMulMatMul.module_wrapper_70/dropout_16/dropout/Mul_1:z:07module_wrapper_71/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_71/dense_7/MatMul?
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_71_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?
!module_wrapper_71/dense_7/BiasAddBiasAdd*module_wrapper_71/dense_7/MatMul:product:08module_wrapper_71/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_71/dense_7/BiasAdd?
module_wrapper_71/dense_7/ReluRelu*module_wrapper_71/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_71/dense_7/Relu?
Gmodule_wrapper_72/batch_normalization_17/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gmodule_wrapper_72/batch_normalization_17/moments/mean/reduction_indices?
5module_wrapper_72/batch_normalization_17/moments/meanMean,module_wrapper_71/dense_7/Relu:activations:0Pmodule_wrapper_72/batch_normalization_17/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(27
5module_wrapper_72/batch_normalization_17/moments/mean?
=module_wrapper_72/batch_normalization_17/moments/StopGradientStopGradient>module_wrapper_72/batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes
:	?2?
=module_wrapper_72/batch_normalization_17/moments/StopGradient?
Bmodule_wrapper_72/batch_normalization_17/moments/SquaredDifferenceSquaredDifference,module_wrapper_71/dense_7/Relu:activations:0Fmodule_wrapper_72/batch_normalization_17/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2D
Bmodule_wrapper_72/batch_normalization_17/moments/SquaredDifference?
Kmodule_wrapper_72/batch_normalization_17/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2M
Kmodule_wrapper_72/batch_normalization_17/moments/variance/reduction_indices?
9module_wrapper_72/batch_normalization_17/moments/varianceMeanFmodule_wrapper_72/batch_normalization_17/moments/SquaredDifference:z:0Tmodule_wrapper_72/batch_normalization_17/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2;
9module_wrapper_72/batch_normalization_17/moments/variance?
8module_wrapper_72/batch_normalization_17/moments/SqueezeSqueeze>module_wrapper_72/batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2:
8module_wrapper_72/batch_normalization_17/moments/Squeeze?
:module_wrapper_72/batch_normalization_17/moments/Squeeze_1SqueezeBmodule_wrapper_72/batch_normalization_17/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2<
:module_wrapper_72/batch_normalization_17/moments/Squeeze_1?
>module_wrapper_72/batch_normalization_17/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2@
>module_wrapper_72/batch_normalization_17/AssignMovingAvg/decay?
Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOpReadVariableOpPmodule_wrapper_72_batch_normalization_17_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp?
<module_wrapper_72/batch_normalization_17/AssignMovingAvg/subSubOmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp:value:0Amodule_wrapper_72/batch_normalization_17/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2>
<module_wrapper_72/batch_normalization_17/AssignMovingAvg/sub?
<module_wrapper_72/batch_normalization_17/AssignMovingAvg/mulMul@module_wrapper_72/batch_normalization_17/AssignMovingAvg/sub:z:0Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2>
<module_wrapper_72/batch_normalization_17/AssignMovingAvg/mul?
8module_wrapper_72/batch_normalization_17/AssignMovingAvgAssignSubVariableOpPmodule_wrapper_72_batch_normalization_17_assignmovingavg_readvariableop_resource@module_wrapper_72/batch_normalization_17/AssignMovingAvg/mul:z:0H^module_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02:
8module_wrapper_72/batch_normalization_17/AssignMovingAvg?
@module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2B
@module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/decay?
Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOpReadVariableOpRmodule_wrapper_72_batch_normalization_17_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp?
>module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/subSubQmodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp:value:0Cmodule_wrapper_72/batch_normalization_17/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2@
>module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/sub?
>module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/mulMulBmodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/sub:z:0Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2@
>module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/mul?
:module_wrapper_72/batch_normalization_17/AssignMovingAvg_1AssignSubVariableOpRmodule_wrapper_72_batch_normalization_17_assignmovingavg_1_readvariableop_resourceBmodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/mul:z:0J^module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02<
:module_wrapper_72/batch_normalization_17/AssignMovingAvg_1?
8module_wrapper_72/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8module_wrapper_72/batch_normalization_17/batchnorm/add/y?
6module_wrapper_72/batch_normalization_17/batchnorm/addAddV2Cmodule_wrapper_72/batch_normalization_17/moments/Squeeze_1:output:0Amodule_wrapper_72/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/add?
8module_wrapper_72/batch_normalization_17/batchnorm/RsqrtRsqrt:module_wrapper_72/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt?
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpNmodule_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?
6module_wrapper_72/batch_normalization_17/batchnorm/mulMul<module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt:y:0Mmodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/mul?
8module_wrapper_72/batch_normalization_17/batchnorm/mul_1Mul,module_wrapper_71/dense_7/Relu:activations:0:module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_72/batch_normalization_17/batchnorm/mul_1?
8module_wrapper_72/batch_normalization_17/batchnorm/mul_2MulAmodule_wrapper_72/batch_normalization_17/moments/Squeeze:output:0:module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_72/batch_normalization_17/batchnorm/mul_2?
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOpJmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?
6module_wrapper_72/batch_normalization_17/batchnorm/subSubImodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp:value:0<module_wrapper_72/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/sub?
8module_wrapper_72/batch_normalization_17/batchnorm/add_1AddV2<module_wrapper_72/batch_normalization_17/batchnorm/mul_1:z:0:module_wrapper_72/batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_72/batch_normalization_17/batchnorm/add_1?
*module_wrapper_73/dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_73/dropout_17/dropout/Const?
(module_wrapper_73/dropout_17/dropout/MulMul<module_wrapper_72/batch_normalization_17/batchnorm/add_1:z:03module_wrapper_73/dropout_17/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2*
(module_wrapper_73/dropout_17/dropout/Mul?
*module_wrapper_73/dropout_17/dropout/ShapeShape<module_wrapper_72/batch_normalization_17/batchnorm/add_1:z:0*
T0*
_output_shapes
:2,
*module_wrapper_73/dropout_17/dropout/Shape?
Amodule_wrapper_73/dropout_17/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_73/dropout_17/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_73/dropout_17/dropout/random_uniform/RandomUniform?
3module_wrapper_73/dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_73/dropout_17/dropout/GreaterEqual/y?
1module_wrapper_73/dropout_17/dropout/GreaterEqualGreaterEqualJmodule_wrapper_73/dropout_17/dropout/random_uniform/RandomUniform:output:0<module_wrapper_73/dropout_17/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????23
1module_wrapper_73/dropout_17/dropout/GreaterEqual?
)module_wrapper_73/dropout_17/dropout/CastCast5module_wrapper_73/dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2+
)module_wrapper_73/dropout_17/dropout/Cast?
*module_wrapper_73/dropout_17/dropout/Mul_1Mul,module_wrapper_73/dropout_17/dropout/Mul:z:0-module_wrapper_73/dropout_17/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2,
*module_wrapper_73/dropout_17/dropout/Mul_1?
/module_wrapper_74/dense_8/MatMul/ReadVariableOpReadVariableOp8module_wrapper_74_dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
 module_wrapper_74/dense_8/MatMulMatMul.module_wrapper_73/dropout_17/dropout/Mul_1:z:07module_wrapper_74/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_74/dense_8/MatMul?
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_74_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?
!module_wrapper_74/dense_8/BiasAddBiasAdd*module_wrapper_74/dense_8/MatMul:product:08module_wrapper_74/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_74/dense_8/BiasAdd?
!module_wrapper_74/dense_8/SoftmaxSoftmax*module_wrapper_74/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_74/dense_8/Softmax?
IdentityIdentity+module_wrapper_74/dense_8/Softmax:softmax:03^module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2^module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp3^module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2^module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp8^module_wrapper_52/batch_normalization_12/AssignNewValue:^module_wrapper_52/batch_normalization_12/AssignNewValue_1I^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpK^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_52/batch_normalization_12/ReadVariableOp:^module_wrapper_52/batch_normalization_12/ReadVariableOp_13^module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2^module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp8^module_wrapper_56/batch_normalization_13/AssignNewValue:^module_wrapper_56/batch_normalization_13/AssignNewValue_1I^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpK^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_56/batch_normalization_13/ReadVariableOp:^module_wrapper_56/batch_normalization_13/ReadVariableOp_13^module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2^module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp8^module_wrapper_60/batch_normalization_14/AssignNewValue:^module_wrapper_60/batch_normalization_14/AssignNewValue_1I^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpK^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_60/batch_normalization_14/ReadVariableOp:^module_wrapper_60/batch_normalization_14/ReadVariableOp_13^module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2^module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp8^module_wrapper_64/batch_normalization_15/AssignNewValue:^module_wrapper_64/batch_normalization_15/AssignNewValue_1I^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpK^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_64/batch_normalization_15/ReadVariableOp:^module_wrapper_64/batch_normalization_15/ReadVariableOp_11^module_wrapper_68/dense_6/BiasAdd/ReadVariableOp0^module_wrapper_68/dense_6/MatMul/ReadVariableOp9^module_wrapper_69/batch_normalization_16/AssignMovingAvgH^module_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp;^module_wrapper_69/batch_normalization_16/AssignMovingAvg_1J^module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOpB^module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpF^module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp1^module_wrapper_71/dense_7/BiasAdd/ReadVariableOp0^module_wrapper_71/dense_7/MatMul/ReadVariableOp9^module_wrapper_72/batch_normalization_17/AssignMovingAvgH^module_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp;^module_wrapper_72/batch_normalization_17/AssignMovingAvg_1J^module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOpB^module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpF^module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp1^module_wrapper_74/dense_8/BiasAdd/ReadVariableOp0^module_wrapper_74/dense_8/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2h
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2f
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp2h
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2f
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp2r
7module_wrapper_52/batch_normalization_12/AssignNewValue7module_wrapper_52/batch_normalization_12/AssignNewValue2v
9module_wrapper_52/batch_normalization_12/AssignNewValue_19module_wrapper_52/batch_normalization_12/AssignNewValue_12?
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_52/batch_normalization_12/ReadVariableOp7module_wrapper_52/batch_normalization_12/ReadVariableOp2v
9module_wrapper_52/batch_normalization_12/ReadVariableOp_19module_wrapper_52/batch_normalization_12/ReadVariableOp_12h
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2f
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp2r
7module_wrapper_56/batch_normalization_13/AssignNewValue7module_wrapper_56/batch_normalization_13/AssignNewValue2v
9module_wrapper_56/batch_normalization_13/AssignNewValue_19module_wrapper_56/batch_normalization_13/AssignNewValue_12?
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_56/batch_normalization_13/ReadVariableOp7module_wrapper_56/batch_normalization_13/ReadVariableOp2v
9module_wrapper_56/batch_normalization_13/ReadVariableOp_19module_wrapper_56/batch_normalization_13/ReadVariableOp_12h
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2f
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp2r
7module_wrapper_60/batch_normalization_14/AssignNewValue7module_wrapper_60/batch_normalization_14/AssignNewValue2v
9module_wrapper_60/batch_normalization_14/AssignNewValue_19module_wrapper_60/batch_normalization_14/AssignNewValue_12?
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_60/batch_normalization_14/ReadVariableOp7module_wrapper_60/batch_normalization_14/ReadVariableOp2v
9module_wrapper_60/batch_normalization_14/ReadVariableOp_19module_wrapper_60/batch_normalization_14/ReadVariableOp_12h
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2f
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp2r
7module_wrapper_64/batch_normalization_15/AssignNewValue7module_wrapper_64/batch_normalization_15/AssignNewValue2v
9module_wrapper_64/batch_normalization_15/AssignNewValue_19module_wrapper_64/batch_normalization_15/AssignNewValue_12?
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_64/batch_normalization_15/ReadVariableOp7module_wrapper_64/batch_normalization_15/ReadVariableOp2v
9module_wrapper_64/batch_normalization_15/ReadVariableOp_19module_wrapper_64/batch_normalization_15/ReadVariableOp_12d
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp2b
/module_wrapper_68/dense_6/MatMul/ReadVariableOp/module_wrapper_68/dense_6/MatMul/ReadVariableOp2t
8module_wrapper_69/batch_normalization_16/AssignMovingAvg8module_wrapper_69/batch_normalization_16/AssignMovingAvg2?
Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOpGmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp2x
:module_wrapper_69/batch_normalization_16/AssignMovingAvg_1:module_wrapper_69/batch_normalization_16/AssignMovingAvg_12?
Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOpImodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp2?
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpAmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp2?
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpEmodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp2d
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp2b
/module_wrapper_71/dense_7/MatMul/ReadVariableOp/module_wrapper_71/dense_7/MatMul/ReadVariableOp2t
8module_wrapper_72/batch_normalization_17/AssignMovingAvg8module_wrapper_72/batch_normalization_17/AssignMovingAvg2?
Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOpGmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp2x
:module_wrapper_72/batch_normalization_17/AssignMovingAvg_1:module_wrapper_72/batch_normalization_17/AssignMovingAvg_12?
Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOpImodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp2?
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpAmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp2?
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpEmodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp2d
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp2b
/module_wrapper_74/dense_8/MatMul/ReadVariableOp/module_wrapper_74/dense_8/MatMul/ReadVariableOp:h d
/
_output_shapes
:?????????00
1
_user_specified_namemodule_wrapper_50_input
?
?
__inference_loss_fn_0_56767i
Mmodule_wrapper_59_conv2d_13_kernel_regularizer_square_readvariableop_resource:??
identity??Dmodule_wrapper_59/conv2d_13/kernel/Regularizer/Square/ReadVariableOp?
Dmodule_wrapper_59/conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpMmodule_wrapper_59_conv2d_13_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:??*
dtype02F
Dmodule_wrapper_59/conv2d_13/kernel/Regularizer/Square/ReadVariableOp?
5module_wrapper_59/conv2d_13/kernel/Regularizer/SquareSquareLmodule_wrapper_59/conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??27
5module_wrapper_59/conv2d_13/kernel/Regularizer/Square?
4module_wrapper_59/conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             26
4module_wrapper_59/conv2d_13/kernel/Regularizer/Const?
2module_wrapper_59/conv2d_13/kernel/Regularizer/SumSum9module_wrapper_59/conv2d_13/kernel/Regularizer/Square:y:0=module_wrapper_59/conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2module_wrapper_59/conv2d_13/kernel/Regularizer/Sum?
4module_wrapper_59/conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<26
4module_wrapper_59/conv2d_13/kernel/Regularizer/mul/x?
2module_wrapper_59/conv2d_13/kernel/Regularizer/mulMul=module_wrapper_59/conv2d_13/kernel/Regularizer/mul/x:output:0;module_wrapper_59/conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2module_wrapper_59/conv2d_13/kernel/Regularizer/mul?
IdentityIdentity6module_wrapper_59/conv2d_13/kernel/Regularizer/mul:z:0E^module_wrapper_59/conv2d_13/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
Dmodule_wrapper_59/conv2d_13/kernel/Regularizer/Square/ReadVariableOpDmodule_wrapper_59/conv2d_13/kernel/Regularizer/Square/ReadVariableOp
?
h
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_55670

args_0
identityy
dropout_13/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_13/Identityy
IdentityIdentitydropout_13/Identity:output:0*
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
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_53480

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
?
j
1__inference_module_wrapper_73_layer_call_fn_56279

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
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_519612
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
?
k
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_52206

args_0
identity?y
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_15/dropout/Const?
dropout_15/dropout/MulMulargs_0!dropout_15/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_15/dropout/Mulj
dropout_15/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_15/dropout/Shape?
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype021
/dropout_15/dropout/random_uniform/RandomUniform?
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_15/dropout/GreaterEqual/y?
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2!
dropout_15/dropout/GreaterEqual?
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_15/dropout/Cast?
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_15/dropout/Mul_1y
IdentityIdentitydropout_15/dropout/Mul_1:z:0*
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
?
?
1__inference_module_wrapper_63_layer_call_fn_55840

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
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_516462
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
?*
?
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_54146

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
?
?
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_51646

args_0D
(conv2d_14_conv2d_readvariableop_resource:??8
)conv2d_14_biasadd_readvariableop_resource:	?
identity?? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2Dargs_0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_14/Relu?
IdentityIdentityconv2d_14/Relu:activations:0!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_52162

args_0:
&dense_6_matmul_readvariableop_resource:
?$?6
'dense_6_biasadd_readvariableop_resource:	?
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulargs_0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_6/Relu?
IdentityIdentitydense_6/Relu:activations:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_55804

args_0
identity?
max_pooling2d_10/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool~
IdentityIdentity!max_pooling2d_10/MaxPool:output:0*
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
?
j
1__inference_module_wrapper_62_layer_call_fn_55814

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
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_523202
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
?
?
6__inference_batch_normalization_15_layer_call_fn_56547

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_537842
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
?
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_56235

args_0G
8batch_normalization_17_batchnorm_readvariableop_resource:	?K
<batch_normalization_17_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_17_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_17_batchnorm_readvariableop_2_resource:	?
identity??/batch_normalization_17/batchnorm/ReadVariableOp?1batch_normalization_17/batchnorm/ReadVariableOp_1?1batch_normalization_17/batchnorm/ReadVariableOp_2?3batch_normalization_17/batchnorm/mul/ReadVariableOp?
/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_17/batchnorm/ReadVariableOp?
&batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_17/batchnorm/add/y?
$batch_normalization_17/batchnorm/addAddV27batch_normalization_17/batchnorm/ReadVariableOp:value:0/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/add?
&batch_normalization_17/batchnorm/RsqrtRsqrt(batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_17/batchnorm/Rsqrt?
3batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_17/batchnorm/mul/ReadVariableOp?
$batch_normalization_17/batchnorm/mulMul*batch_normalization_17/batchnorm/Rsqrt:y:0;batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/mul?
&batch_normalization_17/batchnorm/mul_1Mulargs_0(batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_17/batchnorm/mul_1?
1batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_17/batchnorm/ReadVariableOp_1?
&batch_normalization_17/batchnorm/mul_2Mul9batch_normalization_17/batchnorm/ReadVariableOp_1:value:0(batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_17/batchnorm/mul_2?
1batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_17/batchnorm/ReadVariableOp_2?
$batch_normalization_17/batchnorm/subSub9batch_normalization_17/batchnorm/ReadVariableOp_2:value:0*batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/sub?
&batch_normalization_17/batchnorm/add_1AddV2*batch_normalization_17/batchnorm/mul_1:z:0(batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_17/batchnorm/add_1?
IdentityIdentity*batch_normalization_17/batchnorm/add_1:z:00^batch_normalization_17/batchnorm/ReadVariableOp2^batch_normalization_17/batchnorm/ReadVariableOp_12^batch_normalization_17/batchnorm/ReadVariableOp_24^batch_normalization_17/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2b
/batch_normalization_17/batchnorm/ReadVariableOp/batch_normalization_17/batchnorm/ReadVariableOp2f
1batch_normalization_17/batchnorm/ReadVariableOp_11batch_normalization_17/batchnorm/ReadVariableOp_12f
1batch_normalization_17/batchnorm/ReadVariableOp_21batch_normalization_17/batchnorm/ReadVariableOp_22j
3batch_normalization_17/batchnorm/mul/ReadVariableOp3batch_normalization_17/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_55562

args_0C
(conv2d_12_conv2d_readvariableop_resource:@?8
)conv2d_12_biasadd_readvariableop_resource:	?
identity?? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2Dargs_0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_12/BiasAdd
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_12/Relu?
IdentityIdentityconv2d_12/Relu:activations:0!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_56042

args_0:
&dense_6_matmul_readvariableop_resource:
?$?6
'dense_6_biasadd_readvariableop_resource:	?
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulargs_0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_6/Relu?
IdentityIdentitydense_6/Relu:activations:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_55948

args_0
identity?
max_pooling2d_11/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPool~
IdentityIdentity!max_pooling2d_11/MaxPool:output:0*
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
h
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_52222

args_0
identity?
max_pooling2d_11/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPool~
IdentityIdentity!max_pooling2d_11/MaxPool:output:0*
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
?
?
6__inference_batch_normalization_12_layer_call_fn_56362

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_534142
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
?
?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_56578

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
?
M
1__inference_module_wrapper_58_layer_call_fn_55660

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_515742
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
M
1__inference_module_wrapper_61_layer_call_fn_55789

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
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_516262
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
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_51713

args_0:
&dense_6_matmul_readvariableop_resource:
?$?6
'dense_6_biasadd_readvariableop_resource:	?
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulargs_0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_6/Relu?
IdentityIdentitydense_6/Relu:activations:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_53_layer_call_fn_55496

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_525642
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
?
M
1__inference_module_wrapper_57_layer_call_fn_55645

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_524502
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
?
?
6__inference_batch_normalization_13_layer_call_fn_56424

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_535522
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
?*
?
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_56676

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
?
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_51469

args_0B
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@
identity?? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2Dargs_0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_11/Relu?
IdentityIdentityconv2d_11/Relu:activations:0!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_53370

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
?
k
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_55980

args_0
identity?y
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_15/dropout/Const?
dropout_15/dropout/MulMulargs_0!dropout_15/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_15/dropout/Mulj
dropout_15/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_15/dropout/Shape?
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype021
/dropout_15/dropout/random_uniform/RandomUniform?
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_15/dropout/GreaterEqual/y?
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2!
dropout_15/dropout/GreaterEqual?
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_15/dropout/Cast?
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_15/dropout/Mul_1y
IdentityIdentitydropout_15/dropout/Mul_1:z:0*
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
h
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_56284

args_0
identityq
dropout_17/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_17/Identityq
IdentityIdentitydropout_17/Identity:output:0*
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
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_56398

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
?
?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_53828

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
?
?
1__inference_module_wrapper_59_layer_call_fn_55691

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_515872
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
?
?
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_51611

args_0=
.batch_normalization_14_readvariableop_resource:	??
0batch_normalization_14_readvariableop_1_resource:	?N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?
identity??6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_14/ReadVariableOp?'batch_normalization_14/ReadVariableOp_1?
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_14/ReadVariableOp?
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_14/ReadVariableOp_1?
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_14/FusedBatchNormV3?
IdentityIdentity+batch_normalization_14/FusedBatchNormV3:y:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_52564

args_0
identity?
max_pooling2d_8/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_8/MaxPool|
IdentityIdentity max_pooling2d_8/MaxPool:output:0*
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
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_55799

args_0
identity?
max_pooling2d_10/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool~
IdentityIdentity!max_pooling2d_10/MaxPool:output:0*
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
k
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_56149

args_0
identity?y
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_16/dropout/Const?
dropout_16/dropout/MulMulargs_0!dropout_16/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_16/dropout/Mulj
dropout_16/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_16/dropout/Shape?
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_16/dropout/random_uniform/RandomUniform?
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_16/dropout/GreaterEqual/y?
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_16/dropout/GreaterEqual?
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_16/dropout/Cast?
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_16/dropout/Mul_1q
IdentityIdentitydropout_16/dropout/Mul_1:z:0*
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
?@
?
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_56269

args_0M
>batch_normalization_17_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_17_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_17_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_17_batchnorm_readvariableop_resource:	?
identity??&batch_normalization_17/AssignMovingAvg?5batch_normalization_17/AssignMovingAvg/ReadVariableOp?(batch_normalization_17/AssignMovingAvg_1?7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_17/batchnorm/ReadVariableOp?3batch_normalization_17/batchnorm/mul/ReadVariableOp?
5batch_normalization_17/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_17/moments/mean/reduction_indices?
#batch_normalization_17/moments/meanMeanargs_0>batch_normalization_17/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_17/moments/mean?
+batch_normalization_17/moments/StopGradientStopGradient,batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_17/moments/StopGradient?
0batch_normalization_17/moments/SquaredDifferenceSquaredDifferenceargs_04batch_normalization_17/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_17/moments/SquaredDifference?
9batch_normalization_17/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_17/moments/variance/reduction_indices?
'batch_normalization_17/moments/varianceMean4batch_normalization_17/moments/SquaredDifference:z:0Bbatch_normalization_17/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_17/moments/variance?
&batch_normalization_17/moments/SqueezeSqueeze,batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_17/moments/Squeeze?
(batch_normalization_17/moments/Squeeze_1Squeeze0batch_normalization_17/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_17/moments/Squeeze_1?
,batch_normalization_17/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_17/AssignMovingAvg/decay?
5batch_normalization_17/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_17_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_17/AssignMovingAvg/ReadVariableOp?
*batch_normalization_17/AssignMovingAvg/subSub=batch_normalization_17/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_17/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_17/AssignMovingAvg/sub?
*batch_normalization_17/AssignMovingAvg/mulMul.batch_normalization_17/AssignMovingAvg/sub:z:05batch_normalization_17/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_17/AssignMovingAvg/mul?
&batch_normalization_17/AssignMovingAvgAssignSubVariableOp>batch_normalization_17_assignmovingavg_readvariableop_resource.batch_normalization_17/AssignMovingAvg/mul:z:06^batch_normalization_17/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_17/AssignMovingAvg?
.batch_normalization_17/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_17/AssignMovingAvg_1/decay?
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_17_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_17/AssignMovingAvg_1/subSub?batch_normalization_17/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_17/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_17/AssignMovingAvg_1/sub?
,batch_normalization_17/AssignMovingAvg_1/mulMul0batch_normalization_17/AssignMovingAvg_1/sub:z:07batch_normalization_17/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_17/AssignMovingAvg_1/mul?
(batch_normalization_17/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_17_assignmovingavg_1_readvariableop_resource0batch_normalization_17/AssignMovingAvg_1/mul:z:08^batch_normalization_17/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_17/AssignMovingAvg_1?
&batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_17/batchnorm/add/y?
$batch_normalization_17/batchnorm/addAddV21batch_normalization_17/moments/Squeeze_1:output:0/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/add?
&batch_normalization_17/batchnorm/RsqrtRsqrt(batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_17/batchnorm/Rsqrt?
3batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_17/batchnorm/mul/ReadVariableOp?
$batch_normalization_17/batchnorm/mulMul*batch_normalization_17/batchnorm/Rsqrt:y:0;batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/mul?
&batch_normalization_17/batchnorm/mul_1Mulargs_0(batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_17/batchnorm/mul_1?
&batch_normalization_17/batchnorm/mul_2Mul/batch_normalization_17/moments/Squeeze:output:0(batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_17/batchnorm/mul_2?
/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_17/batchnorm/ReadVariableOp?
$batch_normalization_17/batchnorm/subSub7batch_normalization_17/batchnorm/ReadVariableOp:value:0*batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/sub?
&batch_normalization_17/batchnorm/add_1AddV2*batch_normalization_17/batchnorm/mul_1:z:0(batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_17/batchnorm/add_1?
IdentityIdentity*batch_normalization_17/batchnorm/add_1:z:0'^batch_normalization_17/AssignMovingAvg6^batch_normalization_17/AssignMovingAvg/ReadVariableOp)^batch_normalization_17/AssignMovingAvg_18^batch_normalization_17/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_17/batchnorm/ReadVariableOp4^batch_normalization_17/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2P
&batch_normalization_17/AssignMovingAvg&batch_normalization_17/AssignMovingAvg2n
5batch_normalization_17/AssignMovingAvg/ReadVariableOp5batch_normalization_17/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_17/AssignMovingAvg_1(batch_normalization_17/AssignMovingAvg_12r
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_17/batchnorm/ReadVariableOp/batch_normalization_17/batchnorm/ReadVariableOp2j
3batch_normalization_17/batchnorm/mul/ReadVariableOp3batch_normalization_17/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_51692

args_0
identityy
dropout_15/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_15/Identityy
IdentityIdentitydropout_15/Identity:output:0*
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
1__inference_module_wrapper_52_layer_call_fn_55437

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_514932
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
?
h
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_55968

args_0
identityy
dropout_15/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_15/Identityy
IdentityIdentitydropout_15/Identity:output:0*
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
?
?	
,__inference_sequential_2_layer_call_fn_54394

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

unknown_37:	?

unknown_38:
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
:?????????*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_518282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

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
?
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_51793

args_0G
8batch_normalization_17_batchnorm_readvariableop_resource:	?K
<batch_normalization_17_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_17_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_17_batchnorm_readvariableop_2_resource:	?
identity??/batch_normalization_17/batchnorm/ReadVariableOp?1batch_normalization_17/batchnorm/ReadVariableOp_1?1batch_normalization_17/batchnorm/ReadVariableOp_2?3batch_normalization_17/batchnorm/mul/ReadVariableOp?
/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_17/batchnorm/ReadVariableOp?
&batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_17/batchnorm/add/y?
$batch_normalization_17/batchnorm/addAddV27batch_normalization_17/batchnorm/ReadVariableOp:value:0/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/add?
&batch_normalization_17/batchnorm/RsqrtRsqrt(batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_17/batchnorm/Rsqrt?
3batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_17/batchnorm/mul/ReadVariableOp?
$batch_normalization_17/batchnorm/mulMul*batch_normalization_17/batchnorm/Rsqrt:y:0;batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/mul?
&batch_normalization_17/batchnorm/mul_1Mulargs_0(batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_17/batchnorm/mul_1?
1batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_17/batchnorm/ReadVariableOp_1?
&batch_normalization_17/batchnorm/mul_2Mul9batch_normalization_17/batchnorm/ReadVariableOp_1:value:0(batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_17/batchnorm/mul_2?
1batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_17/batchnorm/ReadVariableOp_2?
$batch_normalization_17/batchnorm/subSub9batch_normalization_17/batchnorm/ReadVariableOp_2:value:0*batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/sub?
&batch_normalization_17/batchnorm/add_1AddV2*batch_normalization_17/batchnorm/mul_1:z:0(batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_17/batchnorm/add_1?
IdentityIdentity*batch_normalization_17/batchnorm/add_1:z:00^batch_normalization_17/batchnorm/ReadVariableOp2^batch_normalization_17/batchnorm/ReadVariableOp_12^batch_normalization_17/batchnorm/ReadVariableOp_24^batch_normalization_17/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2b
/batch_normalization_17/batchnorm/ReadVariableOp/batch_normalization_17/batchnorm/ReadVariableOp2f
1batch_normalization_17/batchnorm/ReadVariableOp_11batch_normalization_17/batchnorm/ReadVariableOp_12f
1batch_normalization_17/batchnorm/ReadVariableOp_21batch_normalization_17/batchnorm/ReadVariableOp_22j
3batch_normalization_17/batchnorm/mul/ReadVariableOp3batch_normalization_17/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_51515

args_0
identityx
dropout_12/IdentityIdentityargs_0*
T0*/
_output_shapes
:?????????@2
dropout_12/Identityx
IdentityIdentitydropout_12/Identity:output:0*
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
?
?
6__inference_batch_normalization_17_layer_call_fn_56702

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_541462
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
?
k
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_52434

args_0
identity?y
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_13/dropout/Const?
dropout_13/dropout/MulMulargs_0!dropout_13/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_13/dropout/Mulj
dropout_13/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_13/dropout/Shape?
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype021
/dropout_13/dropout/random_uniform/RandomUniform?
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_13/dropout/GreaterEqual/y?
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2!
dropout_13/dropout/GreaterEqual?
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_13/dropout/Cast?
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_13/dropout/Mul_1y
IdentityIdentitydropout_13/dropout/Mul_1:z:0*
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
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_52521

args_0C
(conv2d_12_conv2d_readvariableop_resource:@?8
)conv2d_12_biasadd_readvariableop_resource:	?
identity?? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2Dargs_0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_12/BiasAdd
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_12/Relu?
IdentityIdentityconv2d_12/Relu:activations:0!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_63_layer_call_fn_55849

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
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_522932
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
6__inference_batch_normalization_12_layer_call_fn_56349

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_533702
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
1__inference_module_wrapper_66_layer_call_fn_55963

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
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_522062
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
? 
?
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_51739

args_0G
8batch_normalization_16_batchnorm_readvariableop_resource:	?K
<batch_normalization_16_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_16_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_16_batchnorm_readvariableop_2_resource:	?
identity??/batch_normalization_16/batchnorm/ReadVariableOp?1batch_normalization_16/batchnorm/ReadVariableOp_1?1batch_normalization_16/batchnorm/ReadVariableOp_2?3batch_normalization_16/batchnorm/mul/ReadVariableOp?
/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_16/batchnorm/ReadVariableOp?
&batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_16/batchnorm/add/y?
$batch_normalization_16/batchnorm/addAddV27batch_normalization_16/batchnorm/ReadVariableOp:value:0/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/add?
&batch_normalization_16/batchnorm/RsqrtRsqrt(batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_16/batchnorm/Rsqrt?
3batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_16/batchnorm/mul/ReadVariableOp?
$batch_normalization_16/batchnorm/mulMul*batch_normalization_16/batchnorm/Rsqrt:y:0;batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/mul?
&batch_normalization_16/batchnorm/mul_1Mulargs_0(batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_16/batchnorm/mul_1?
1batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_16/batchnorm/ReadVariableOp_1?
&batch_normalization_16/batchnorm/mul_2Mul9batch_normalization_16/batchnorm/ReadVariableOp_1:value:0(batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_16/batchnorm/mul_2?
1batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_16/batchnorm/ReadVariableOp_2?
$batch_normalization_16/batchnorm/subSub9batch_normalization_16/batchnorm/ReadVariableOp_2:value:0*batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/sub?
&batch_normalization_16/batchnorm/add_1AddV2*batch_normalization_16/batchnorm/mul_1:z:0(batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_16/batchnorm/add_1?
IdentityIdentity*batch_normalization_16/batchnorm/add_1:z:00^batch_normalization_16/batchnorm/ReadVariableOp2^batch_normalization_16/batchnorm/ReadVariableOp_12^batch_normalization_16/batchnorm/ReadVariableOp_24^batch_normalization_16/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2b
/batch_normalization_16/batchnorm/ReadVariableOp/batch_normalization_16/batchnorm/ReadVariableOp2f
1batch_normalization_16/batchnorm/ReadVariableOp_11batch_normalization_16/batchnorm/ReadVariableOp_12f
1batch_normalization_16/batchnorm/ReadVariableOp_21batch_normalization_16/batchnorm/ReadVariableOp_22j
3batch_normalization_16/batchnorm/mul/ReadVariableOp3batch_normalization_16/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_55617

args_0=
.batch_normalization_13_readvariableop_resource:	??
0batch_normalization_13_readvariableop_1_resource:	?N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?
identity??6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_13/ReadVariableOp?'batch_normalization_13/ReadVariableOp_1?
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_13/ReadVariableOp?
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_13/ReadVariableOp_1?
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_13/FusedBatchNormV3?
IdentityIdentity+batch_normalization_13/FusedBatchNormV3:y:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_55831

args_0
identity?y
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_14/dropout/Const?
dropout_14/dropout/MulMulargs_0!dropout_14/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_14/dropout/Mulj
dropout_14/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_14/dropout/Shape?
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype021
/dropout_14/dropout/random_uniform/RandomUniform?
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_14/dropout/GreaterEqual/y?
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2!
dropout_14/dropout/GreaterEqual?
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_14/dropout/Cast?
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_14/dropout/Mul_1y
IdentityIdentitydropout_14/dropout/Mul_1:z:0*
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
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_55533

args_0
identity?y
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_12/dropout/Const?
dropout_12/dropout/MulMulargs_0!dropout_12/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_12/dropout/Mulj
dropout_12/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_12/dropout/Shape?
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_12/dropout/random_uniform/RandomUniform?
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_12/dropout/GreaterEqual/y?
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_12/dropout/GreaterEqual?
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_12/dropout/Cast?
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_12/dropout/Mul_1x
IdentityIdentitydropout_12/dropout/Mul_1:z:0*
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
??
?/
G__inference_sequential_2_layer_call_and_return_conditional_losses_54724

inputsT
:module_wrapper_50_conv2d_10_conv2d_readvariableop_resource: I
;module_wrapper_50_conv2d_10_biasadd_readvariableop_resource: T
:module_wrapper_51_conv2d_11_conv2d_readvariableop_resource: @I
;module_wrapper_51_conv2d_11_biasadd_readvariableop_resource:@N
@module_wrapper_52_batch_normalization_12_readvariableop_resource:@P
Bmodule_wrapper_52_batch_normalization_12_readvariableop_1_resource:@_
Qmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@a
Smodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@U
:module_wrapper_55_conv2d_12_conv2d_readvariableop_resource:@?J
;module_wrapper_55_conv2d_12_biasadd_readvariableop_resource:	?O
@module_wrapper_56_batch_normalization_13_readvariableop_resource:	?Q
Bmodule_wrapper_56_batch_normalization_13_readvariableop_1_resource:	?`
Qmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?V
:module_wrapper_59_conv2d_13_conv2d_readvariableop_resource:??J
;module_wrapper_59_conv2d_13_biasadd_readvariableop_resource:	?O
@module_wrapper_60_batch_normalization_14_readvariableop_resource:	?Q
Bmodule_wrapper_60_batch_normalization_14_readvariableop_1_resource:	?`
Qmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?V
:module_wrapper_63_conv2d_14_conv2d_readvariableop_resource:??J
;module_wrapper_63_conv2d_14_biasadd_readvariableop_resource:	?O
@module_wrapper_64_batch_normalization_15_readvariableop_resource:	?Q
Bmodule_wrapper_64_batch_normalization_15_readvariableop_1_resource:	?`
Qmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?L
8module_wrapper_68_dense_6_matmul_readvariableop_resource:
?$?H
9module_wrapper_68_dense_6_biasadd_readvariableop_resource:	?Y
Jmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource:	?]
Nmodule_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource:	?[
Lmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_1_resource:	?[
Lmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_2_resource:	?L
8module_wrapper_71_dense_7_matmul_readvariableop_resource:
??H
9module_wrapper_71_dense_7_biasadd_readvariableop_resource:	?Y
Jmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource:	?]
Nmodule_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource:	?[
Lmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_1_resource:	?[
Lmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_2_resource:	?K
8module_wrapper_74_dense_8_matmul_readvariableop_resource:	?G
9module_wrapper_74_dense_8_biasadd_readvariableop_resource:
identity??2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp?2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_52/batch_normalization_12/ReadVariableOp?9module_wrapper_52/batch_normalization_12/ReadVariableOp_1?2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_56/batch_normalization_13/ReadVariableOp?9module_wrapper_56/batch_normalization_13/ReadVariableOp_1?2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_60/batch_normalization_14/ReadVariableOp?9module_wrapper_60/batch_normalization_14/ReadVariableOp_1?2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_64/batch_normalization_15/ReadVariableOp?9module_wrapper_64/batch_normalization_15/ReadVariableOp_1?0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?/module_wrapper_68/dense_6/MatMul/ReadVariableOp?Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1?Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2?Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?/module_wrapper_71/dense_7/MatMul/ReadVariableOp?Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1?Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2?Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_50_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp?
"module_wrapper_50/conv2d_10/Conv2DConv2Dinputs9module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2$
"module_wrapper_50/conv2d_10/Conv2D?
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_50_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?
#module_wrapper_50/conv2d_10/BiasAddBiasAdd+module_wrapper_50/conv2d_10/Conv2D:output:0:module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2%
#module_wrapper_50/conv2d_10/BiasAdd?
 module_wrapper_50/conv2d_10/ReluRelu,module_wrapper_50/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2"
 module_wrapper_50/conv2d_10/Relu?
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_51_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype023
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?
"module_wrapper_51/conv2d_11/Conv2DConv2D.module_wrapper_50/conv2d_10/Relu:activations:09module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2$
"module_wrapper_51/conv2d_11/Conv2D?
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_51_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype024
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?
#module_wrapper_51/conv2d_11/BiasAddBiasAdd+module_wrapper_51/conv2d_11/Conv2D:output:0:module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2%
#module_wrapper_51/conv2d_11/BiasAdd?
 module_wrapper_51/conv2d_11/ReluRelu,module_wrapper_51/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2"
 module_wrapper_51/conv2d_11/Relu?
7module_wrapper_52/batch_normalization_12/ReadVariableOpReadVariableOp@module_wrapper_52_batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype029
7module_wrapper_52/batch_normalization_12/ReadVariableOp?
9module_wrapper_52/batch_normalization_12/ReadVariableOp_1ReadVariableOpBmodule_wrapper_52_batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9module_wrapper_52/batch_normalization_12/ReadVariableOp_1?
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02J
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02L
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_52/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3.module_wrapper_51/conv2d_11/Relu:activations:0?module_wrapper_52/batch_normalization_12/ReadVariableOp:value:0Amodule_wrapper_52/batch_normalization_12/ReadVariableOp_1:value:0Pmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2;
9module_wrapper_52/batch_normalization_12/FusedBatchNormV3?
)module_wrapper_53/max_pooling2d_8/MaxPoolMaxPool=module_wrapper_52/batch_normalization_12/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_53/max_pooling2d_8/MaxPool?
%module_wrapper_54/dropout_12/IdentityIdentity2module_wrapper_53/max_pooling2d_8/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2'
%module_wrapper_54/dropout_12/Identity?
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_55_conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?
"module_wrapper_55/conv2d_12/Conv2DConv2D.module_wrapper_54/dropout_12/Identity:output:09module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_55/conv2d_12/Conv2D?
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_55_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?
#module_wrapper_55/conv2d_12/BiasAddBiasAdd+module_wrapper_55/conv2d_12/Conv2D:output:0:module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_55/conv2d_12/BiasAdd?
 module_wrapper_55/conv2d_12/ReluRelu,module_wrapper_55/conv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_55/conv2d_12/Relu?
7module_wrapper_56/batch_normalization_13/ReadVariableOpReadVariableOp@module_wrapper_56_batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_56/batch_normalization_13/ReadVariableOp?
9module_wrapper_56/batch_normalization_13/ReadVariableOp_1ReadVariableOpBmodule_wrapper_56_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_56/batch_normalization_13/ReadVariableOp_1?
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_56/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3.module_wrapper_55/conv2d_12/Relu:activations:0?module_wrapper_56/batch_normalization_13/ReadVariableOp:value:0Amodule_wrapper_56/batch_normalization_13/ReadVariableOp_1:value:0Pmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9module_wrapper_56/batch_normalization_13/FusedBatchNormV3?
)module_wrapper_57/max_pooling2d_9/MaxPoolMaxPool=module_wrapper_56/batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_57/max_pooling2d_9/MaxPool?
%module_wrapper_58/dropout_13/IdentityIdentity2module_wrapper_57/max_pooling2d_9/MaxPool:output:0*
T0*0
_output_shapes
:??????????2'
%module_wrapper_58/dropout_13/Identity?
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_59_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?
"module_wrapper_59/conv2d_13/Conv2DConv2D.module_wrapper_58/dropout_13/Identity:output:09module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_59/conv2d_13/Conv2D?
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_59_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?
#module_wrapper_59/conv2d_13/BiasAddBiasAdd+module_wrapper_59/conv2d_13/Conv2D:output:0:module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_59/conv2d_13/BiasAdd?
 module_wrapper_59/conv2d_13/ReluRelu,module_wrapper_59/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_59/conv2d_13/Relu?
7module_wrapper_60/batch_normalization_14/ReadVariableOpReadVariableOp@module_wrapper_60_batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_60/batch_normalization_14/ReadVariableOp?
9module_wrapper_60/batch_normalization_14/ReadVariableOp_1ReadVariableOpBmodule_wrapper_60_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_60/batch_normalization_14/ReadVariableOp_1?
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_60/batch_normalization_14/FusedBatchNormV3FusedBatchNormV3.module_wrapper_59/conv2d_13/Relu:activations:0?module_wrapper_60/batch_normalization_14/ReadVariableOp:value:0Amodule_wrapper_60/batch_normalization_14/ReadVariableOp_1:value:0Pmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9module_wrapper_60/batch_normalization_14/FusedBatchNormV3?
*module_wrapper_61/max_pooling2d_10/MaxPoolMaxPool=module_wrapper_60/batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2,
*module_wrapper_61/max_pooling2d_10/MaxPool?
%module_wrapper_62/dropout_14/IdentityIdentity3module_wrapper_61/max_pooling2d_10/MaxPool:output:0*
T0*0
_output_shapes
:??????????2'
%module_wrapper_62/dropout_14/Identity?
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_63_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?
"module_wrapper_63/conv2d_14/Conv2DConv2D.module_wrapper_62/dropout_14/Identity:output:09module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_63/conv2d_14/Conv2D?
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_63_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?
#module_wrapper_63/conv2d_14/BiasAddBiasAdd+module_wrapper_63/conv2d_14/Conv2D:output:0:module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_63/conv2d_14/BiasAdd?
 module_wrapper_63/conv2d_14/ReluRelu,module_wrapper_63/conv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_63/conv2d_14/Relu?
7module_wrapper_64/batch_normalization_15/ReadVariableOpReadVariableOp@module_wrapper_64_batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_64/batch_normalization_15/ReadVariableOp?
9module_wrapper_64/batch_normalization_15/ReadVariableOp_1ReadVariableOpBmodule_wrapper_64_batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_64/batch_normalization_15/ReadVariableOp_1?
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_64/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3.module_wrapper_63/conv2d_14/Relu:activations:0?module_wrapper_64/batch_normalization_15/ReadVariableOp:value:0Amodule_wrapper_64/batch_normalization_15/ReadVariableOp_1:value:0Pmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9module_wrapper_64/batch_normalization_15/FusedBatchNormV3?
*module_wrapper_65/max_pooling2d_11/MaxPoolMaxPool=module_wrapper_64/batch_normalization_15/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2,
*module_wrapper_65/max_pooling2d_11/MaxPool?
%module_wrapper_66/dropout_15/IdentityIdentity3module_wrapper_65/max_pooling2d_11/MaxPool:output:0*
T0*0
_output_shapes
:??????????2'
%module_wrapper_66/dropout_15/Identity?
!module_wrapper_67/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2#
!module_wrapper_67/flatten_2/Const?
#module_wrapper_67/flatten_2/ReshapeReshape.module_wrapper_66/dropout_15/Identity:output:0*module_wrapper_67/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????$2%
#module_wrapper_67/flatten_2/Reshape?
/module_wrapper_68/dense_6/MatMul/ReadVariableOpReadVariableOp8module_wrapper_68_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype021
/module_wrapper_68/dense_6/MatMul/ReadVariableOp?
 module_wrapper_68/dense_6/MatMulMatMul,module_wrapper_67/flatten_2/Reshape:output:07module_wrapper_68/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_68/dense_6/MatMul?
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_68_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?
!module_wrapper_68/dense_6/BiasAddBiasAdd*module_wrapper_68/dense_6/MatMul:product:08module_wrapper_68/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_68/dense_6/BiasAdd?
module_wrapper_68/dense_6/ReluRelu*module_wrapper_68/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_68/dense_6/Relu?
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOpJmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?
8module_wrapper_69/batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8module_wrapper_69/batch_normalization_16/batchnorm/add/y?
6module_wrapper_69/batch_normalization_16/batchnorm/addAddV2Imodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp:value:0Amodule_wrapper_69/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/add?
8module_wrapper_69/batch_normalization_16/batchnorm/RsqrtRsqrt:module_wrapper_69/batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt?
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOpNmodule_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?
6module_wrapper_69/batch_normalization_16/batchnorm/mulMul<module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt:y:0Mmodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/mul?
8module_wrapper_69/batch_normalization_16/batchnorm/mul_1Mul,module_wrapper_68/dense_6/Relu:activations:0:module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_69/batch_normalization_16/batchnorm/mul_1?
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOpLmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1?
8module_wrapper_69/batch_normalization_16/batchnorm/mul_2MulKmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1:value:0:module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_69/batch_normalization_16/batchnorm/mul_2?
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOpLmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02E
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2?
6module_wrapper_69/batch_normalization_16/batchnorm/subSubKmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2:value:0<module_wrapper_69/batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/sub?
8module_wrapper_69/batch_normalization_16/batchnorm/add_1AddV2<module_wrapper_69/batch_normalization_16/batchnorm/mul_1:z:0:module_wrapper_69/batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_69/batch_normalization_16/batchnorm/add_1?
%module_wrapper_70/dropout_16/IdentityIdentity<module_wrapper_69/batch_normalization_16/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2'
%module_wrapper_70/dropout_16/Identity?
/module_wrapper_71/dense_7/MatMul/ReadVariableOpReadVariableOp8module_wrapper_71_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/module_wrapper_71/dense_7/MatMul/ReadVariableOp?
 module_wrapper_71/dense_7/MatMulMatMul.module_wrapper_70/dropout_16/Identity:output:07module_wrapper_71/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_71/dense_7/MatMul?
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_71_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?
!module_wrapper_71/dense_7/BiasAddBiasAdd*module_wrapper_71/dense_7/MatMul:product:08module_wrapper_71/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_71/dense_7/BiasAdd?
module_wrapper_71/dense_7/ReluRelu*module_wrapper_71/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_71/dense_7/Relu?
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOpJmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?
8module_wrapper_72/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8module_wrapper_72/batch_normalization_17/batchnorm/add/y?
6module_wrapper_72/batch_normalization_17/batchnorm/addAddV2Imodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp:value:0Amodule_wrapper_72/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/add?
8module_wrapper_72/batch_normalization_17/batchnorm/RsqrtRsqrt:module_wrapper_72/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt?
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpNmodule_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?
6module_wrapper_72/batch_normalization_17/batchnorm/mulMul<module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt:y:0Mmodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/mul?
8module_wrapper_72/batch_normalization_17/batchnorm/mul_1Mul,module_wrapper_71/dense_7/Relu:activations:0:module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_72/batch_normalization_17/batchnorm/mul_1?
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOpLmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1?
8module_wrapper_72/batch_normalization_17/batchnorm/mul_2MulKmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1:value:0:module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_72/batch_normalization_17/batchnorm/mul_2?
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOpLmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02E
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2?
6module_wrapper_72/batch_normalization_17/batchnorm/subSubKmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2:value:0<module_wrapper_72/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/sub?
8module_wrapper_72/batch_normalization_17/batchnorm/add_1AddV2<module_wrapper_72/batch_normalization_17/batchnorm/mul_1:z:0:module_wrapper_72/batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_72/batch_normalization_17/batchnorm/add_1?
%module_wrapper_73/dropout_17/IdentityIdentity<module_wrapper_72/batch_normalization_17/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2'
%module_wrapper_73/dropout_17/Identity?
/module_wrapper_74/dense_8/MatMul/ReadVariableOpReadVariableOp8module_wrapper_74_dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
 module_wrapper_74/dense_8/MatMulMatMul.module_wrapper_73/dropout_17/Identity:output:07module_wrapper_74/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_74/dense_8/MatMul?
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_74_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?
!module_wrapper_74/dense_8/BiasAddBiasAdd*module_wrapper_74/dense_8/MatMul:product:08module_wrapper_74/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_74/dense_8/BiasAdd?
!module_wrapper_74/dense_8/SoftmaxSoftmax*module_wrapper_74/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_74/dense_8/Softmax?
IdentityIdentity+module_wrapper_74/dense_8/Softmax:softmax:03^module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2^module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp3^module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2^module_wrapper_51/conv2d_11/Conv2D/ReadVariableOpI^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpK^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_52/batch_normalization_12/ReadVariableOp:^module_wrapper_52/batch_normalization_12/ReadVariableOp_13^module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2^module_wrapper_55/conv2d_12/Conv2D/ReadVariableOpI^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpK^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_56/batch_normalization_13/ReadVariableOp:^module_wrapper_56/batch_normalization_13/ReadVariableOp_13^module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2^module_wrapper_59/conv2d_13/Conv2D/ReadVariableOpI^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpK^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_60/batch_normalization_14/ReadVariableOp:^module_wrapper_60/batch_normalization_14/ReadVariableOp_13^module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2^module_wrapper_63/conv2d_14/Conv2D/ReadVariableOpI^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpK^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_64/batch_normalization_15/ReadVariableOp:^module_wrapper_64/batch_normalization_15/ReadVariableOp_11^module_wrapper_68/dense_6/BiasAdd/ReadVariableOp0^module_wrapper_68/dense_6/MatMul/ReadVariableOpB^module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpD^module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1D^module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2F^module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp1^module_wrapper_71/dense_7/BiasAdd/ReadVariableOp0^module_wrapper_71/dense_7/MatMul/ReadVariableOpB^module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpD^module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1D^module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2F^module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp1^module_wrapper_74/dense_8/BiasAdd/ReadVariableOp0^module_wrapper_74/dense_8/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2h
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2f
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp2h
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2f
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp2?
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_52/batch_normalization_12/ReadVariableOp7module_wrapper_52/batch_normalization_12/ReadVariableOp2v
9module_wrapper_52/batch_normalization_12/ReadVariableOp_19module_wrapper_52/batch_normalization_12/ReadVariableOp_12h
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2f
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp2?
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_56/batch_normalization_13/ReadVariableOp7module_wrapper_56/batch_normalization_13/ReadVariableOp2v
9module_wrapper_56/batch_normalization_13/ReadVariableOp_19module_wrapper_56/batch_normalization_13/ReadVariableOp_12h
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2f
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp2?
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_60/batch_normalization_14/ReadVariableOp7module_wrapper_60/batch_normalization_14/ReadVariableOp2v
9module_wrapper_60/batch_normalization_14/ReadVariableOp_19module_wrapper_60/batch_normalization_14/ReadVariableOp_12h
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2f
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp2?
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_64/batch_normalization_15/ReadVariableOp7module_wrapper_64/batch_normalization_15/ReadVariableOp2v
9module_wrapper_64/batch_normalization_15/ReadVariableOp_19module_wrapper_64/batch_normalization_15/ReadVariableOp_12d
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp2b
/module_wrapper_68/dense_6/MatMul/ReadVariableOp/module_wrapper_68/dense_6/MatMul/ReadVariableOp2?
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpAmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp2?
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_12?
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_22?
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpEmodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp2d
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp2b
/module_wrapper_71/dense_7/MatMul/ReadVariableOp/module_wrapper_71/dense_7/MatMul/ReadVariableOp2?
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpAmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp2?
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_12?
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_22?
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpEmodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp2d
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp2b
/module_wrapper_74/dense_8/MatMul/ReadVariableOp/module_wrapper_74/dense_8/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_72_layer_call_fn_56202

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
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_517932
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
?
?
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_52048

args_0:
&dense_7_matmul_readvariableop_resource:
??6
'dense_7_biasadd_readvariableop_resource:	?
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulargs_0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_7/BiasAddq
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_7/Relu?
IdentityIdentitydense_7/Relu:activations:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
6__inference_batch_normalization_14_layer_call_fn_56492

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_536902
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
?
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_53690

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
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_56178

args_0:
&dense_7_matmul_readvariableop_resource:
??6
'dense_7_biasadd_readvariableop_resource:	?
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulargs_0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_7/BiasAddq
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_7/Relu?
IdentityIdentitydense_7/Relu:activations:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
__inference_loss_fn_1_56778i
Mmodule_wrapper_63_conv2d_14_kernel_regularizer_square_readvariableop_resource:??
identity??Dmodule_wrapper_63/conv2d_14/kernel/Regularizer/Square/ReadVariableOp?
Dmodule_wrapper_63/conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpMmodule_wrapper_63_conv2d_14_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:??*
dtype02F
Dmodule_wrapper_63/conv2d_14/kernel/Regularizer/Square/ReadVariableOp?
5module_wrapper_63/conv2d_14/kernel/Regularizer/SquareSquareLmodule_wrapper_63/conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??27
5module_wrapper_63/conv2d_14/kernel/Regularizer/Square?
4module_wrapper_63/conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             26
4module_wrapper_63/conv2d_14/kernel/Regularizer/Const?
2module_wrapper_63/conv2d_14/kernel/Regularizer/SumSum9module_wrapper_63/conv2d_14/kernel/Regularizer/Square:y:0=module_wrapper_63/conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2module_wrapper_63/conv2d_14/kernel/Regularizer/Sum?
4module_wrapper_63/conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<26
4module_wrapper_63/conv2d_14/kernel/Regularizer/mul/x?
2module_wrapper_63/conv2d_14/kernel/Regularizer/mulMul=module_wrapper_63/conv2d_14/kernel/Regularizer/mul/x:output:0;module_wrapper_63/conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2module_wrapper_63/conv2d_14/kernel/Regularizer/mul?
IdentityIdentity6module_wrapper_63/conv2d_14/kernel/Regularizer/mul:z:0E^module_wrapper_63/conv2d_14/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
Dmodule_wrapper_63/conv2d_14/kernel/Regularizer/Square/ReadVariableOpDmodule_wrapper_63/conv2d_14/kernel/Regularizer/Square/ReadVariableOp
?
?	
,__inference_sequential_2_layer_call_fn_54479

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

unknown_37:	?

unknown_38:
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
:?????????*>
_read_only_resource_inputs 
	
 !"%&'(*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_528682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

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
?
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_52487

args_0=
.batch_normalization_13_readvariableop_resource:	??
0batch_normalization_13_readvariableop_1_resource:	?N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?
identity??%batch_normalization_13/AssignNewValue?'batch_normalization_13/AssignNewValue_1?6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_13/ReadVariableOp?'batch_normalization_13/ReadVariableOp_1?
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_13/ReadVariableOp?
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_13/ReadVariableOp_1?
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_13/FusedBatchNormV3?
%batch_normalization_13/AssignNewValueAssignVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource4batch_normalization_13/FusedBatchNormV3:batch_mean:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_13/AssignNewValue?
'batch_normalization_13/AssignNewValue_1AssignVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_13/FusedBatchNormV3:batch_variance:09^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_13/AssignNewValue_1?
IdentityIdentity+batch_normalization_13/FusedBatchNormV3:y:0&^batch_normalization_13/AssignNewValue(^batch_normalization_13/AssignNewValue_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2N
%batch_normalization_13/AssignNewValue%batch_normalization_13/AssignNewValue2R
'batch_normalization_13/AssignNewValue_1'batch_normalization_13/AssignNewValue_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_52259

args_0=
.batch_normalization_15_readvariableop_resource:	??
0batch_normalization_15_readvariableop_1_resource:	?N
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?
identity??%batch_normalization_15/AssignNewValue?'batch_normalization_15/AssignNewValue_1?6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_15/ReadVariableOp?'batch_normalization_15/ReadVariableOp_1?
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_15/ReadVariableOp?
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_15/ReadVariableOp_1?
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_15/FusedBatchNormV3?
%batch_normalization_15/AssignNewValueAssignVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource4batch_normalization_15/FusedBatchNormV3:batch_mean:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_15/AssignNewValue?
'batch_normalization_15/AssignNewValue_1AssignVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_15/FusedBatchNormV3:batch_variance:09^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_15/AssignNewValue_1?
IdentityIdentity+batch_normalization_15/FusedBatchNormV3:y:0&^batch_normalization_15/AssignNewValue(^batch_normalization_15/AssignNewValue_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2N
%batch_normalization_15/AssignNewValue%batch_normalization_15/AssignNewValue2R
'batch_normalization_15/AssignNewValue_1'batch_normalization_15/AssignNewValue_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_55468

args_0<
.batch_normalization_12_readvariableop_resource:@>
0batch_normalization_12_readvariableop_1_resource:@M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@
identity??6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_12/ReadVariableOp?'batch_normalization_12/ReadVariableOp_1?
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_12/ReadVariableOp?
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_12/ReadVariableOp_1?
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_12/FusedBatchNormV3?
IdentityIdentity+batch_normalization_12/FusedBatchNormV3:y:07^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_55711

args_0D
(conv2d_13_conv2d_readvariableop_resource:??8
)conv2d_13_biasadd_readvariableop_resource:	?
identity?? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Dargs_0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_13/Relu?
IdentityIdentityconv2d_13/Relu:activations:0!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
j
1__inference_module_wrapper_58_layer_call_fn_55665

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_524342
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
?
?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_56380

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
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_55413

args_0B
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@
identity?? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2Dargs_0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_11/Relu?
IdentityIdentityconv2d_11/Relu:activations:0!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
?
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_53924

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
?
?
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_56722

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
?
?
1__inference_module_wrapper_71_layer_call_fn_56167

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
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_520482
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
?
M
1__inference_module_wrapper_67_layer_call_fn_55985

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
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_517002
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
?
?
6__inference_batch_normalization_14_layer_call_fn_56479

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_536462
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
?
?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_56460

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
?
L
0__inference_max_pooling2d_10_layer_call_fn_53762

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
GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_537562
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
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_55573

args_0C
(conv2d_12_conv2d_readvariableop_resource:@?8
)conv2d_12_biasadd_readvariableop_resource:	?
identity?? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2Dargs_0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_12/BiasAdd
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_12/Relu?
IdentityIdentityconv2d_12/Relu:activations:0!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_65_layer_call_fn_55943

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
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_522222
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
?
k
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_52548

args_0
identity?y
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_12/dropout/Const?
dropout_12/dropout/MulMulargs_0!dropout_12/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_12/dropout/Mulj
dropout_12/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_12/dropout/Shape?
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_12/dropout/random_uniform/RandomUniform?
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_12/dropout/GreaterEqual/y?
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_12/dropout/GreaterEqual?
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_12/dropout/Cast?
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_12/dropout/Mul_1x
IdentityIdentitydropout_12/dropout/Mul_1:z:0*
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
?
?
6__inference_batch_normalization_15_layer_call_fn_56560

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_538282
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
1__inference_module_wrapper_64_layer_call_fn_55884

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
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_516702
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
?
h
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_51508

args_0
identity?
max_pooling2d_8/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_8/MaxPool|
IdentityIdentity max_pooling2d_8/MaxPool:output:0*
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
?
?
1__inference_module_wrapper_72_layer_call_fn_56215

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
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_520142
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
?
?	
,__inference_sequential_2_layer_call_fn_54309
module_wrapper_50_input!
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

unknown_37:	?

unknown_38:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_50_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_518282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
/
_output_shapes
:?????????00
1
_user_specified_namemodule_wrapper_50_input
? 
?
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_56088

args_0G
8batch_normalization_16_batchnorm_readvariableop_resource:	?K
<batch_normalization_16_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_16_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_16_batchnorm_readvariableop_2_resource:	?
identity??/batch_normalization_16/batchnorm/ReadVariableOp?1batch_normalization_16/batchnorm/ReadVariableOp_1?1batch_normalization_16/batchnorm/ReadVariableOp_2?3batch_normalization_16/batchnorm/mul/ReadVariableOp?
/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_16/batchnorm/ReadVariableOp?
&batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_16/batchnorm/add/y?
$batch_normalization_16/batchnorm/addAddV27batch_normalization_16/batchnorm/ReadVariableOp:value:0/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/add?
&batch_normalization_16/batchnorm/RsqrtRsqrt(batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_16/batchnorm/Rsqrt?
3batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_16/batchnorm/mul/ReadVariableOp?
$batch_normalization_16/batchnorm/mulMul*batch_normalization_16/batchnorm/Rsqrt:y:0;batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/mul?
&batch_normalization_16/batchnorm/mul_1Mulargs_0(batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_16/batchnorm/mul_1?
1batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_16/batchnorm/ReadVariableOp_1?
&batch_normalization_16/batchnorm/mul_2Mul9batch_normalization_16/batchnorm/ReadVariableOp_1:value:0(batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_16/batchnorm/mul_2?
1batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_16/batchnorm/ReadVariableOp_2?
$batch_normalization_16/batchnorm/subSub9batch_normalization_16/batchnorm/ReadVariableOp_2:value:0*batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/sub?
&batch_normalization_16/batchnorm/add_1AddV2*batch_normalization_16/batchnorm/mul_1:z:0(batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_16/batchnorm/add_1?
IdentityIdentity*batch_normalization_16/batchnorm/add_1:z:00^batch_normalization_16/batchnorm/ReadVariableOp2^batch_normalization_16/batchnorm/ReadVariableOp_12^batch_normalization_16/batchnorm/ReadVariableOp_24^batch_normalization_16/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2b
/batch_normalization_16/batchnorm/ReadVariableOp/batch_normalization_16/batchnorm/ReadVariableOp2f
1batch_normalization_16/batchnorm/ReadVariableOp_11batch_normalization_16/batchnorm/ReadVariableOp_12f
1batch_normalization_16/batchnorm/ReadVariableOp_21batch_normalization_16/batchnorm/ReadVariableOp_22j
3batch_normalization_16/batchnorm/mul/ReadVariableOp3batch_normalization_16/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_56_layer_call_fn_55586

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_515522
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
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_56189

args_0:
&dense_7_matmul_readvariableop_resource:
??6
'dense_7_biasadd_readvariableop_resource:	?
identity??dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulargs_0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_7/BiasAddq
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_7/Relu?
IdentityIdentitydense_7/Relu:activations:0^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_51626

args_0
identity?
max_pooling2d_10/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool~
IdentityIdentity!max_pooling2d_10/MaxPool:output:0*
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
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_55871

args_0D
(conv2d_14_conv2d_readvariableop_resource:??8
)conv2d_14_biasadd_readvariableop_resource:	?
identity?? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2Dargs_0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_14/Relu?
IdentityIdentityconv2d_14/Relu:activations:0!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_55953

args_0
identity?
max_pooling2d_11/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPool~
IdentityIdentity!max_pooling2d_11/MaxPool:output:0*
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
M
1__inference_module_wrapper_70_layer_call_fn_56127

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
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_517542
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
?
M
1__inference_module_wrapper_65_layer_call_fn_55938

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
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_516852
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
?
k
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_55682

args_0
identity?y
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_13/dropout/Const?
dropout_13/dropout/MulMulargs_0!dropout_13/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_13/dropout/Mulj
dropout_13/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_13/dropout/Shape?
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype021
/dropout_13/dropout/random_uniform/RandomUniform?
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_13/dropout/GreaterEqual/y?
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2!
dropout_13/dropout/GreaterEqual?
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_13/dropout/Cast?
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_13/dropout/Mul_1y
IdentityIdentitydropout_13/dropout/Mul_1:z:0*
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
1__inference_module_wrapper_54_layer_call_fn_55511

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_515152
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
?
?
1__inference_module_wrapper_55_layer_call_fn_55542

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_515282
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
?
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_53756

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
?@
?
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_52014

args_0M
>batch_normalization_17_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_17_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_17_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_17_batchnorm_readvariableop_resource:	?
identity??&batch_normalization_17/AssignMovingAvg?5batch_normalization_17/AssignMovingAvg/ReadVariableOp?(batch_normalization_17/AssignMovingAvg_1?7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_17/batchnorm/ReadVariableOp?3batch_normalization_17/batchnorm/mul/ReadVariableOp?
5batch_normalization_17/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_17/moments/mean/reduction_indices?
#batch_normalization_17/moments/meanMeanargs_0>batch_normalization_17/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_17/moments/mean?
+batch_normalization_17/moments/StopGradientStopGradient,batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_17/moments/StopGradient?
0batch_normalization_17/moments/SquaredDifferenceSquaredDifferenceargs_04batch_normalization_17/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_17/moments/SquaredDifference?
9batch_normalization_17/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_17/moments/variance/reduction_indices?
'batch_normalization_17/moments/varianceMean4batch_normalization_17/moments/SquaredDifference:z:0Bbatch_normalization_17/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_17/moments/variance?
&batch_normalization_17/moments/SqueezeSqueeze,batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_17/moments/Squeeze?
(batch_normalization_17/moments/Squeeze_1Squeeze0batch_normalization_17/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_17/moments/Squeeze_1?
,batch_normalization_17/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_17/AssignMovingAvg/decay?
5batch_normalization_17/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_17_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_17/AssignMovingAvg/ReadVariableOp?
*batch_normalization_17/AssignMovingAvg/subSub=batch_normalization_17/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_17/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_17/AssignMovingAvg/sub?
*batch_normalization_17/AssignMovingAvg/mulMul.batch_normalization_17/AssignMovingAvg/sub:z:05batch_normalization_17/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_17/AssignMovingAvg/mul?
&batch_normalization_17/AssignMovingAvgAssignSubVariableOp>batch_normalization_17_assignmovingavg_readvariableop_resource.batch_normalization_17/AssignMovingAvg/mul:z:06^batch_normalization_17/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_17/AssignMovingAvg?
.batch_normalization_17/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_17/AssignMovingAvg_1/decay?
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_17_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_17/AssignMovingAvg_1/subSub?batch_normalization_17/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_17/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_17/AssignMovingAvg_1/sub?
,batch_normalization_17/AssignMovingAvg_1/mulMul0batch_normalization_17/AssignMovingAvg_1/sub:z:07batch_normalization_17/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_17/AssignMovingAvg_1/mul?
(batch_normalization_17/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_17_assignmovingavg_1_readvariableop_resource0batch_normalization_17/AssignMovingAvg_1/mul:z:08^batch_normalization_17/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_17/AssignMovingAvg_1?
&batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_17/batchnorm/add/y?
$batch_normalization_17/batchnorm/addAddV21batch_normalization_17/moments/Squeeze_1:output:0/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/add?
&batch_normalization_17/batchnorm/RsqrtRsqrt(batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_17/batchnorm/Rsqrt?
3batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_17/batchnorm/mul/ReadVariableOp?
$batch_normalization_17/batchnorm/mulMul*batch_normalization_17/batchnorm/Rsqrt:y:0;batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/mul?
&batch_normalization_17/batchnorm/mul_1Mulargs_0(batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_17/batchnorm/mul_1?
&batch_normalization_17/batchnorm/mul_2Mul/batch_normalization_17/moments/Squeeze:output:0(batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_17/batchnorm/mul_2?
/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_17/batchnorm/ReadVariableOp?
$batch_normalization_17/batchnorm/subSub7batch_normalization_17/batchnorm/ReadVariableOp:value:0*batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_17/batchnorm/sub?
&batch_normalization_17/batchnorm/add_1AddV2*batch_normalization_17/batchnorm/mul_1:z:0(batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_17/batchnorm/add_1?
IdentityIdentity*batch_normalization_17/batchnorm/add_1:z:0'^batch_normalization_17/AssignMovingAvg6^batch_normalization_17/AssignMovingAvg/ReadVariableOp)^batch_normalization_17/AssignMovingAvg_18^batch_normalization_17/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_17/batchnorm/ReadVariableOp4^batch_normalization_17/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2P
&batch_normalization_17/AssignMovingAvg&batch_normalization_17/AssignMovingAvg2n
5batch_normalization_17/AssignMovingAvg/ReadVariableOp5batch_normalization_17/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_17/AssignMovingAvg_1(batch_normalization_17/AssignMovingAvg_12r
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_17/batchnorm/ReadVariableOp/batch_normalization_17/batchnorm/ReadVariableOp2j
3batch_normalization_17/batchnorm/mul/ReadVariableOp3batch_normalization_17/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_51961

args_0
identity?y
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_17/dropout/Const?
dropout_17/dropout/MulMulargs_0!dropout_17/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_17/dropout/Mulj
dropout_17/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_17/dropout/Shape?
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_17/dropout/random_uniform/RandomUniform?
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_17/dropout/GreaterEqual/y?
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_17/dropout/GreaterEqual?
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_17/dropout/Cast?
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_17/dropout/Mul_1q
IdentityIdentitydropout_17/dropout/Mul_1:z:0*
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
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_56528

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
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_52450

args_0
identity?
max_pooling2d_9/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPool}
IdentityIdentity max_pooling2d_9/MaxPool:output:0*
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
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_51934

args_09
&dense_8_matmul_readvariableop_resource:	?5
'dense_8_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulargs_0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_8/BiasAddy
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_8/Softmax?
IdentityIdentitydense_8/Softmax:softmax:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_55384

args_0B
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: 
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2Dargs_0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
conv2d_10/Relu?
IdentityIdentityconv2d_10/Relu:activations:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_52407

args_0D
(conv2d_13_conv2d_readvariableop_resource:??8
)conv2d_13_biasadd_readvariableop_resource:	?
identity?? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Dargs_0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_13/Relu?
IdentityIdentityconv2d_13/Relu:activations:0!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_53894

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
?
?
1__inference_module_wrapper_69_layer_call_fn_56068

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
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_521282
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
M
1__inference_module_wrapper_67_layer_call_fn_55990

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
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_521832
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
?
?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_56442

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
6__inference_batch_normalization_16_layer_call_fn_56609

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_539242
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
?
?
1__inference_module_wrapper_52_layer_call_fn_55450

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_526012
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
?
?
1__inference_module_wrapper_50_layer_call_fn_55353

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_514522
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
h
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_55655

args_0
identity?
max_pooling2d_9/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPool}
IdentityIdentity max_pooling2d_9/MaxPool:output:0*
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
?
j
1__inference_module_wrapper_54_layer_call_fn_55516

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_525482
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
?
h
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_55996

args_0
identitys
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapeargs_0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten_2/Reshapeo
IdentityIdentityflatten_2/Reshape:output:0*
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
?
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_55486

args_0<
.batch_normalization_12_readvariableop_resource:@>
0batch_normalization_12_readvariableop_1_resource:@M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@
identity??%batch_normalization_12/AssignNewValue?'batch_normalization_12/AssignNewValue_1?6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_12/ReadVariableOp?'batch_normalization_12/ReadVariableOp_1?
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_12/ReadVariableOp?
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_12/ReadVariableOp_1?
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_12/FusedBatchNormV3?
%batch_normalization_12/AssignNewValueAssignVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource4batch_normalization_12/FusedBatchNormV3:batch_mean:07^batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_12/AssignNewValue?
'batch_normalization_12/AssignNewValue_1AssignVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_12/FusedBatchNormV3:batch_variance:09^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_12/AssignNewValue_1?
IdentityIdentity+batch_normalization_12/FusedBatchNormV3:y:0&^batch_normalization_12/AssignNewValue(^batch_normalization_12/AssignNewValue_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2N
%batch_normalization_12/AssignNewValue%batch_normalization_12/AssignNewValue2R
'batch_normalization_12/AssignNewValue_1'batch_normalization_12/AssignNewValue_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_51821

args_09
&dense_8_matmul_readvariableop_resource:	?5
'dense_8_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulargs_0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_8/BiasAddy
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_8/Softmax?
IdentityIdentitydense_8/Softmax:softmax:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_74_layer_call_fn_56305

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_518212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

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
?
h
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_51754

args_0
identityq
dropout_16/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_16/Identityq
IdentityIdentitydropout_16/Identity:output:0*
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
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_51567

args_0
identity?
max_pooling2d_9/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPool}
IdentityIdentity max_pooling2d_9/MaxPool:output:0*
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
k
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_52075

args_0
identity?y
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_16/dropout/Const?
dropout_16/dropout/MulMulargs_0!dropout_16/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_16/dropout/Mulj
dropout_16/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_16/dropout/Shape?
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_16/dropout/random_uniform/RandomUniform?
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_16/dropout/GreaterEqual/y?
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_16/dropout/GreaterEqual?
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_16/dropout/Cast?
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_16/dropout/Mul_1q
IdentityIdentitydropout_16/dropout/Mul_1:z:0*
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
?
?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_56596

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
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_52635

args_0B
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@
identity?? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2Dargs_0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_11/Relu?
IdentityIdentityconv2d_11/Relu:activations:0!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_68_layer_call_fn_56011

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
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_517132
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
?
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_55722

args_0D
(conv2d_13_conv2d_readvariableop_resource:??8
)conv2d_13_biasadd_readvariableop_resource:	?
identity?? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Dargs_0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_13/Relu?
IdentityIdentityconv2d_13/Relu:activations:0!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
6__inference_batch_normalization_13_layer_call_fn_56411

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_535082
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
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_55650

args_0
identity?
max_pooling2d_9/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPool}
IdentityIdentity max_pooling2d_9/MaxPool:output:0*
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
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_56325

args_09
&dense_8_matmul_readvariableop_resource:	?5
'dense_8_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulargs_0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_8/BiasAddy
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_8/Softmax?
IdentityIdentitydense_8/Softmax:softmax:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_69_layer_call_fn_56055

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
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_517392
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
?
?
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_54086

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
?
h
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_55506

args_0
identity?
max_pooling2d_8/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_8/MaxPool|
IdentityIdentity max_pooling2d_8/MaxPool:output:0*
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
?
?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_53552

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
?
?
6__inference_batch_normalization_16_layer_call_fn_56622

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_539842
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
?
h
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_55501

args_0
identity?
max_pooling2d_8/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_8/MaxPool|
IdentityIdentity max_pooling2d_8/MaxPool:output:0*
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
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_51528

args_0C
(conv2d_12_conv2d_readvariableop_resource:@?8
)conv2d_12_biasadd_readvariableop_resource:	?
identity?? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2Dargs_0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_12/BiasAdd
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_12/Relu?
IdentityIdentityconv2d_12/Relu:activations:0!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?@
?
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_52128

args_0M
>batch_normalization_16_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_16_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_16_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_16_batchnorm_readvariableop_resource:	?
identity??&batch_normalization_16/AssignMovingAvg?5batch_normalization_16/AssignMovingAvg/ReadVariableOp?(batch_normalization_16/AssignMovingAvg_1?7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_16/batchnorm/ReadVariableOp?3batch_normalization_16/batchnorm/mul/ReadVariableOp?
5batch_normalization_16/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_16/moments/mean/reduction_indices?
#batch_normalization_16/moments/meanMeanargs_0>batch_normalization_16/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_16/moments/mean?
+batch_normalization_16/moments/StopGradientStopGradient,batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_16/moments/StopGradient?
0batch_normalization_16/moments/SquaredDifferenceSquaredDifferenceargs_04batch_normalization_16/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_16/moments/SquaredDifference?
9batch_normalization_16/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_16/moments/variance/reduction_indices?
'batch_normalization_16/moments/varianceMean4batch_normalization_16/moments/SquaredDifference:z:0Bbatch_normalization_16/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_16/moments/variance?
&batch_normalization_16/moments/SqueezeSqueeze,batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_16/moments/Squeeze?
(batch_normalization_16/moments/Squeeze_1Squeeze0batch_normalization_16/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_16/moments/Squeeze_1?
,batch_normalization_16/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_16/AssignMovingAvg/decay?
5batch_normalization_16/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_16_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_16/AssignMovingAvg/ReadVariableOp?
*batch_normalization_16/AssignMovingAvg/subSub=batch_normalization_16/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_16/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_16/AssignMovingAvg/sub?
*batch_normalization_16/AssignMovingAvg/mulMul.batch_normalization_16/AssignMovingAvg/sub:z:05batch_normalization_16/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_16/AssignMovingAvg/mul?
&batch_normalization_16/AssignMovingAvgAssignSubVariableOp>batch_normalization_16_assignmovingavg_readvariableop_resource.batch_normalization_16/AssignMovingAvg/mul:z:06^batch_normalization_16/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_16/AssignMovingAvg?
.batch_normalization_16/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_16/AssignMovingAvg_1/decay?
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_16_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_16/AssignMovingAvg_1/subSub?batch_normalization_16/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_16/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_16/AssignMovingAvg_1/sub?
,batch_normalization_16/AssignMovingAvg_1/mulMul0batch_normalization_16/AssignMovingAvg_1/sub:z:07batch_normalization_16/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_16/AssignMovingAvg_1/mul?
(batch_normalization_16/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_16_assignmovingavg_1_readvariableop_resource0batch_normalization_16/AssignMovingAvg_1/mul:z:08^batch_normalization_16/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_16/AssignMovingAvg_1?
&batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_16/batchnorm/add/y?
$batch_normalization_16/batchnorm/addAddV21batch_normalization_16/moments/Squeeze_1:output:0/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/add?
&batch_normalization_16/batchnorm/RsqrtRsqrt(batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_16/batchnorm/Rsqrt?
3batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_16/batchnorm/mul/ReadVariableOp?
$batch_normalization_16/batchnorm/mulMul*batch_normalization_16/batchnorm/Rsqrt:y:0;batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/mul?
&batch_normalization_16/batchnorm/mul_1Mulargs_0(batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_16/batchnorm/mul_1?
&batch_normalization_16/batchnorm/mul_2Mul/batch_normalization_16/moments/Squeeze:output:0(batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_16/batchnorm/mul_2?
/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_16/batchnorm/ReadVariableOp?
$batch_normalization_16/batchnorm/subSub7batch_normalization_16/batchnorm/ReadVariableOp:value:0*batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/sub?
&batch_normalization_16/batchnorm/add_1AddV2*batch_normalization_16/batchnorm/mul_1:z:0(batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_16/batchnorm/add_1?
IdentityIdentity*batch_normalization_16/batchnorm/add_1:z:0'^batch_normalization_16/AssignMovingAvg6^batch_normalization_16/AssignMovingAvg/ReadVariableOp)^batch_normalization_16/AssignMovingAvg_18^batch_normalization_16/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_16/batchnorm/ReadVariableOp4^batch_normalization_16/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2P
&batch_normalization_16/AssignMovingAvg&batch_normalization_16/AssignMovingAvg2n
5batch_normalization_16/AssignMovingAvg/ReadVariableOp5batch_normalization_16/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_16/AssignMovingAvg_1(batch_normalization_16/AssignMovingAvg_12r
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_16/batchnorm/ReadVariableOp/batch_normalization_16/batchnorm/ReadVariableOp2j
3batch_normalization_16/batchnorm/mul/ReadVariableOp3batch_normalization_16/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_64_layer_call_fn_55897

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
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_522592
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
?
?
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_52373

args_0=
.batch_normalization_14_readvariableop_resource:	??
0batch_normalization_14_readvariableop_1_resource:	?N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?
identity??%batch_normalization_14/AssignNewValue?'batch_normalization_14/AssignNewValue_1?6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_14/ReadVariableOp?'batch_normalization_14/ReadVariableOp_1?
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_14/ReadVariableOp?
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_14/ReadVariableOp_1?
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_14/FusedBatchNormV3?
%batch_normalization_14/AssignNewValueAssignVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource4batch_normalization_14/FusedBatchNormV3:batch_mean:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_14/AssignNewValue?
'batch_normalization_14/AssignNewValue_1AssignVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_14/FusedBatchNormV3:batch_variance:09^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_14/AssignNewValue_1?
IdentityIdentity+batch_normalization_14/FusedBatchNormV3:y:0&^batch_normalization_14/AssignNewValue(^batch_normalization_14/AssignNewValue_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2N
%batch_normalization_14/AssignNewValue%batch_normalization_14/AssignNewValue2R
'batch_normalization_14/AssignNewValue_1'batch_normalization_14/AssignNewValue_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_60_layer_call_fn_55735

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
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_516112
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
?
h
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_56002

args_0
identitys
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapeargs_0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten_2/Reshapeo
IdentityIdentityflatten_2/Reshape:output:0*
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
?
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_55933

args_0=
.batch_normalization_15_readvariableop_resource:	??
0batch_normalization_15_readvariableop_1_resource:	?N
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?
identity??%batch_normalization_15/AssignNewValue?'batch_normalization_15/AssignNewValue_1?6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_15/ReadVariableOp?'batch_normalization_15/ReadVariableOp_1?
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_15/ReadVariableOp?
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_15/ReadVariableOp_1?
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_15/FusedBatchNormV3?
%batch_normalization_15/AssignNewValueAssignVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource4batch_normalization_15/FusedBatchNormV3:batch_mean:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_15/AssignNewValue?
'batch_normalization_15/AssignNewValue_1AssignVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_15/FusedBatchNormV3:batch_variance:09^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_15/AssignNewValue_1?
IdentityIdentity+batch_normalization_15/FusedBatchNormV3:y:0&^batch_normalization_15/AssignNewValue(^batch_normalization_15/AssignNewValue_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2N
%batch_normalization_15/AssignNewValue%batch_normalization_15/AssignNewValue2R
'batch_normalization_15/AssignNewValue_1'batch_normalization_15/AssignNewValue_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_56_layer_call_fn_55599

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_524872
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
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_56031

args_0:
&dense_6_matmul_readvariableop_resource:
?$?6
'dense_6_biasadd_readvariableop_resource:	?
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulargs_0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_6/Relu?
IdentityIdentitydense_6/Relu:activations:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????$: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameargs_0
??
?/
G__inference_sequential_2_layer_call_and_return_conditional_losses_55114
module_wrapper_50_inputT
:module_wrapper_50_conv2d_10_conv2d_readvariableop_resource: I
;module_wrapper_50_conv2d_10_biasadd_readvariableop_resource: T
:module_wrapper_51_conv2d_11_conv2d_readvariableop_resource: @I
;module_wrapper_51_conv2d_11_biasadd_readvariableop_resource:@N
@module_wrapper_52_batch_normalization_12_readvariableop_resource:@P
Bmodule_wrapper_52_batch_normalization_12_readvariableop_1_resource:@_
Qmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@a
Smodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@U
:module_wrapper_55_conv2d_12_conv2d_readvariableop_resource:@?J
;module_wrapper_55_conv2d_12_biasadd_readvariableop_resource:	?O
@module_wrapper_56_batch_normalization_13_readvariableop_resource:	?Q
Bmodule_wrapper_56_batch_normalization_13_readvariableop_1_resource:	?`
Qmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?V
:module_wrapper_59_conv2d_13_conv2d_readvariableop_resource:??J
;module_wrapper_59_conv2d_13_biasadd_readvariableop_resource:	?O
@module_wrapper_60_batch_normalization_14_readvariableop_resource:	?Q
Bmodule_wrapper_60_batch_normalization_14_readvariableop_1_resource:	?`
Qmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?V
:module_wrapper_63_conv2d_14_conv2d_readvariableop_resource:??J
;module_wrapper_63_conv2d_14_biasadd_readvariableop_resource:	?O
@module_wrapper_64_batch_normalization_15_readvariableop_resource:	?Q
Bmodule_wrapper_64_batch_normalization_15_readvariableop_1_resource:	?`
Qmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?L
8module_wrapper_68_dense_6_matmul_readvariableop_resource:
?$?H
9module_wrapper_68_dense_6_biasadd_readvariableop_resource:	?Y
Jmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource:	?]
Nmodule_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource:	?[
Lmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_1_resource:	?[
Lmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_2_resource:	?L
8module_wrapper_71_dense_7_matmul_readvariableop_resource:
??H
9module_wrapper_71_dense_7_biasadd_readvariableop_resource:	?Y
Jmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource:	?]
Nmodule_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource:	?[
Lmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_1_resource:	?[
Lmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_2_resource:	?K
8module_wrapper_74_dense_8_matmul_readvariableop_resource:	?G
9module_wrapper_74_dense_8_biasadd_readvariableop_resource:
identity??2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp?2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_52/batch_normalization_12/ReadVariableOp?9module_wrapper_52/batch_normalization_12/ReadVariableOp_1?2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_56/batch_normalization_13/ReadVariableOp?9module_wrapper_56/batch_normalization_13/ReadVariableOp_1?2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_60/batch_normalization_14/ReadVariableOp?9module_wrapper_60/batch_normalization_14/ReadVariableOp_1?2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_64/batch_normalization_15/ReadVariableOp?9module_wrapper_64/batch_normalization_15/ReadVariableOp_1?0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?/module_wrapper_68/dense_6/MatMul/ReadVariableOp?Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1?Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2?Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?/module_wrapper_71/dense_7/MatMul/ReadVariableOp?Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1?Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2?Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_50_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp?
"module_wrapper_50/conv2d_10/Conv2DConv2Dmodule_wrapper_50_input9module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2$
"module_wrapper_50/conv2d_10/Conv2D?
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_50_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?
#module_wrapper_50/conv2d_10/BiasAddBiasAdd+module_wrapper_50/conv2d_10/Conv2D:output:0:module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2%
#module_wrapper_50/conv2d_10/BiasAdd?
 module_wrapper_50/conv2d_10/ReluRelu,module_wrapper_50/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2"
 module_wrapper_50/conv2d_10/Relu?
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_51_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype023
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?
"module_wrapper_51/conv2d_11/Conv2DConv2D.module_wrapper_50/conv2d_10/Relu:activations:09module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2$
"module_wrapper_51/conv2d_11/Conv2D?
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_51_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype024
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?
#module_wrapper_51/conv2d_11/BiasAddBiasAdd+module_wrapper_51/conv2d_11/Conv2D:output:0:module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2%
#module_wrapper_51/conv2d_11/BiasAdd?
 module_wrapper_51/conv2d_11/ReluRelu,module_wrapper_51/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2"
 module_wrapper_51/conv2d_11/Relu?
7module_wrapper_52/batch_normalization_12/ReadVariableOpReadVariableOp@module_wrapper_52_batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype029
7module_wrapper_52/batch_normalization_12/ReadVariableOp?
9module_wrapper_52/batch_normalization_12/ReadVariableOp_1ReadVariableOpBmodule_wrapper_52_batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9module_wrapper_52/batch_normalization_12/ReadVariableOp_1?
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02J
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02L
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_52/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3.module_wrapper_51/conv2d_11/Relu:activations:0?module_wrapper_52/batch_normalization_12/ReadVariableOp:value:0Amodule_wrapper_52/batch_normalization_12/ReadVariableOp_1:value:0Pmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2;
9module_wrapper_52/batch_normalization_12/FusedBatchNormV3?
)module_wrapper_53/max_pooling2d_8/MaxPoolMaxPool=module_wrapper_52/batch_normalization_12/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_53/max_pooling2d_8/MaxPool?
%module_wrapper_54/dropout_12/IdentityIdentity2module_wrapper_53/max_pooling2d_8/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2'
%module_wrapper_54/dropout_12/Identity?
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_55_conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?
"module_wrapper_55/conv2d_12/Conv2DConv2D.module_wrapper_54/dropout_12/Identity:output:09module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_55/conv2d_12/Conv2D?
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_55_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?
#module_wrapper_55/conv2d_12/BiasAddBiasAdd+module_wrapper_55/conv2d_12/Conv2D:output:0:module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_55/conv2d_12/BiasAdd?
 module_wrapper_55/conv2d_12/ReluRelu,module_wrapper_55/conv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_55/conv2d_12/Relu?
7module_wrapper_56/batch_normalization_13/ReadVariableOpReadVariableOp@module_wrapper_56_batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_56/batch_normalization_13/ReadVariableOp?
9module_wrapper_56/batch_normalization_13/ReadVariableOp_1ReadVariableOpBmodule_wrapper_56_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_56/batch_normalization_13/ReadVariableOp_1?
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_56/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3.module_wrapper_55/conv2d_12/Relu:activations:0?module_wrapper_56/batch_normalization_13/ReadVariableOp:value:0Amodule_wrapper_56/batch_normalization_13/ReadVariableOp_1:value:0Pmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9module_wrapper_56/batch_normalization_13/FusedBatchNormV3?
)module_wrapper_57/max_pooling2d_9/MaxPoolMaxPool=module_wrapper_56/batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_57/max_pooling2d_9/MaxPool?
%module_wrapper_58/dropout_13/IdentityIdentity2module_wrapper_57/max_pooling2d_9/MaxPool:output:0*
T0*0
_output_shapes
:??????????2'
%module_wrapper_58/dropout_13/Identity?
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_59_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?
"module_wrapper_59/conv2d_13/Conv2DConv2D.module_wrapper_58/dropout_13/Identity:output:09module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_59/conv2d_13/Conv2D?
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_59_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?
#module_wrapper_59/conv2d_13/BiasAddBiasAdd+module_wrapper_59/conv2d_13/Conv2D:output:0:module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_59/conv2d_13/BiasAdd?
 module_wrapper_59/conv2d_13/ReluRelu,module_wrapper_59/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_59/conv2d_13/Relu?
7module_wrapper_60/batch_normalization_14/ReadVariableOpReadVariableOp@module_wrapper_60_batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_60/batch_normalization_14/ReadVariableOp?
9module_wrapper_60/batch_normalization_14/ReadVariableOp_1ReadVariableOpBmodule_wrapper_60_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_60/batch_normalization_14/ReadVariableOp_1?
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_60/batch_normalization_14/FusedBatchNormV3FusedBatchNormV3.module_wrapper_59/conv2d_13/Relu:activations:0?module_wrapper_60/batch_normalization_14/ReadVariableOp:value:0Amodule_wrapper_60/batch_normalization_14/ReadVariableOp_1:value:0Pmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9module_wrapper_60/batch_normalization_14/FusedBatchNormV3?
*module_wrapper_61/max_pooling2d_10/MaxPoolMaxPool=module_wrapper_60/batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2,
*module_wrapper_61/max_pooling2d_10/MaxPool?
%module_wrapper_62/dropout_14/IdentityIdentity3module_wrapper_61/max_pooling2d_10/MaxPool:output:0*
T0*0
_output_shapes
:??????????2'
%module_wrapper_62/dropout_14/Identity?
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_63_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?
"module_wrapper_63/conv2d_14/Conv2DConv2D.module_wrapper_62/dropout_14/Identity:output:09module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_63/conv2d_14/Conv2D?
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_63_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?
#module_wrapper_63/conv2d_14/BiasAddBiasAdd+module_wrapper_63/conv2d_14/Conv2D:output:0:module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_63/conv2d_14/BiasAdd?
 module_wrapper_63/conv2d_14/ReluRelu,module_wrapper_63/conv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_63/conv2d_14/Relu?
7module_wrapper_64/batch_normalization_15/ReadVariableOpReadVariableOp@module_wrapper_64_batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_64/batch_normalization_15/ReadVariableOp?
9module_wrapper_64/batch_normalization_15/ReadVariableOp_1ReadVariableOpBmodule_wrapper_64_batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_64/batch_normalization_15/ReadVariableOp_1?
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_64/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3.module_wrapper_63/conv2d_14/Relu:activations:0?module_wrapper_64/batch_normalization_15/ReadVariableOp:value:0Amodule_wrapper_64/batch_normalization_15/ReadVariableOp_1:value:0Pmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9module_wrapper_64/batch_normalization_15/FusedBatchNormV3?
*module_wrapper_65/max_pooling2d_11/MaxPoolMaxPool=module_wrapper_64/batch_normalization_15/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2,
*module_wrapper_65/max_pooling2d_11/MaxPool?
%module_wrapper_66/dropout_15/IdentityIdentity3module_wrapper_65/max_pooling2d_11/MaxPool:output:0*
T0*0
_output_shapes
:??????????2'
%module_wrapper_66/dropout_15/Identity?
!module_wrapper_67/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2#
!module_wrapper_67/flatten_2/Const?
#module_wrapper_67/flatten_2/ReshapeReshape.module_wrapper_66/dropout_15/Identity:output:0*module_wrapper_67/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????$2%
#module_wrapper_67/flatten_2/Reshape?
/module_wrapper_68/dense_6/MatMul/ReadVariableOpReadVariableOp8module_wrapper_68_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype021
/module_wrapper_68/dense_6/MatMul/ReadVariableOp?
 module_wrapper_68/dense_6/MatMulMatMul,module_wrapper_67/flatten_2/Reshape:output:07module_wrapper_68/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_68/dense_6/MatMul?
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_68_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?
!module_wrapper_68/dense_6/BiasAddBiasAdd*module_wrapper_68/dense_6/MatMul:product:08module_wrapper_68/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_68/dense_6/BiasAdd?
module_wrapper_68/dense_6/ReluRelu*module_wrapper_68/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_68/dense_6/Relu?
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOpJmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?
8module_wrapper_69/batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8module_wrapper_69/batch_normalization_16/batchnorm/add/y?
6module_wrapper_69/batch_normalization_16/batchnorm/addAddV2Imodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp:value:0Amodule_wrapper_69/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/add?
8module_wrapper_69/batch_normalization_16/batchnorm/RsqrtRsqrt:module_wrapper_69/batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt?
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOpNmodule_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?
6module_wrapper_69/batch_normalization_16/batchnorm/mulMul<module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt:y:0Mmodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/mul?
8module_wrapper_69/batch_normalization_16/batchnorm/mul_1Mul,module_wrapper_68/dense_6/Relu:activations:0:module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_69/batch_normalization_16/batchnorm/mul_1?
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOpLmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1?
8module_wrapper_69/batch_normalization_16/batchnorm/mul_2MulKmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1:value:0:module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_69/batch_normalization_16/batchnorm/mul_2?
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOpLmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02E
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2?
6module_wrapper_69/batch_normalization_16/batchnorm/subSubKmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2:value:0<module_wrapper_69/batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/sub?
8module_wrapper_69/batch_normalization_16/batchnorm/add_1AddV2<module_wrapper_69/batch_normalization_16/batchnorm/mul_1:z:0:module_wrapper_69/batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_69/batch_normalization_16/batchnorm/add_1?
%module_wrapper_70/dropout_16/IdentityIdentity<module_wrapper_69/batch_normalization_16/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2'
%module_wrapper_70/dropout_16/Identity?
/module_wrapper_71/dense_7/MatMul/ReadVariableOpReadVariableOp8module_wrapper_71_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/module_wrapper_71/dense_7/MatMul/ReadVariableOp?
 module_wrapper_71/dense_7/MatMulMatMul.module_wrapper_70/dropout_16/Identity:output:07module_wrapper_71/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_71/dense_7/MatMul?
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_71_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?
!module_wrapper_71/dense_7/BiasAddBiasAdd*module_wrapper_71/dense_7/MatMul:product:08module_wrapper_71/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_71/dense_7/BiasAdd?
module_wrapper_71/dense_7/ReluRelu*module_wrapper_71/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_71/dense_7/Relu?
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOpJmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?
8module_wrapper_72/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8module_wrapper_72/batch_normalization_17/batchnorm/add/y?
6module_wrapper_72/batch_normalization_17/batchnorm/addAddV2Imodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp:value:0Amodule_wrapper_72/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/add?
8module_wrapper_72/batch_normalization_17/batchnorm/RsqrtRsqrt:module_wrapper_72/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt?
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpNmodule_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?
6module_wrapper_72/batch_normalization_17/batchnorm/mulMul<module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt:y:0Mmodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/mul?
8module_wrapper_72/batch_normalization_17/batchnorm/mul_1Mul,module_wrapper_71/dense_7/Relu:activations:0:module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_72/batch_normalization_17/batchnorm/mul_1?
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOpLmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1?
8module_wrapper_72/batch_normalization_17/batchnorm/mul_2MulKmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1:value:0:module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_72/batch_normalization_17/batchnorm/mul_2?
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOpLmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02E
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2?
6module_wrapper_72/batch_normalization_17/batchnorm/subSubKmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2:value:0<module_wrapper_72/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/sub?
8module_wrapper_72/batch_normalization_17/batchnorm/add_1AddV2<module_wrapper_72/batch_normalization_17/batchnorm/mul_1:z:0:module_wrapper_72/batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_72/batch_normalization_17/batchnorm/add_1?
%module_wrapper_73/dropout_17/IdentityIdentity<module_wrapper_72/batch_normalization_17/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2'
%module_wrapper_73/dropout_17/Identity?
/module_wrapper_74/dense_8/MatMul/ReadVariableOpReadVariableOp8module_wrapper_74_dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
 module_wrapper_74/dense_8/MatMulMatMul.module_wrapper_73/dropout_17/Identity:output:07module_wrapper_74/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_74/dense_8/MatMul?
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_74_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?
!module_wrapper_74/dense_8/BiasAddBiasAdd*module_wrapper_74/dense_8/MatMul:product:08module_wrapper_74/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_74/dense_8/BiasAdd?
!module_wrapper_74/dense_8/SoftmaxSoftmax*module_wrapper_74/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_74/dense_8/Softmax?
IdentityIdentity+module_wrapper_74/dense_8/Softmax:softmax:03^module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2^module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp3^module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2^module_wrapper_51/conv2d_11/Conv2D/ReadVariableOpI^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpK^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_52/batch_normalization_12/ReadVariableOp:^module_wrapper_52/batch_normalization_12/ReadVariableOp_13^module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2^module_wrapper_55/conv2d_12/Conv2D/ReadVariableOpI^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpK^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_56/batch_normalization_13/ReadVariableOp:^module_wrapper_56/batch_normalization_13/ReadVariableOp_13^module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2^module_wrapper_59/conv2d_13/Conv2D/ReadVariableOpI^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpK^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_60/batch_normalization_14/ReadVariableOp:^module_wrapper_60/batch_normalization_14/ReadVariableOp_13^module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2^module_wrapper_63/conv2d_14/Conv2D/ReadVariableOpI^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpK^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_64/batch_normalization_15/ReadVariableOp:^module_wrapper_64/batch_normalization_15/ReadVariableOp_11^module_wrapper_68/dense_6/BiasAdd/ReadVariableOp0^module_wrapper_68/dense_6/MatMul/ReadVariableOpB^module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpD^module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1D^module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2F^module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp1^module_wrapper_71/dense_7/BiasAdd/ReadVariableOp0^module_wrapper_71/dense_7/MatMul/ReadVariableOpB^module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpD^module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1D^module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2F^module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp1^module_wrapper_74/dense_8/BiasAdd/ReadVariableOp0^module_wrapper_74/dense_8/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2h
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2f
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp2h
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2f
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp2?
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_52/batch_normalization_12/ReadVariableOp7module_wrapper_52/batch_normalization_12/ReadVariableOp2v
9module_wrapper_52/batch_normalization_12/ReadVariableOp_19module_wrapper_52/batch_normalization_12/ReadVariableOp_12h
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2f
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp2?
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_56/batch_normalization_13/ReadVariableOp7module_wrapper_56/batch_normalization_13/ReadVariableOp2v
9module_wrapper_56/batch_normalization_13/ReadVariableOp_19module_wrapper_56/batch_normalization_13/ReadVariableOp_12h
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2f
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp2?
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_60/batch_normalization_14/ReadVariableOp7module_wrapper_60/batch_normalization_14/ReadVariableOp2v
9module_wrapper_60/batch_normalization_14/ReadVariableOp_19module_wrapper_60/batch_normalization_14/ReadVariableOp_12h
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2f
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp2?
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_64/batch_normalization_15/ReadVariableOp7module_wrapper_64/batch_normalization_15/ReadVariableOp2v
9module_wrapper_64/batch_normalization_15/ReadVariableOp_19module_wrapper_64/batch_normalization_15/ReadVariableOp_12d
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp2b
/module_wrapper_68/dense_6/MatMul/ReadVariableOp/module_wrapper_68/dense_6/MatMul/ReadVariableOp2?
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpAmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp2?
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_12?
Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2Cmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_22?
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpEmodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp2d
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp2b
/module_wrapper_71/dense_7/MatMul/ReadVariableOp/module_wrapper_71/dense_7/MatMul/ReadVariableOp2?
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpAmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp2?
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_12?
Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2Cmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_22?
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpEmodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp2d
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp2b
/module_wrapper_74/dense_8/MatMul/ReadVariableOp/module_wrapper_74/dense_8/MatMul/ReadVariableOp:h d
/
_output_shapes
:?????????00
1
_user_specified_namemodule_wrapper_50_input
?*
?
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_53984

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
?
K
/__inference_max_pooling2d_8_layer_call_fn_53486

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
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_534802
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
?
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_55635

args_0=
.batch_normalization_13_readvariableop_resource:	??
0batch_normalization_13_readvariableop_1_resource:	?N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?
identity??%batch_normalization_13/AssignNewValue?'batch_normalization_13/AssignNewValue_1?6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_13/ReadVariableOp?'batch_normalization_13/ReadVariableOp_1?
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_13/ReadVariableOp?
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_13/ReadVariableOp_1?
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_13/FusedBatchNormV3?
%batch_normalization_13/AssignNewValueAssignVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource4batch_normalization_13/FusedBatchNormV3:batch_mean:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_13/AssignNewValue?
'batch_normalization_13/AssignNewValue_1AssignVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_13/FusedBatchNormV3:batch_variance:09^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_13/AssignNewValue_1?
IdentityIdentity+batch_normalization_13/FusedBatchNormV3:y:0&^batch_normalization_13/AssignNewValue(^batch_normalization_13/AssignNewValue_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2N
%batch_normalization_13/AssignNewValue%batch_normalization_13/AssignNewValue2R
'batch_normalization_13/AssignNewValue_1'batch_normalization_13/AssignNewValue_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_71_layer_call_fn_56158

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
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_517672
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
?
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_56336

args_09
&dense_8_matmul_readvariableop_resource:	?5
'dense_8_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulargs_0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_8/BiasAddy
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_8/Softmax?
IdentityIdentitydense_8/Softmax:softmax:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
6__inference_batch_normalization_17_layer_call_fn_56689

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_540862
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
?
?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_53414

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
??
?4
G__inference_sequential_2_layer_call_and_return_conditional_losses_54954

inputsT
:module_wrapper_50_conv2d_10_conv2d_readvariableop_resource: I
;module_wrapper_50_conv2d_10_biasadd_readvariableop_resource: T
:module_wrapper_51_conv2d_11_conv2d_readvariableop_resource: @I
;module_wrapper_51_conv2d_11_biasadd_readvariableop_resource:@N
@module_wrapper_52_batch_normalization_12_readvariableop_resource:@P
Bmodule_wrapper_52_batch_normalization_12_readvariableop_1_resource:@_
Qmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@a
Smodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@U
:module_wrapper_55_conv2d_12_conv2d_readvariableop_resource:@?J
;module_wrapper_55_conv2d_12_biasadd_readvariableop_resource:	?O
@module_wrapper_56_batch_normalization_13_readvariableop_resource:	?Q
Bmodule_wrapper_56_batch_normalization_13_readvariableop_1_resource:	?`
Qmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?V
:module_wrapper_59_conv2d_13_conv2d_readvariableop_resource:??J
;module_wrapper_59_conv2d_13_biasadd_readvariableop_resource:	?O
@module_wrapper_60_batch_normalization_14_readvariableop_resource:	?Q
Bmodule_wrapper_60_batch_normalization_14_readvariableop_1_resource:	?`
Qmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?V
:module_wrapper_63_conv2d_14_conv2d_readvariableop_resource:??J
;module_wrapper_63_conv2d_14_biasadd_readvariableop_resource:	?O
@module_wrapper_64_batch_normalization_15_readvariableop_resource:	?Q
Bmodule_wrapper_64_batch_normalization_15_readvariableop_1_resource:	?`
Qmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?b
Smodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?L
8module_wrapper_68_dense_6_matmul_readvariableop_resource:
?$?H
9module_wrapper_68_dense_6_biasadd_readvariableop_resource:	?_
Pmodule_wrapper_69_batch_normalization_16_assignmovingavg_readvariableop_resource:	?a
Rmodule_wrapper_69_batch_normalization_16_assignmovingavg_1_readvariableop_resource:	?]
Nmodule_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource:	?Y
Jmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource:	?L
8module_wrapper_71_dense_7_matmul_readvariableop_resource:
??H
9module_wrapper_71_dense_7_biasadd_readvariableop_resource:	?_
Pmodule_wrapper_72_batch_normalization_17_assignmovingavg_readvariableop_resource:	?a
Rmodule_wrapper_72_batch_normalization_17_assignmovingavg_1_readvariableop_resource:	?]
Nmodule_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource:	?Y
Jmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource:	?K
8module_wrapper_74_dense_8_matmul_readvariableop_resource:	?G
9module_wrapper_74_dense_8_biasadd_readvariableop_resource:
identity??2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp?2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?7module_wrapper_52/batch_normalization_12/AssignNewValue?9module_wrapper_52/batch_normalization_12/AssignNewValue_1?Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_52/batch_normalization_12/ReadVariableOp?9module_wrapper_52/batch_normalization_12/ReadVariableOp_1?2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?7module_wrapper_56/batch_normalization_13/AssignNewValue?9module_wrapper_56/batch_normalization_13/AssignNewValue_1?Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_56/batch_normalization_13/ReadVariableOp?9module_wrapper_56/batch_normalization_13/ReadVariableOp_1?2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?7module_wrapper_60/batch_normalization_14/AssignNewValue?9module_wrapper_60/batch_normalization_14/AssignNewValue_1?Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_60/batch_normalization_14/ReadVariableOp?9module_wrapper_60/batch_normalization_14/ReadVariableOp_1?2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?7module_wrapper_64/batch_normalization_15/AssignNewValue?9module_wrapper_64/batch_normalization_15/AssignNewValue_1?Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?7module_wrapper_64/batch_normalization_15/ReadVariableOp?9module_wrapper_64/batch_normalization_15/ReadVariableOp_1?0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?/module_wrapper_68/dense_6/MatMul/ReadVariableOp?8module_wrapper_69/batch_normalization_16/AssignMovingAvg?Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp?:module_wrapper_69/batch_normalization_16/AssignMovingAvg_1?Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?/module_wrapper_71/dense_7/MatMul/ReadVariableOp?8module_wrapper_72/batch_normalization_17/AssignMovingAvg?Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp?:module_wrapper_72/batch_normalization_17/AssignMovingAvg_1?Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp?Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_50_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp?
"module_wrapper_50/conv2d_10/Conv2DConv2Dinputs9module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2$
"module_wrapper_50/conv2d_10/Conv2D?
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_50_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?
#module_wrapper_50/conv2d_10/BiasAddBiasAdd+module_wrapper_50/conv2d_10/Conv2D:output:0:module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2%
#module_wrapper_50/conv2d_10/BiasAdd?
 module_wrapper_50/conv2d_10/ReluRelu,module_wrapper_50/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2"
 module_wrapper_50/conv2d_10/Relu?
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_51_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype023
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?
"module_wrapper_51/conv2d_11/Conv2DConv2D.module_wrapper_50/conv2d_10/Relu:activations:09module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2$
"module_wrapper_51/conv2d_11/Conv2D?
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_51_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype024
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?
#module_wrapper_51/conv2d_11/BiasAddBiasAdd+module_wrapper_51/conv2d_11/Conv2D:output:0:module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2%
#module_wrapper_51/conv2d_11/BiasAdd?
 module_wrapper_51/conv2d_11/ReluRelu,module_wrapper_51/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2"
 module_wrapper_51/conv2d_11/Relu?
7module_wrapper_52/batch_normalization_12/ReadVariableOpReadVariableOp@module_wrapper_52_batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype029
7module_wrapper_52/batch_normalization_12/ReadVariableOp?
9module_wrapper_52/batch_normalization_12/ReadVariableOp_1ReadVariableOpBmodule_wrapper_52_batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9module_wrapper_52/batch_normalization_12/ReadVariableOp_1?
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02J
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02L
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_52/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3.module_wrapper_51/conv2d_11/Relu:activations:0?module_wrapper_52/batch_normalization_12/ReadVariableOp:value:0Amodule_wrapper_52/batch_normalization_12/ReadVariableOp_1:value:0Pmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2;
9module_wrapper_52/batch_normalization_12/FusedBatchNormV3?
7module_wrapper_52/batch_normalization_12/AssignNewValueAssignVariableOpQmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resourceFmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3:batch_mean:0I^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_52/batch_normalization_12/AssignNewValue?
9module_wrapper_52/batch_normalization_12/AssignNewValue_1AssignVariableOpSmodule_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resourceJmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3:batch_variance:0K^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02;
9module_wrapper_52/batch_normalization_12/AssignNewValue_1?
)module_wrapper_53/max_pooling2d_8/MaxPoolMaxPool=module_wrapper_52/batch_normalization_12/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_53/max_pooling2d_8/MaxPool?
*module_wrapper_54/dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_54/dropout_12/dropout/Const?
(module_wrapper_54/dropout_12/dropout/MulMul2module_wrapper_53/max_pooling2d_8/MaxPool:output:03module_wrapper_54/dropout_12/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2*
(module_wrapper_54/dropout_12/dropout/Mul?
*module_wrapper_54/dropout_12/dropout/ShapeShape2module_wrapper_53/max_pooling2d_8/MaxPool:output:0*
T0*
_output_shapes
:2,
*module_wrapper_54/dropout_12/dropout/Shape?
Amodule_wrapper_54/dropout_12/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_54/dropout_12/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02C
Amodule_wrapper_54/dropout_12/dropout/random_uniform/RandomUniform?
3module_wrapper_54/dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_54/dropout_12/dropout/GreaterEqual/y?
1module_wrapper_54/dropout_12/dropout/GreaterEqualGreaterEqualJmodule_wrapper_54/dropout_12/dropout/random_uniform/RandomUniform:output:0<module_wrapper_54/dropout_12/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@23
1module_wrapper_54/dropout_12/dropout/GreaterEqual?
)module_wrapper_54/dropout_12/dropout/CastCast5module_wrapper_54/dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2+
)module_wrapper_54/dropout_12/dropout/Cast?
*module_wrapper_54/dropout_12/dropout/Mul_1Mul,module_wrapper_54/dropout_12/dropout/Mul:z:0-module_wrapper_54/dropout_12/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2,
*module_wrapper_54/dropout_12/dropout/Mul_1?
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_55_conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?
"module_wrapper_55/conv2d_12/Conv2DConv2D.module_wrapper_54/dropout_12/dropout/Mul_1:z:09module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_55/conv2d_12/Conv2D?
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_55_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?
#module_wrapper_55/conv2d_12/BiasAddBiasAdd+module_wrapper_55/conv2d_12/Conv2D:output:0:module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_55/conv2d_12/BiasAdd?
 module_wrapper_55/conv2d_12/ReluRelu,module_wrapper_55/conv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_55/conv2d_12/Relu?
7module_wrapper_56/batch_normalization_13/ReadVariableOpReadVariableOp@module_wrapper_56_batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_56/batch_normalization_13/ReadVariableOp?
9module_wrapper_56/batch_normalization_13/ReadVariableOp_1ReadVariableOpBmodule_wrapper_56_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_56/batch_normalization_13/ReadVariableOp_1?
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_56/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3.module_wrapper_55/conv2d_12/Relu:activations:0?module_wrapper_56/batch_normalization_13/ReadVariableOp:value:0Amodule_wrapper_56/batch_normalization_13/ReadVariableOp_1:value:0Pmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2;
9module_wrapper_56/batch_normalization_13/FusedBatchNormV3?
7module_wrapper_56/batch_normalization_13/AssignNewValueAssignVariableOpQmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resourceFmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3:batch_mean:0I^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_56/batch_normalization_13/AssignNewValue?
9module_wrapper_56/batch_normalization_13/AssignNewValue_1AssignVariableOpSmodule_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resourceJmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3:batch_variance:0K^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02;
9module_wrapper_56/batch_normalization_13/AssignNewValue_1?
)module_wrapper_57/max_pooling2d_9/MaxPoolMaxPool=module_wrapper_56/batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)module_wrapper_57/max_pooling2d_9/MaxPool?
*module_wrapper_58/dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_58/dropout_13/dropout/Const?
(module_wrapper_58/dropout_13/dropout/MulMul2module_wrapper_57/max_pooling2d_9/MaxPool:output:03module_wrapper_58/dropout_13/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2*
(module_wrapper_58/dropout_13/dropout/Mul?
*module_wrapper_58/dropout_13/dropout/ShapeShape2module_wrapper_57/max_pooling2d_9/MaxPool:output:0*
T0*
_output_shapes
:2,
*module_wrapper_58/dropout_13/dropout/Shape?
Amodule_wrapper_58/dropout_13/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_58/dropout_13/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_58/dropout_13/dropout/random_uniform/RandomUniform?
3module_wrapper_58/dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_58/dropout_13/dropout/GreaterEqual/y?
1module_wrapper_58/dropout_13/dropout/GreaterEqualGreaterEqualJmodule_wrapper_58/dropout_13/dropout/random_uniform/RandomUniform:output:0<module_wrapper_58/dropout_13/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????23
1module_wrapper_58/dropout_13/dropout/GreaterEqual?
)module_wrapper_58/dropout_13/dropout/CastCast5module_wrapper_58/dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2+
)module_wrapper_58/dropout_13/dropout/Cast?
*module_wrapper_58/dropout_13/dropout/Mul_1Mul,module_wrapper_58/dropout_13/dropout/Mul:z:0-module_wrapper_58/dropout_13/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2,
*module_wrapper_58/dropout_13/dropout/Mul_1?
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_59_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?
"module_wrapper_59/conv2d_13/Conv2DConv2D.module_wrapper_58/dropout_13/dropout/Mul_1:z:09module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_59/conv2d_13/Conv2D?
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_59_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?
#module_wrapper_59/conv2d_13/BiasAddBiasAdd+module_wrapper_59/conv2d_13/Conv2D:output:0:module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_59/conv2d_13/BiasAdd?
 module_wrapper_59/conv2d_13/ReluRelu,module_wrapper_59/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_59/conv2d_13/Relu?
7module_wrapper_60/batch_normalization_14/ReadVariableOpReadVariableOp@module_wrapper_60_batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_60/batch_normalization_14/ReadVariableOp?
9module_wrapper_60/batch_normalization_14/ReadVariableOp_1ReadVariableOpBmodule_wrapper_60_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_60/batch_normalization_14/ReadVariableOp_1?
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_60/batch_normalization_14/FusedBatchNormV3FusedBatchNormV3.module_wrapper_59/conv2d_13/Relu:activations:0?module_wrapper_60/batch_normalization_14/ReadVariableOp:value:0Amodule_wrapper_60/batch_normalization_14/ReadVariableOp_1:value:0Pmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2;
9module_wrapper_60/batch_normalization_14/FusedBatchNormV3?
7module_wrapper_60/batch_normalization_14/AssignNewValueAssignVariableOpQmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resourceFmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3:batch_mean:0I^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_60/batch_normalization_14/AssignNewValue?
9module_wrapper_60/batch_normalization_14/AssignNewValue_1AssignVariableOpSmodule_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resourceJmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3:batch_variance:0K^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02;
9module_wrapper_60/batch_normalization_14/AssignNewValue_1?
*module_wrapper_61/max_pooling2d_10/MaxPoolMaxPool=module_wrapper_60/batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2,
*module_wrapper_61/max_pooling2d_10/MaxPool?
*module_wrapper_62/dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_62/dropout_14/dropout/Const?
(module_wrapper_62/dropout_14/dropout/MulMul3module_wrapper_61/max_pooling2d_10/MaxPool:output:03module_wrapper_62/dropout_14/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2*
(module_wrapper_62/dropout_14/dropout/Mul?
*module_wrapper_62/dropout_14/dropout/ShapeShape3module_wrapper_61/max_pooling2d_10/MaxPool:output:0*
T0*
_output_shapes
:2,
*module_wrapper_62/dropout_14/dropout/Shape?
Amodule_wrapper_62/dropout_14/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_62/dropout_14/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_62/dropout_14/dropout/random_uniform/RandomUniform?
3module_wrapper_62/dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_62/dropout_14/dropout/GreaterEqual/y?
1module_wrapper_62/dropout_14/dropout/GreaterEqualGreaterEqualJmodule_wrapper_62/dropout_14/dropout/random_uniform/RandomUniform:output:0<module_wrapper_62/dropout_14/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????23
1module_wrapper_62/dropout_14/dropout/GreaterEqual?
)module_wrapper_62/dropout_14/dropout/CastCast5module_wrapper_62/dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2+
)module_wrapper_62/dropout_14/dropout/Cast?
*module_wrapper_62/dropout_14/dropout/Mul_1Mul,module_wrapper_62/dropout_14/dropout/Mul:z:0-module_wrapper_62/dropout_14/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2,
*module_wrapper_62/dropout_14/dropout/Mul_1?
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOpReadVariableOp:module_wrapper_63_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?
"module_wrapper_63/conv2d_14/Conv2DConv2D.module_wrapper_62/dropout_14/dropout/Mul_1:z:09module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"module_wrapper_63/conv2d_14/Conv2D?
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp;module_wrapper_63_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?
#module_wrapper_63/conv2d_14/BiasAddBiasAdd+module_wrapper_63/conv2d_14/Conv2D:output:0:module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#module_wrapper_63/conv2d_14/BiasAdd?
 module_wrapper_63/conv2d_14/ReluRelu,module_wrapper_63/conv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 module_wrapper_63/conv2d_14/Relu?
7module_wrapper_64/batch_normalization_15/ReadVariableOpReadVariableOp@module_wrapper_64_batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype029
7module_wrapper_64/batch_normalization_15/ReadVariableOp?
9module_wrapper_64/batch_normalization_15/ReadVariableOp_1ReadVariableOpBmodule_wrapper_64_batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9module_wrapper_64/batch_normalization_15/ReadVariableOp_1?
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
9module_wrapper_64/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3.module_wrapper_63/conv2d_14/Relu:activations:0?module_wrapper_64/batch_normalization_15/ReadVariableOp:value:0Amodule_wrapper_64/batch_normalization_15/ReadVariableOp_1:value:0Pmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Rmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2;
9module_wrapper_64/batch_normalization_15/FusedBatchNormV3?
7module_wrapper_64/batch_normalization_15/AssignNewValueAssignVariableOpQmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resourceFmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3:batch_mean:0I^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype029
7module_wrapper_64/batch_normalization_15/AssignNewValue?
9module_wrapper_64/batch_normalization_15/AssignNewValue_1AssignVariableOpSmodule_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resourceJmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3:batch_variance:0K^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02;
9module_wrapper_64/batch_normalization_15/AssignNewValue_1?
*module_wrapper_65/max_pooling2d_11/MaxPoolMaxPool=module_wrapper_64/batch_normalization_15/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2,
*module_wrapper_65/max_pooling2d_11/MaxPool?
*module_wrapper_66/dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_66/dropout_15/dropout/Const?
(module_wrapper_66/dropout_15/dropout/MulMul3module_wrapper_65/max_pooling2d_11/MaxPool:output:03module_wrapper_66/dropout_15/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2*
(module_wrapper_66/dropout_15/dropout/Mul?
*module_wrapper_66/dropout_15/dropout/ShapeShape3module_wrapper_65/max_pooling2d_11/MaxPool:output:0*
T0*
_output_shapes
:2,
*module_wrapper_66/dropout_15/dropout/Shape?
Amodule_wrapper_66/dropout_15/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_66/dropout_15/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_66/dropout_15/dropout/random_uniform/RandomUniform?
3module_wrapper_66/dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_66/dropout_15/dropout/GreaterEqual/y?
1module_wrapper_66/dropout_15/dropout/GreaterEqualGreaterEqualJmodule_wrapper_66/dropout_15/dropout/random_uniform/RandomUniform:output:0<module_wrapper_66/dropout_15/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????23
1module_wrapper_66/dropout_15/dropout/GreaterEqual?
)module_wrapper_66/dropout_15/dropout/CastCast5module_wrapper_66/dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2+
)module_wrapper_66/dropout_15/dropout/Cast?
*module_wrapper_66/dropout_15/dropout/Mul_1Mul,module_wrapper_66/dropout_15/dropout/Mul:z:0-module_wrapper_66/dropout_15/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2,
*module_wrapper_66/dropout_15/dropout/Mul_1?
!module_wrapper_67/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2#
!module_wrapper_67/flatten_2/Const?
#module_wrapper_67/flatten_2/ReshapeReshape.module_wrapper_66/dropout_15/dropout/Mul_1:z:0*module_wrapper_67/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????$2%
#module_wrapper_67/flatten_2/Reshape?
/module_wrapper_68/dense_6/MatMul/ReadVariableOpReadVariableOp8module_wrapper_68_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype021
/module_wrapper_68/dense_6/MatMul/ReadVariableOp?
 module_wrapper_68/dense_6/MatMulMatMul,module_wrapper_67/flatten_2/Reshape:output:07module_wrapper_68/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_68/dense_6/MatMul?
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_68_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?
!module_wrapper_68/dense_6/BiasAddBiasAdd*module_wrapper_68/dense_6/MatMul:product:08module_wrapper_68/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_68/dense_6/BiasAdd?
module_wrapper_68/dense_6/ReluRelu*module_wrapper_68/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_68/dense_6/Relu?
Gmodule_wrapper_69/batch_normalization_16/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gmodule_wrapper_69/batch_normalization_16/moments/mean/reduction_indices?
5module_wrapper_69/batch_normalization_16/moments/meanMean,module_wrapper_68/dense_6/Relu:activations:0Pmodule_wrapper_69/batch_normalization_16/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(27
5module_wrapper_69/batch_normalization_16/moments/mean?
=module_wrapper_69/batch_normalization_16/moments/StopGradientStopGradient>module_wrapper_69/batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes
:	?2?
=module_wrapper_69/batch_normalization_16/moments/StopGradient?
Bmodule_wrapper_69/batch_normalization_16/moments/SquaredDifferenceSquaredDifference,module_wrapper_68/dense_6/Relu:activations:0Fmodule_wrapper_69/batch_normalization_16/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2D
Bmodule_wrapper_69/batch_normalization_16/moments/SquaredDifference?
Kmodule_wrapper_69/batch_normalization_16/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2M
Kmodule_wrapper_69/batch_normalization_16/moments/variance/reduction_indices?
9module_wrapper_69/batch_normalization_16/moments/varianceMeanFmodule_wrapper_69/batch_normalization_16/moments/SquaredDifference:z:0Tmodule_wrapper_69/batch_normalization_16/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2;
9module_wrapper_69/batch_normalization_16/moments/variance?
8module_wrapper_69/batch_normalization_16/moments/SqueezeSqueeze>module_wrapper_69/batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2:
8module_wrapper_69/batch_normalization_16/moments/Squeeze?
:module_wrapper_69/batch_normalization_16/moments/Squeeze_1SqueezeBmodule_wrapper_69/batch_normalization_16/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2<
:module_wrapper_69/batch_normalization_16/moments/Squeeze_1?
>module_wrapper_69/batch_normalization_16/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2@
>module_wrapper_69/batch_normalization_16/AssignMovingAvg/decay?
Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOpReadVariableOpPmodule_wrapper_69_batch_normalization_16_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp?
<module_wrapper_69/batch_normalization_16/AssignMovingAvg/subSubOmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp:value:0Amodule_wrapper_69/batch_normalization_16/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2>
<module_wrapper_69/batch_normalization_16/AssignMovingAvg/sub?
<module_wrapper_69/batch_normalization_16/AssignMovingAvg/mulMul@module_wrapper_69/batch_normalization_16/AssignMovingAvg/sub:z:0Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2>
<module_wrapper_69/batch_normalization_16/AssignMovingAvg/mul?
8module_wrapper_69/batch_normalization_16/AssignMovingAvgAssignSubVariableOpPmodule_wrapper_69_batch_normalization_16_assignmovingavg_readvariableop_resource@module_wrapper_69/batch_normalization_16/AssignMovingAvg/mul:z:0H^module_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02:
8module_wrapper_69/batch_normalization_16/AssignMovingAvg?
@module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2B
@module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/decay?
Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOpReadVariableOpRmodule_wrapper_69_batch_normalization_16_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?
>module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/subSubQmodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp:value:0Cmodule_wrapper_69/batch_normalization_16/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2@
>module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/sub?
>module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/mulMulBmodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/sub:z:0Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2@
>module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/mul?
:module_wrapper_69/batch_normalization_16/AssignMovingAvg_1AssignSubVariableOpRmodule_wrapper_69_batch_normalization_16_assignmovingavg_1_readvariableop_resourceBmodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/mul:z:0J^module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02<
:module_wrapper_69/batch_normalization_16/AssignMovingAvg_1?
8module_wrapper_69/batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8module_wrapper_69/batch_normalization_16/batchnorm/add/y?
6module_wrapper_69/batch_normalization_16/batchnorm/addAddV2Cmodule_wrapper_69/batch_normalization_16/moments/Squeeze_1:output:0Amodule_wrapper_69/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/add?
8module_wrapper_69/batch_normalization_16/batchnorm/RsqrtRsqrt:module_wrapper_69/batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt?
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOpNmodule_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?
6module_wrapper_69/batch_normalization_16/batchnorm/mulMul<module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt:y:0Mmodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/mul?
8module_wrapper_69/batch_normalization_16/batchnorm/mul_1Mul,module_wrapper_68/dense_6/Relu:activations:0:module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_69/batch_normalization_16/batchnorm/mul_1?
8module_wrapper_69/batch_normalization_16/batchnorm/mul_2MulAmodule_wrapper_69/batch_normalization_16/moments/Squeeze:output:0:module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_69/batch_normalization_16/batchnorm/mul_2?
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOpJmodule_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?
6module_wrapper_69/batch_normalization_16/batchnorm/subSubImodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp:value:0<module_wrapper_69/batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6module_wrapper_69/batch_normalization_16/batchnorm/sub?
8module_wrapper_69/batch_normalization_16/batchnorm/add_1AddV2<module_wrapper_69/batch_normalization_16/batchnorm/mul_1:z:0:module_wrapper_69/batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_69/batch_normalization_16/batchnorm/add_1?
*module_wrapper_70/dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_70/dropout_16/dropout/Const?
(module_wrapper_70/dropout_16/dropout/MulMul<module_wrapper_69/batch_normalization_16/batchnorm/add_1:z:03module_wrapper_70/dropout_16/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2*
(module_wrapper_70/dropout_16/dropout/Mul?
*module_wrapper_70/dropout_16/dropout/ShapeShape<module_wrapper_69/batch_normalization_16/batchnorm/add_1:z:0*
T0*
_output_shapes
:2,
*module_wrapper_70/dropout_16/dropout/Shape?
Amodule_wrapper_70/dropout_16/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_70/dropout_16/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_70/dropout_16/dropout/random_uniform/RandomUniform?
3module_wrapper_70/dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_70/dropout_16/dropout/GreaterEqual/y?
1module_wrapper_70/dropout_16/dropout/GreaterEqualGreaterEqualJmodule_wrapper_70/dropout_16/dropout/random_uniform/RandomUniform:output:0<module_wrapper_70/dropout_16/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????23
1module_wrapper_70/dropout_16/dropout/GreaterEqual?
)module_wrapper_70/dropout_16/dropout/CastCast5module_wrapper_70/dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2+
)module_wrapper_70/dropout_16/dropout/Cast?
*module_wrapper_70/dropout_16/dropout/Mul_1Mul,module_wrapper_70/dropout_16/dropout/Mul:z:0-module_wrapper_70/dropout_16/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2,
*module_wrapper_70/dropout_16/dropout/Mul_1?
/module_wrapper_71/dense_7/MatMul/ReadVariableOpReadVariableOp8module_wrapper_71_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/module_wrapper_71/dense_7/MatMul/ReadVariableOp?
 module_wrapper_71/dense_7/MatMulMatMul.module_wrapper_70/dropout_16/dropout/Mul_1:z:07module_wrapper_71/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_71/dense_7/MatMul?
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_71_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?
!module_wrapper_71/dense_7/BiasAddBiasAdd*module_wrapper_71/dense_7/MatMul:product:08module_wrapper_71/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!module_wrapper_71/dense_7/BiasAdd?
module_wrapper_71/dense_7/ReluRelu*module_wrapper_71/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_71/dense_7/Relu?
Gmodule_wrapper_72/batch_normalization_17/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gmodule_wrapper_72/batch_normalization_17/moments/mean/reduction_indices?
5module_wrapper_72/batch_normalization_17/moments/meanMean,module_wrapper_71/dense_7/Relu:activations:0Pmodule_wrapper_72/batch_normalization_17/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(27
5module_wrapper_72/batch_normalization_17/moments/mean?
=module_wrapper_72/batch_normalization_17/moments/StopGradientStopGradient>module_wrapper_72/batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes
:	?2?
=module_wrapper_72/batch_normalization_17/moments/StopGradient?
Bmodule_wrapper_72/batch_normalization_17/moments/SquaredDifferenceSquaredDifference,module_wrapper_71/dense_7/Relu:activations:0Fmodule_wrapper_72/batch_normalization_17/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2D
Bmodule_wrapper_72/batch_normalization_17/moments/SquaredDifference?
Kmodule_wrapper_72/batch_normalization_17/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2M
Kmodule_wrapper_72/batch_normalization_17/moments/variance/reduction_indices?
9module_wrapper_72/batch_normalization_17/moments/varianceMeanFmodule_wrapper_72/batch_normalization_17/moments/SquaredDifference:z:0Tmodule_wrapper_72/batch_normalization_17/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2;
9module_wrapper_72/batch_normalization_17/moments/variance?
8module_wrapper_72/batch_normalization_17/moments/SqueezeSqueeze>module_wrapper_72/batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2:
8module_wrapper_72/batch_normalization_17/moments/Squeeze?
:module_wrapper_72/batch_normalization_17/moments/Squeeze_1SqueezeBmodule_wrapper_72/batch_normalization_17/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2<
:module_wrapper_72/batch_normalization_17/moments/Squeeze_1?
>module_wrapper_72/batch_normalization_17/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2@
>module_wrapper_72/batch_normalization_17/AssignMovingAvg/decay?
Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOpReadVariableOpPmodule_wrapper_72_batch_normalization_17_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp?
<module_wrapper_72/batch_normalization_17/AssignMovingAvg/subSubOmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp:value:0Amodule_wrapper_72/batch_normalization_17/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2>
<module_wrapper_72/batch_normalization_17/AssignMovingAvg/sub?
<module_wrapper_72/batch_normalization_17/AssignMovingAvg/mulMul@module_wrapper_72/batch_normalization_17/AssignMovingAvg/sub:z:0Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2>
<module_wrapper_72/batch_normalization_17/AssignMovingAvg/mul?
8module_wrapper_72/batch_normalization_17/AssignMovingAvgAssignSubVariableOpPmodule_wrapper_72_batch_normalization_17_assignmovingavg_readvariableop_resource@module_wrapper_72/batch_normalization_17/AssignMovingAvg/mul:z:0H^module_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02:
8module_wrapper_72/batch_normalization_17/AssignMovingAvg?
@module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2B
@module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/decay?
Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOpReadVariableOpRmodule_wrapper_72_batch_normalization_17_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp?
>module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/subSubQmodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp:value:0Cmodule_wrapper_72/batch_normalization_17/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2@
>module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/sub?
>module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/mulMulBmodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/sub:z:0Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2@
>module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/mul?
:module_wrapper_72/batch_normalization_17/AssignMovingAvg_1AssignSubVariableOpRmodule_wrapper_72_batch_normalization_17_assignmovingavg_1_readvariableop_resourceBmodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/mul:z:0J^module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02<
:module_wrapper_72/batch_normalization_17/AssignMovingAvg_1?
8module_wrapper_72/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8module_wrapper_72/batch_normalization_17/batchnorm/add/y?
6module_wrapper_72/batch_normalization_17/batchnorm/addAddV2Cmodule_wrapper_72/batch_normalization_17/moments/Squeeze_1:output:0Amodule_wrapper_72/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/add?
8module_wrapper_72/batch_normalization_17/batchnorm/RsqrtRsqrt:module_wrapper_72/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt?
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpNmodule_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?
6module_wrapper_72/batch_normalization_17/batchnorm/mulMul<module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt:y:0Mmodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/mul?
8module_wrapper_72/batch_normalization_17/batchnorm/mul_1Mul,module_wrapper_71/dense_7/Relu:activations:0:module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_72/batch_normalization_17/batchnorm/mul_1?
8module_wrapper_72/batch_normalization_17/batchnorm/mul_2MulAmodule_wrapper_72/batch_normalization_17/moments/Squeeze:output:0:module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8module_wrapper_72/batch_normalization_17/batchnorm/mul_2?
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOpJmodule_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?
6module_wrapper_72/batch_normalization_17/batchnorm/subSubImodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp:value:0<module_wrapper_72/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6module_wrapper_72/batch_normalization_17/batchnorm/sub?
8module_wrapper_72/batch_normalization_17/batchnorm/add_1AddV2<module_wrapper_72/batch_normalization_17/batchnorm/mul_1:z:0:module_wrapper_72/batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8module_wrapper_72/batch_normalization_17/batchnorm/add_1?
*module_wrapper_73/dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2,
*module_wrapper_73/dropout_17/dropout/Const?
(module_wrapper_73/dropout_17/dropout/MulMul<module_wrapper_72/batch_normalization_17/batchnorm/add_1:z:03module_wrapper_73/dropout_17/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2*
(module_wrapper_73/dropout_17/dropout/Mul?
*module_wrapper_73/dropout_17/dropout/ShapeShape<module_wrapper_72/batch_normalization_17/batchnorm/add_1:z:0*
T0*
_output_shapes
:2,
*module_wrapper_73/dropout_17/dropout/Shape?
Amodule_wrapper_73/dropout_17/dropout/random_uniform/RandomUniformRandomUniform3module_wrapper_73/dropout_17/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02C
Amodule_wrapper_73/dropout_17/dropout/random_uniform/RandomUniform?
3module_wrapper_73/dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>25
3module_wrapper_73/dropout_17/dropout/GreaterEqual/y?
1module_wrapper_73/dropout_17/dropout/GreaterEqualGreaterEqualJmodule_wrapper_73/dropout_17/dropout/random_uniform/RandomUniform:output:0<module_wrapper_73/dropout_17/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????23
1module_wrapper_73/dropout_17/dropout/GreaterEqual?
)module_wrapper_73/dropout_17/dropout/CastCast5module_wrapper_73/dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2+
)module_wrapper_73/dropout_17/dropout/Cast?
*module_wrapper_73/dropout_17/dropout/Mul_1Mul,module_wrapper_73/dropout_17/dropout/Mul:z:0-module_wrapper_73/dropout_17/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2,
*module_wrapper_73/dropout_17/dropout/Mul_1?
/module_wrapper_74/dense_8/MatMul/ReadVariableOpReadVariableOp8module_wrapper_74_dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
 module_wrapper_74/dense_8/MatMulMatMul.module_wrapper_73/dropout_17/dropout/Mul_1:z:07module_wrapper_74/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_74/dense_8/MatMul?
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_74_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?
!module_wrapper_74/dense_8/BiasAddBiasAdd*module_wrapper_74/dense_8/MatMul:product:08module_wrapper_74/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_74/dense_8/BiasAdd?
!module_wrapper_74/dense_8/SoftmaxSoftmax*module_wrapper_74/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_74/dense_8/Softmax?
IdentityIdentity+module_wrapper_74/dense_8/Softmax:softmax:03^module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2^module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp3^module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2^module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp8^module_wrapper_52/batch_normalization_12/AssignNewValue:^module_wrapper_52/batch_normalization_12/AssignNewValue_1I^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpK^module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_52/batch_normalization_12/ReadVariableOp:^module_wrapper_52/batch_normalization_12/ReadVariableOp_13^module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2^module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp8^module_wrapper_56/batch_normalization_13/AssignNewValue:^module_wrapper_56/batch_normalization_13/AssignNewValue_1I^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpK^module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_56/batch_normalization_13/ReadVariableOp:^module_wrapper_56/batch_normalization_13/ReadVariableOp_13^module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2^module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp8^module_wrapper_60/batch_normalization_14/AssignNewValue:^module_wrapper_60/batch_normalization_14/AssignNewValue_1I^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpK^module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_60/batch_normalization_14/ReadVariableOp:^module_wrapper_60/batch_normalization_14/ReadVariableOp_13^module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2^module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp8^module_wrapper_64/batch_normalization_15/AssignNewValue:^module_wrapper_64/batch_normalization_15/AssignNewValue_1I^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpK^module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18^module_wrapper_64/batch_normalization_15/ReadVariableOp:^module_wrapper_64/batch_normalization_15/ReadVariableOp_11^module_wrapper_68/dense_6/BiasAdd/ReadVariableOp0^module_wrapper_68/dense_6/MatMul/ReadVariableOp9^module_wrapper_69/batch_normalization_16/AssignMovingAvgH^module_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp;^module_wrapper_69/batch_normalization_16/AssignMovingAvg_1J^module_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOpB^module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpF^module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp1^module_wrapper_71/dense_7/BiasAdd/ReadVariableOp0^module_wrapper_71/dense_7/MatMul/ReadVariableOp9^module_wrapper_72/batch_normalization_17/AssignMovingAvgH^module_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp;^module_wrapper_72/batch_normalization_17/AssignMovingAvg_1J^module_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOpB^module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpF^module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp1^module_wrapper_74/dense_8/BiasAdd/ReadVariableOp0^module_wrapper_74/dense_8/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2h
2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2f
1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp1module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp2h
2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2f
1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp1module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp2r
7module_wrapper_52/batch_normalization_12/AssignNewValue7module_wrapper_52/batch_normalization_12/AssignNewValue2v
9module_wrapper_52/batch_normalization_12/AssignNewValue_19module_wrapper_52/batch_normalization_12/AssignNewValue_12?
Hmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_52/batch_normalization_12/ReadVariableOp7module_wrapper_52/batch_normalization_12/ReadVariableOp2v
9module_wrapper_52/batch_normalization_12/ReadVariableOp_19module_wrapper_52/batch_normalization_12/ReadVariableOp_12h
2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2f
1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp1module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp2r
7module_wrapper_56/batch_normalization_13/AssignNewValue7module_wrapper_56/batch_normalization_13/AssignNewValue2v
9module_wrapper_56/batch_normalization_13/AssignNewValue_19module_wrapper_56/batch_normalization_13/AssignNewValue_12?
Hmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_56/batch_normalization_13/ReadVariableOp7module_wrapper_56/batch_normalization_13/ReadVariableOp2v
9module_wrapper_56/batch_normalization_13/ReadVariableOp_19module_wrapper_56/batch_normalization_13/ReadVariableOp_12h
2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2f
1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp1module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp2r
7module_wrapper_60/batch_normalization_14/AssignNewValue7module_wrapper_60/batch_normalization_14/AssignNewValue2v
9module_wrapper_60/batch_normalization_14/AssignNewValue_19module_wrapper_60/batch_normalization_14/AssignNewValue_12?
Hmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_60/batch_normalization_14/ReadVariableOp7module_wrapper_60/batch_normalization_14/ReadVariableOp2v
9module_wrapper_60/batch_normalization_14/ReadVariableOp_19module_wrapper_60/batch_normalization_14/ReadVariableOp_12h
2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2f
1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp1module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp2r
7module_wrapper_64/batch_normalization_15/AssignNewValue7module_wrapper_64/batch_normalization_15/AssignNewValue2v
9module_wrapper_64/batch_normalization_15/AssignNewValue_19module_wrapper_64/batch_normalization_15/AssignNewValue_12?
Hmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpHmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2?
Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Jmodule_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12r
7module_wrapper_64/batch_normalization_15/ReadVariableOp7module_wrapper_64/batch_normalization_15/ReadVariableOp2v
9module_wrapper_64/batch_normalization_15/ReadVariableOp_19module_wrapper_64/batch_normalization_15/ReadVariableOp_12d
0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp0module_wrapper_68/dense_6/BiasAdd/ReadVariableOp2b
/module_wrapper_68/dense_6/MatMul/ReadVariableOp/module_wrapper_68/dense_6/MatMul/ReadVariableOp2t
8module_wrapper_69/batch_normalization_16/AssignMovingAvg8module_wrapper_69/batch_normalization_16/AssignMovingAvg2?
Gmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOpGmodule_wrapper_69/batch_normalization_16/AssignMovingAvg/ReadVariableOp2x
:module_wrapper_69/batch_normalization_16/AssignMovingAvg_1:module_wrapper_69/batch_normalization_16/AssignMovingAvg_12?
Imodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOpImodule_wrapper_69/batch_normalization_16/AssignMovingAvg_1/ReadVariableOp2?
Amodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpAmodule_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp2?
Emodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpEmodule_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp2d
0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp0module_wrapper_71/dense_7/BiasAdd/ReadVariableOp2b
/module_wrapper_71/dense_7/MatMul/ReadVariableOp/module_wrapper_71/dense_7/MatMul/ReadVariableOp2t
8module_wrapper_72/batch_normalization_17/AssignMovingAvg8module_wrapper_72/batch_normalization_17/AssignMovingAvg2?
Gmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOpGmodule_wrapper_72/batch_normalization_17/AssignMovingAvg/ReadVariableOp2x
:module_wrapper_72/batch_normalization_17/AssignMovingAvg_1:module_wrapper_72/batch_normalization_17/AssignMovingAvg_12?
Imodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOpImodule_wrapper_72/batch_normalization_17/AssignMovingAvg_1/ReadVariableOp2?
Amodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpAmodule_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp2?
Emodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpEmodule_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp2d
0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp0module_wrapper_74/dense_8/BiasAdd/ReadVariableOp2b
/module_wrapper_74/dense_8/MatMul/ReadVariableOp/module_wrapper_74/dense_8/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
k
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_56296

args_0
identity?y
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_17/dropout/Const?
dropout_17/dropout/MulMulargs_0!dropout_17/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_17/dropout/Mulj
dropout_17/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_17/dropout/Shape?
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_17/dropout/random_uniform/RandomUniform?
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_17/dropout/GreaterEqual/y?
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_17/dropout/GreaterEqual?
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_17/dropout/Cast?
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_17/dropout/Mul_1q
IdentityIdentitydropout_17/dropout/Mul_1:z:0*
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
1__inference_module_wrapper_55_layer_call_fn_55551

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_525212
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
?
?	
,__inference_sequential_2_layer_call_fn_54564
module_wrapper_50_input!
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

unknown_37:	?

unknown_38:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_50_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*>
_read_only_resource_inputs 
	
 !"%&'(*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_528682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
/
_output_shapes
:?????????00
1
_user_specified_namemodule_wrapper_50_input
?
M
1__inference_module_wrapper_57_layer_call_fn_55640

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_515672
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
?
?
1__inference_module_wrapper_51_layer_call_fn_55393

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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_514692
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
?
?
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_52665

args_0B
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: 
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2Dargs_0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
conv2d_10/Relu?
IdentityIdentityconv2d_10/Relu:activations:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_51685

args_0
identity?
max_pooling2d_11/MaxPoolMaxPoolargs_0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPool~
IdentityIdentity!max_pooling2d_11/MaxPool:output:0*
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
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_51587

args_0D
(conv2d_13_conv2d_readvariableop_resource:??8
)conv2d_13_biasadd_readvariableop_resource:	?
identity?? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Dargs_0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_13/Relu?
IdentityIdentityconv2d_13/Relu:activations:0!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_53646

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
??
?S
!__inference__traced_restore_57441
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: O
5assignvariableop_5_module_wrapper_50_conv2d_10_kernel: A
3assignvariableop_6_module_wrapper_50_conv2d_10_bias: O
5assignvariableop_7_module_wrapper_51_conv2d_11_kernel: @A
3assignvariableop_8_module_wrapper_51_conv2d_11_bias:@O
Aassignvariableop_9_module_wrapper_52_batch_normalization_12_gamma:@O
Aassignvariableop_10_module_wrapper_52_batch_normalization_12_beta:@Q
6assignvariableop_11_module_wrapper_55_conv2d_12_kernel:@?C
4assignvariableop_12_module_wrapper_55_conv2d_12_bias:	?Q
Bassignvariableop_13_module_wrapper_56_batch_normalization_13_gamma:	?P
Aassignvariableop_14_module_wrapper_56_batch_normalization_13_beta:	?R
6assignvariableop_15_module_wrapper_59_conv2d_13_kernel:??C
4assignvariableop_16_module_wrapper_59_conv2d_13_bias:	?Q
Bassignvariableop_17_module_wrapper_60_batch_normalization_14_gamma:	?P
Aassignvariableop_18_module_wrapper_60_batch_normalization_14_beta:	?R
6assignvariableop_19_module_wrapper_63_conv2d_14_kernel:??C
4assignvariableop_20_module_wrapper_63_conv2d_14_bias:	?Q
Bassignvariableop_21_module_wrapper_64_batch_normalization_15_gamma:	?P
Aassignvariableop_22_module_wrapper_64_batch_normalization_15_beta:	?H
4assignvariableop_23_module_wrapper_68_dense_6_kernel:
?$?A
2assignvariableop_24_module_wrapper_68_dense_6_bias:	?Q
Bassignvariableop_25_module_wrapper_69_batch_normalization_16_gamma:	?P
Aassignvariableop_26_module_wrapper_69_batch_normalization_16_beta:	?H
4assignvariableop_27_module_wrapper_71_dense_7_kernel:
??A
2assignvariableop_28_module_wrapper_71_dense_7_bias:	?Q
Bassignvariableop_29_module_wrapper_72_batch_normalization_17_gamma:	?P
Aassignvariableop_30_module_wrapper_72_batch_normalization_17_beta:	?G
4assignvariableop_31_module_wrapper_74_dense_8_kernel:	?@
2assignvariableop_32_module_wrapper_74_dense_8_bias:V
Hassignvariableop_33_module_wrapper_52_batch_normalization_12_moving_mean:@Z
Lassignvariableop_34_module_wrapper_52_batch_normalization_12_moving_variance:@W
Hassignvariableop_35_module_wrapper_56_batch_normalization_13_moving_mean:	?[
Lassignvariableop_36_module_wrapper_56_batch_normalization_13_moving_variance:	?W
Hassignvariableop_37_module_wrapper_60_batch_normalization_14_moving_mean:	?[
Lassignvariableop_38_module_wrapper_60_batch_normalization_14_moving_variance:	?W
Hassignvariableop_39_module_wrapper_64_batch_normalization_15_moving_mean:	?[
Lassignvariableop_40_module_wrapper_64_batch_normalization_15_moving_variance:	?W
Hassignvariableop_41_module_wrapper_69_batch_normalization_16_moving_mean:	?[
Lassignvariableop_42_module_wrapper_69_batch_normalization_16_moving_variance:	?W
Hassignvariableop_43_module_wrapper_72_batch_normalization_17_moving_mean:	?[
Lassignvariableop_44_module_wrapper_72_batch_normalization_17_moving_variance:	?#
assignvariableop_45_total: #
assignvariableop_46_count: %
assignvariableop_47_total_1: %
assignvariableop_48_count_1: W
=assignvariableop_49_adam_module_wrapper_50_conv2d_10_kernel_m: I
;assignvariableop_50_adam_module_wrapper_50_conv2d_10_bias_m: W
=assignvariableop_51_adam_module_wrapper_51_conv2d_11_kernel_m: @I
;assignvariableop_52_adam_module_wrapper_51_conv2d_11_bias_m:@W
Iassignvariableop_53_adam_module_wrapper_52_batch_normalization_12_gamma_m:@V
Hassignvariableop_54_adam_module_wrapper_52_batch_normalization_12_beta_m:@X
=assignvariableop_55_adam_module_wrapper_55_conv2d_12_kernel_m:@?J
;assignvariableop_56_adam_module_wrapper_55_conv2d_12_bias_m:	?X
Iassignvariableop_57_adam_module_wrapper_56_batch_normalization_13_gamma_m:	?W
Hassignvariableop_58_adam_module_wrapper_56_batch_normalization_13_beta_m:	?Y
=assignvariableop_59_adam_module_wrapper_59_conv2d_13_kernel_m:??J
;assignvariableop_60_adam_module_wrapper_59_conv2d_13_bias_m:	?X
Iassignvariableop_61_adam_module_wrapper_60_batch_normalization_14_gamma_m:	?W
Hassignvariableop_62_adam_module_wrapper_60_batch_normalization_14_beta_m:	?Y
=assignvariableop_63_adam_module_wrapper_63_conv2d_14_kernel_m:??J
;assignvariableop_64_adam_module_wrapper_63_conv2d_14_bias_m:	?X
Iassignvariableop_65_adam_module_wrapper_64_batch_normalization_15_gamma_m:	?W
Hassignvariableop_66_adam_module_wrapper_64_batch_normalization_15_beta_m:	?O
;assignvariableop_67_adam_module_wrapper_68_dense_6_kernel_m:
?$?H
9assignvariableop_68_adam_module_wrapper_68_dense_6_bias_m:	?X
Iassignvariableop_69_adam_module_wrapper_69_batch_normalization_16_gamma_m:	?W
Hassignvariableop_70_adam_module_wrapper_69_batch_normalization_16_beta_m:	?O
;assignvariableop_71_adam_module_wrapper_71_dense_7_kernel_m:
??H
9assignvariableop_72_adam_module_wrapper_71_dense_7_bias_m:	?X
Iassignvariableop_73_adam_module_wrapper_72_batch_normalization_17_gamma_m:	?W
Hassignvariableop_74_adam_module_wrapper_72_batch_normalization_17_beta_m:	?N
;assignvariableop_75_adam_module_wrapper_74_dense_8_kernel_m:	?G
9assignvariableop_76_adam_module_wrapper_74_dense_8_bias_m:W
=assignvariableop_77_adam_module_wrapper_50_conv2d_10_kernel_v: I
;assignvariableop_78_adam_module_wrapper_50_conv2d_10_bias_v: W
=assignvariableop_79_adam_module_wrapper_51_conv2d_11_kernel_v: @I
;assignvariableop_80_adam_module_wrapper_51_conv2d_11_bias_v:@W
Iassignvariableop_81_adam_module_wrapper_52_batch_normalization_12_gamma_v:@V
Hassignvariableop_82_adam_module_wrapper_52_batch_normalization_12_beta_v:@X
=assignvariableop_83_adam_module_wrapper_55_conv2d_12_kernel_v:@?J
;assignvariableop_84_adam_module_wrapper_55_conv2d_12_bias_v:	?X
Iassignvariableop_85_adam_module_wrapper_56_batch_normalization_13_gamma_v:	?W
Hassignvariableop_86_adam_module_wrapper_56_batch_normalization_13_beta_v:	?Y
=assignvariableop_87_adam_module_wrapper_59_conv2d_13_kernel_v:??J
;assignvariableop_88_adam_module_wrapper_59_conv2d_13_bias_v:	?X
Iassignvariableop_89_adam_module_wrapper_60_batch_normalization_14_gamma_v:	?W
Hassignvariableop_90_adam_module_wrapper_60_batch_normalization_14_beta_v:	?Y
=assignvariableop_91_adam_module_wrapper_63_conv2d_14_kernel_v:??J
;assignvariableop_92_adam_module_wrapper_63_conv2d_14_bias_v:	?X
Iassignvariableop_93_adam_module_wrapper_64_batch_normalization_15_gamma_v:	?W
Hassignvariableop_94_adam_module_wrapper_64_batch_normalization_15_beta_v:	?O
;assignvariableop_95_adam_module_wrapper_68_dense_6_kernel_v:
?$?H
9assignvariableop_96_adam_module_wrapper_68_dense_6_bias_v:	?X
Iassignvariableop_97_adam_module_wrapper_69_batch_normalization_16_gamma_v:	?W
Hassignvariableop_98_adam_module_wrapper_69_batch_normalization_16_beta_v:	?O
;assignvariableop_99_adam_module_wrapper_71_dense_7_kernel_v:
??I
:assignvariableop_100_adam_module_wrapper_71_dense_7_bias_v:	?Y
Jassignvariableop_101_adam_module_wrapper_72_batch_normalization_17_gamma_v:	?X
Iassignvariableop_102_adam_module_wrapper_72_batch_normalization_17_beta_v:	?O
<assignvariableop_103_adam_module_wrapper_74_dense_8_kernel_v:	?H
:assignvariableop_104_adam_module_wrapper_74_dense_8_bias_v:
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
AssignVariableOp_5AssignVariableOp5assignvariableop_5_module_wrapper_50_conv2d_10_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp3assignvariableop_6_module_wrapper_50_conv2d_10_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp5assignvariableop_7_module_wrapper_51_conv2d_11_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp3assignvariableop_8_module_wrapper_51_conv2d_11_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpAassignvariableop_9_module_wrapper_52_batch_normalization_12_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpAassignvariableop_10_module_wrapper_52_batch_normalization_12_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp6assignvariableop_11_module_wrapper_55_conv2d_12_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp4assignvariableop_12_module_wrapper_55_conv2d_12_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpBassignvariableop_13_module_wrapper_56_batch_normalization_13_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpAassignvariableop_14_module_wrapper_56_batch_normalization_13_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp6assignvariableop_15_module_wrapper_59_conv2d_13_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp4assignvariableop_16_module_wrapper_59_conv2d_13_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpBassignvariableop_17_module_wrapper_60_batch_normalization_14_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpAassignvariableop_18_module_wrapper_60_batch_normalization_14_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp6assignvariableop_19_module_wrapper_63_conv2d_14_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_module_wrapper_63_conv2d_14_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_module_wrapper_64_batch_normalization_15_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpAassignvariableop_22_module_wrapper_64_batch_normalization_15_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp4assignvariableop_23_module_wrapper_68_dense_6_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp2assignvariableop_24_module_wrapper_68_dense_6_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpBassignvariableop_25_module_wrapper_69_batch_normalization_16_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpAassignvariableop_26_module_wrapper_69_batch_normalization_16_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_module_wrapper_71_dense_7_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_module_wrapper_71_dense_7_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpBassignvariableop_29_module_wrapper_72_batch_normalization_17_gammaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpAassignvariableop_30_module_wrapper_72_batch_normalization_17_betaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_module_wrapper_74_dense_8_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp2assignvariableop_32_module_wrapper_74_dense_8_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpHassignvariableop_33_module_wrapper_52_batch_normalization_12_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpLassignvariableop_34_module_wrapper_52_batch_normalization_12_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpHassignvariableop_35_module_wrapper_56_batch_normalization_13_moving_meanIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpLassignvariableop_36_module_wrapper_56_batch_normalization_13_moving_varianceIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpHassignvariableop_37_module_wrapper_60_batch_normalization_14_moving_meanIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpLassignvariableop_38_module_wrapper_60_batch_normalization_14_moving_varianceIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpHassignvariableop_39_module_wrapper_64_batch_normalization_15_moving_meanIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpLassignvariableop_40_module_wrapper_64_batch_normalization_15_moving_varianceIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpHassignvariableop_41_module_wrapper_69_batch_normalization_16_moving_meanIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpLassignvariableop_42_module_wrapper_69_batch_normalization_16_moving_varianceIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpHassignvariableop_43_module_wrapper_72_batch_normalization_17_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpLassignvariableop_44_module_wrapper_72_batch_normalization_17_moving_varianceIdentity_44:output:0"/device:CPU:0*
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
AssignVariableOp_49AssignVariableOp=assignvariableop_49_adam_module_wrapper_50_conv2d_10_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp;assignvariableop_50_adam_module_wrapper_50_conv2d_10_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp=assignvariableop_51_adam_module_wrapper_51_conv2d_11_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp;assignvariableop_52_adam_module_wrapper_51_conv2d_11_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOpIassignvariableop_53_adam_module_wrapper_52_batch_normalization_12_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOpHassignvariableop_54_adam_module_wrapper_52_batch_normalization_12_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp=assignvariableop_55_adam_module_wrapper_55_conv2d_12_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp;assignvariableop_56_adam_module_wrapper_55_conv2d_12_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOpIassignvariableop_57_adam_module_wrapper_56_batch_normalization_13_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOpHassignvariableop_58_adam_module_wrapper_56_batch_normalization_13_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp=assignvariableop_59_adam_module_wrapper_59_conv2d_13_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp;assignvariableop_60_adam_module_wrapper_59_conv2d_13_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOpIassignvariableop_61_adam_module_wrapper_60_batch_normalization_14_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOpHassignvariableop_62_adam_module_wrapper_60_batch_normalization_14_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp=assignvariableop_63_adam_module_wrapper_63_conv2d_14_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp;assignvariableop_64_adam_module_wrapper_63_conv2d_14_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOpIassignvariableop_65_adam_module_wrapper_64_batch_normalization_15_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOpHassignvariableop_66_adam_module_wrapper_64_batch_normalization_15_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp;assignvariableop_67_adam_module_wrapper_68_dense_6_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp9assignvariableop_68_adam_module_wrapper_68_dense_6_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOpIassignvariableop_69_adam_module_wrapper_69_batch_normalization_16_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOpHassignvariableop_70_adam_module_wrapper_69_batch_normalization_16_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp;assignvariableop_71_adam_module_wrapper_71_dense_7_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp9assignvariableop_72_adam_module_wrapper_71_dense_7_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOpIassignvariableop_73_adam_module_wrapper_72_batch_normalization_17_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOpHassignvariableop_74_adam_module_wrapper_72_batch_normalization_17_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp;assignvariableop_75_adam_module_wrapper_74_dense_8_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp9assignvariableop_76_adam_module_wrapper_74_dense_8_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp=assignvariableop_77_adam_module_wrapper_50_conv2d_10_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp;assignvariableop_78_adam_module_wrapper_50_conv2d_10_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp=assignvariableop_79_adam_module_wrapper_51_conv2d_11_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp;assignvariableop_80_adam_module_wrapper_51_conv2d_11_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOpIassignvariableop_81_adam_module_wrapper_52_batch_normalization_12_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOpHassignvariableop_82_adam_module_wrapper_52_batch_normalization_12_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp=assignvariableop_83_adam_module_wrapper_55_conv2d_12_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp;assignvariableop_84_adam_module_wrapper_55_conv2d_12_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOpIassignvariableop_85_adam_module_wrapper_56_batch_normalization_13_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOpHassignvariableop_86_adam_module_wrapper_56_batch_normalization_13_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp=assignvariableop_87_adam_module_wrapper_59_conv2d_13_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp;assignvariableop_88_adam_module_wrapper_59_conv2d_13_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOpIassignvariableop_89_adam_module_wrapper_60_batch_normalization_14_gamma_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOpHassignvariableop_90_adam_module_wrapper_60_batch_normalization_14_beta_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp=assignvariableop_91_adam_module_wrapper_63_conv2d_14_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp;assignvariableop_92_adam_module_wrapper_63_conv2d_14_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOpIassignvariableop_93_adam_module_wrapper_64_batch_normalization_15_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOpHassignvariableop_94_adam_module_wrapper_64_batch_normalization_15_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp;assignvariableop_95_adam_module_wrapper_68_dense_6_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp9assignvariableop_96_adam_module_wrapper_68_dense_6_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOpIassignvariableop_97_adam_module_wrapper_69_batch_normalization_16_gamma_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOpHassignvariableop_98_adam_module_wrapper_69_batch_normalization_16_beta_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp;assignvariableop_99_adam_module_wrapper_71_dense_7_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp:assignvariableop_100_adam_module_wrapper_71_dense_7_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOpJassignvariableop_101_adam_module_wrapper_72_batch_normalization_17_gamma_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOpIassignvariableop_102_adam_module_wrapper_72_batch_normalization_17_beta_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp<assignvariableop_103_adam_module_wrapper_74_dense_8_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp:assignvariableop_104_adam_module_wrapper_74_dense_8_bias_vIdentity_104:output:0"/device:CPU:0*
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
?
?
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_55766

args_0=
.batch_normalization_14_readvariableop_resource:	??
0batch_normalization_14_readvariableop_1_resource:	?N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?
identity??6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_14/ReadVariableOp?'batch_normalization_14/ReadVariableOp_1?
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_14/ReadVariableOp?
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_14/ReadVariableOp_1?
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_14/FusedBatchNormV3?
IdentityIdentity+batch_normalization_14/FusedBatchNormV3:y:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_55819

args_0
identityy
dropout_14/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_14/Identityy
IdentityIdentitydropout_14/Identity:output:0*
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
?
h
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_51700

args_0
identitys
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapeargs_0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten_2/Reshapeo
IdentityIdentityflatten_2/Reshape:output:0*
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
?
k
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_52320

args_0
identity?y
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_14/dropout/Const?
dropout_14/dropout/MulMulargs_0!dropout_14/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_14/dropout/Mulj
dropout_14/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_14/dropout/Shape?
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype021
/dropout_14/dropout/random_uniform/RandomUniform?
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_14/dropout/GreaterEqual/y?
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2!
dropout_14/dropout/GreaterEqual?
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_14/dropout/Cast?
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_14/dropout/Mul_1y
IdentityIdentitydropout_14/dropout/Mul_1:z:0*
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
??
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_51828

inputs1
module_wrapper_50_51453: %
module_wrapper_50_51455: 1
module_wrapper_51_51470: @%
module_wrapper_51_51472:@%
module_wrapper_52_51494:@%
module_wrapper_52_51496:@%
module_wrapper_52_51498:@%
module_wrapper_52_51500:@2
module_wrapper_55_51529:@?&
module_wrapper_55_51531:	?&
module_wrapper_56_51553:	?&
module_wrapper_56_51555:	?&
module_wrapper_56_51557:	?&
module_wrapper_56_51559:	?3
module_wrapper_59_51588:??&
module_wrapper_59_51590:	?&
module_wrapper_60_51612:	?&
module_wrapper_60_51614:	?&
module_wrapper_60_51616:	?&
module_wrapper_60_51618:	?3
module_wrapper_63_51647:??&
module_wrapper_63_51649:	?&
module_wrapper_64_51671:	?&
module_wrapper_64_51673:	?&
module_wrapper_64_51675:	?&
module_wrapper_64_51677:	?+
module_wrapper_68_51714:
?$?&
module_wrapper_68_51716:	?&
module_wrapper_69_51740:	?&
module_wrapper_69_51742:	?&
module_wrapper_69_51744:	?&
module_wrapper_69_51746:	?+
module_wrapper_71_51768:
??&
module_wrapper_71_51770:	?&
module_wrapper_72_51794:	?&
module_wrapper_72_51796:	?&
module_wrapper_72_51798:	?&
module_wrapper_72_51800:	?*
module_wrapper_74_51822:	?%
module_wrapper_74_51824:
identity??)module_wrapper_50/StatefulPartitionedCall?)module_wrapper_51/StatefulPartitionedCall?)module_wrapper_52/StatefulPartitionedCall?)module_wrapper_55/StatefulPartitionedCall?)module_wrapper_56/StatefulPartitionedCall?)module_wrapper_59/StatefulPartitionedCall?)module_wrapper_60/StatefulPartitionedCall?)module_wrapper_63/StatefulPartitionedCall?)module_wrapper_64/StatefulPartitionedCall?)module_wrapper_68/StatefulPartitionedCall?)module_wrapper_69/StatefulPartitionedCall?)module_wrapper_71/StatefulPartitionedCall?)module_wrapper_72/StatefulPartitionedCall?)module_wrapper_74/StatefulPartitionedCall?
)module_wrapper_50/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_50_51453module_wrapper_50_51455*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_514522+
)module_wrapper_50/StatefulPartitionedCall?
)module_wrapper_51/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_50/StatefulPartitionedCall:output:0module_wrapper_51_51470module_wrapper_51_51472*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_514692+
)module_wrapper_51/StatefulPartitionedCall?
)module_wrapper_52/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_51/StatefulPartitionedCall:output:0module_wrapper_52_51494module_wrapper_52_51496module_wrapper_52_51498module_wrapper_52_51500*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_514932+
)module_wrapper_52/StatefulPartitionedCall?
!module_wrapper_53/PartitionedCallPartitionedCall2module_wrapper_52/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_515082#
!module_wrapper_53/PartitionedCall?
!module_wrapper_54/PartitionedCallPartitionedCall*module_wrapper_53/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_515152#
!module_wrapper_54/PartitionedCall?
)module_wrapper_55/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_54/PartitionedCall:output:0module_wrapper_55_51529module_wrapper_55_51531*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_515282+
)module_wrapper_55/StatefulPartitionedCall?
)module_wrapper_56/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_55/StatefulPartitionedCall:output:0module_wrapper_56_51553module_wrapper_56_51555module_wrapper_56_51557module_wrapper_56_51559*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_515522+
)module_wrapper_56/StatefulPartitionedCall?
!module_wrapper_57/PartitionedCallPartitionedCall2module_wrapper_56/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_515672#
!module_wrapper_57/PartitionedCall?
!module_wrapper_58/PartitionedCallPartitionedCall*module_wrapper_57/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_515742#
!module_wrapper_58/PartitionedCall?
)module_wrapper_59/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_58/PartitionedCall:output:0module_wrapper_59_51588module_wrapper_59_51590*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_515872+
)module_wrapper_59/StatefulPartitionedCall?
)module_wrapper_60/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_59/StatefulPartitionedCall:output:0module_wrapper_60_51612module_wrapper_60_51614module_wrapper_60_51616module_wrapper_60_51618*
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
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_516112+
)module_wrapper_60/StatefulPartitionedCall?
!module_wrapper_61/PartitionedCallPartitionedCall2module_wrapper_60/StatefulPartitionedCall:output:0*
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
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_516262#
!module_wrapper_61/PartitionedCall?
!module_wrapper_62/PartitionedCallPartitionedCall*module_wrapper_61/PartitionedCall:output:0*
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
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_516332#
!module_wrapper_62/PartitionedCall?
)module_wrapper_63/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_62/PartitionedCall:output:0module_wrapper_63_51647module_wrapper_63_51649*
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
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_516462+
)module_wrapper_63/StatefulPartitionedCall?
)module_wrapper_64/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_63/StatefulPartitionedCall:output:0module_wrapper_64_51671module_wrapper_64_51673module_wrapper_64_51675module_wrapper_64_51677*
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
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_516702+
)module_wrapper_64/StatefulPartitionedCall?
!module_wrapper_65/PartitionedCallPartitionedCall2module_wrapper_64/StatefulPartitionedCall:output:0*
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
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_516852#
!module_wrapper_65/PartitionedCall?
!module_wrapper_66/PartitionedCallPartitionedCall*module_wrapper_65/PartitionedCall:output:0*
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
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_516922#
!module_wrapper_66/PartitionedCall?
!module_wrapper_67/PartitionedCallPartitionedCall*module_wrapper_66/PartitionedCall:output:0*
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
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_517002#
!module_wrapper_67/PartitionedCall?
)module_wrapper_68/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_67/PartitionedCall:output:0module_wrapper_68_51714module_wrapper_68_51716*
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
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_517132+
)module_wrapper_68/StatefulPartitionedCall?
)module_wrapper_69/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_68/StatefulPartitionedCall:output:0module_wrapper_69_51740module_wrapper_69_51742module_wrapper_69_51744module_wrapper_69_51746*
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
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_517392+
)module_wrapper_69/StatefulPartitionedCall?
!module_wrapper_70/PartitionedCallPartitionedCall2module_wrapper_69/StatefulPartitionedCall:output:0*
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
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_517542#
!module_wrapper_70/PartitionedCall?
)module_wrapper_71/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_70/PartitionedCall:output:0module_wrapper_71_51768module_wrapper_71_51770*
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
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_517672+
)module_wrapper_71/StatefulPartitionedCall?
)module_wrapper_72/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_71/StatefulPartitionedCall:output:0module_wrapper_72_51794module_wrapper_72_51796module_wrapper_72_51798module_wrapper_72_51800*
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
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_517932+
)module_wrapper_72/StatefulPartitionedCall?
!module_wrapper_73/PartitionedCallPartitionedCall2module_wrapper_72/StatefulPartitionedCall:output:0*
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
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_518082#
!module_wrapper_73/PartitionedCall?
)module_wrapper_74/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_73/PartitionedCall:output:0module_wrapper_74_51822module_wrapper_74_51824*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_518212+
)module_wrapper_74/StatefulPartitionedCall?
IdentityIdentity2module_wrapper_74/StatefulPartitionedCall:output:0*^module_wrapper_50/StatefulPartitionedCall*^module_wrapper_51/StatefulPartitionedCall*^module_wrapper_52/StatefulPartitionedCall*^module_wrapper_55/StatefulPartitionedCall*^module_wrapper_56/StatefulPartitionedCall*^module_wrapper_59/StatefulPartitionedCall*^module_wrapper_60/StatefulPartitionedCall*^module_wrapper_63/StatefulPartitionedCall*^module_wrapper_64/StatefulPartitionedCall*^module_wrapper_68/StatefulPartitionedCall*^module_wrapper_69/StatefulPartitionedCall*^module_wrapper_71/StatefulPartitionedCall*^module_wrapper_72/StatefulPartitionedCall*^module_wrapper_74/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)module_wrapper_50/StatefulPartitionedCall)module_wrapper_50/StatefulPartitionedCall2V
)module_wrapper_51/StatefulPartitionedCall)module_wrapper_51/StatefulPartitionedCall2V
)module_wrapper_52/StatefulPartitionedCall)module_wrapper_52/StatefulPartitionedCall2V
)module_wrapper_55/StatefulPartitionedCall)module_wrapper_55/StatefulPartitionedCall2V
)module_wrapper_56/StatefulPartitionedCall)module_wrapper_56/StatefulPartitionedCall2V
)module_wrapper_59/StatefulPartitionedCall)module_wrapper_59/StatefulPartitionedCall2V
)module_wrapper_60/StatefulPartitionedCall)module_wrapper_60/StatefulPartitionedCall2V
)module_wrapper_63/StatefulPartitionedCall)module_wrapper_63/StatefulPartitionedCall2V
)module_wrapper_64/StatefulPartitionedCall)module_wrapper_64/StatefulPartitionedCall2V
)module_wrapper_68/StatefulPartitionedCall)module_wrapper_68/StatefulPartitionedCall2V
)module_wrapper_69/StatefulPartitionedCall)module_wrapper_69/StatefulPartitionedCall2V
)module_wrapper_71/StatefulPartitionedCall)module_wrapper_71/StatefulPartitionedCall2V
)module_wrapper_72/StatefulPartitionedCall)module_wrapper_72/StatefulPartitionedCall2V
)module_wrapper_74/StatefulPartitionedCall)module_wrapper_74/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_51670

args_0=
.batch_normalization_15_readvariableop_resource:	??
0batch_normalization_15_readvariableop_1_resource:	?N
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?
identity??6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_15/ReadVariableOp?'batch_normalization_15/ReadVariableOp_1?
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_15/ReadVariableOp?
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_15/ReadVariableOp_1?
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_15/FusedBatchNormV3?
IdentityIdentity+batch_normalization_15/FusedBatchNormV3:y:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_55424

args_0B
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@
identity?? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2Dargs_0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_11/Relu?
IdentityIdentityconv2d_11/Relu:activations:0!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00 : : 2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_55784

args_0=
.batch_normalization_14_readvariableop_resource:	??
0batch_normalization_14_readvariableop_1_resource:	?N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?
identity??%batch_normalization_14/AssignNewValue?'batch_normalization_14/AssignNewValue_1?6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_14/ReadVariableOp?'batch_normalization_14/ReadVariableOp_1?
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_14/ReadVariableOp?
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_14/ReadVariableOp_1?
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3args_0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_14/FusedBatchNormV3?
%batch_normalization_14/AssignNewValueAssignVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource4batch_normalization_14/FusedBatchNormV3:batch_mean:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_14/AssignNewValue?
'batch_normalization_14/AssignNewValue_1AssignVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_14/FusedBatchNormV3:batch_variance:09^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_14/AssignNewValue_1?
IdentityIdentity+batch_normalization_14/FusedBatchNormV3:y:0&^batch_normalization_14/AssignNewValue(^batch_normalization_14/AssignNewValue_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2N
%batch_normalization_14/AssignNewValue%batch_normalization_14/AssignNewValue2R
'batch_normalization_14/AssignNewValue_1'batch_normalization_14/AssignNewValue_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_68_layer_call_fn_56020

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
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_521622
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
?
M
1__inference_module_wrapper_61_layer_call_fn_55794

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
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_523362
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
??
?7
 __inference__wrapped_model_51434
module_wrapper_50_inputa
Gsequential_2_module_wrapper_50_conv2d_10_conv2d_readvariableop_resource: V
Hsequential_2_module_wrapper_50_conv2d_10_biasadd_readvariableop_resource: a
Gsequential_2_module_wrapper_51_conv2d_11_conv2d_readvariableop_resource: @V
Hsequential_2_module_wrapper_51_conv2d_11_biasadd_readvariableop_resource:@[
Msequential_2_module_wrapper_52_batch_normalization_12_readvariableop_resource:@]
Osequential_2_module_wrapper_52_batch_normalization_12_readvariableop_1_resource:@l
^sequential_2_module_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:@n
`sequential_2_module_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:@b
Gsequential_2_module_wrapper_55_conv2d_12_conv2d_readvariableop_resource:@?W
Hsequential_2_module_wrapper_55_conv2d_12_biasadd_readvariableop_resource:	?\
Msequential_2_module_wrapper_56_batch_normalization_13_readvariableop_resource:	?^
Osequential_2_module_wrapper_56_batch_normalization_13_readvariableop_1_resource:	?m
^sequential_2_module_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?o
`sequential_2_module_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?c
Gsequential_2_module_wrapper_59_conv2d_13_conv2d_readvariableop_resource:??W
Hsequential_2_module_wrapper_59_conv2d_13_biasadd_readvariableop_resource:	?\
Msequential_2_module_wrapper_60_batch_normalization_14_readvariableop_resource:	?^
Osequential_2_module_wrapper_60_batch_normalization_14_readvariableop_1_resource:	?m
^sequential_2_module_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?o
`sequential_2_module_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?c
Gsequential_2_module_wrapper_63_conv2d_14_conv2d_readvariableop_resource:??W
Hsequential_2_module_wrapper_63_conv2d_14_biasadd_readvariableop_resource:	?\
Msequential_2_module_wrapper_64_batch_normalization_15_readvariableop_resource:	?^
Osequential_2_module_wrapper_64_batch_normalization_15_readvariableop_1_resource:	?m
^sequential_2_module_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?o
`sequential_2_module_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?Y
Esequential_2_module_wrapper_68_dense_6_matmul_readvariableop_resource:
?$?U
Fsequential_2_module_wrapper_68_dense_6_biasadd_readvariableop_resource:	?f
Wsequential_2_module_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource:	?j
[sequential_2_module_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource:	?h
Ysequential_2_module_wrapper_69_batch_normalization_16_batchnorm_readvariableop_1_resource:	?h
Ysequential_2_module_wrapper_69_batch_normalization_16_batchnorm_readvariableop_2_resource:	?Y
Esequential_2_module_wrapper_71_dense_7_matmul_readvariableop_resource:
??U
Fsequential_2_module_wrapper_71_dense_7_biasadd_readvariableop_resource:	?f
Wsequential_2_module_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource:	?j
[sequential_2_module_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource:	?h
Ysequential_2_module_wrapper_72_batch_normalization_17_batchnorm_readvariableop_1_resource:	?h
Ysequential_2_module_wrapper_72_batch_normalization_17_batchnorm_readvariableop_2_resource:	?X
Esequential_2_module_wrapper_74_dense_8_matmul_readvariableop_resource:	?T
Fsequential_2_module_wrapper_74_dense_8_biasadd_readvariableop_resource:
identity???sequential_2/module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?>sequential_2/module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp??sequential_2/module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?>sequential_2/module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?Usequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?Wsequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?Dsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp?Fsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp_1??sequential_2/module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?>sequential_2/module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?Usequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?Wsequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?Dsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp?Fsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp_1??sequential_2/module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?>sequential_2/module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?Usequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?Wsequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?Dsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp?Fsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp_1??sequential_2/module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?>sequential_2/module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?Usequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?Wsequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?Dsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp?Fsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp_1?=sequential_2/module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?<sequential_2/module_wrapper_68/dense_6/MatMul/ReadVariableOp?Nsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1?Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2?Rsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?=sequential_2/module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?<sequential_2/module_wrapper_71/dense_7/MatMul/ReadVariableOp?Nsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1?Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2?Rsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?=sequential_2/module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?<sequential_2/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
>sequential_2/module_wrapper_50/conv2d_10/Conv2D/ReadVariableOpReadVariableOpGsequential_2_module_wrapper_50_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02@
>sequential_2/module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp?
/sequential_2/module_wrapper_50/conv2d_10/Conv2DConv2Dmodule_wrapper_50_inputFsequential_2/module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
21
/sequential_2/module_wrapper_50/conv2d_10/Conv2D?
?sequential_2/module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOpReadVariableOpHsequential_2_module_wrapper_50_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?sequential_2/module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?
0sequential_2/module_wrapper_50/conv2d_10/BiasAddBiasAdd8sequential_2/module_wrapper_50/conv2d_10/Conv2D:output:0Gsequential_2/module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 22
0sequential_2/module_wrapper_50/conv2d_10/BiasAdd?
-sequential_2/module_wrapper_50/conv2d_10/ReluRelu9sequential_2/module_wrapper_50/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2/
-sequential_2/module_wrapper_50/conv2d_10/Relu?
>sequential_2/module_wrapper_51/conv2d_11/Conv2D/ReadVariableOpReadVariableOpGsequential_2_module_wrapper_51_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02@
>sequential_2/module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp?
/sequential_2/module_wrapper_51/conv2d_11/Conv2DConv2D;sequential_2/module_wrapper_50/conv2d_10/Relu:activations:0Fsequential_2/module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
21
/sequential_2/module_wrapper_51/conv2d_11/Conv2D?
?sequential_2/module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOpReadVariableOpHsequential_2_module_wrapper_51_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02A
?sequential_2/module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?
0sequential_2/module_wrapper_51/conv2d_11/BiasAddBiasAdd8sequential_2/module_wrapper_51/conv2d_11/Conv2D:output:0Gsequential_2/module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@22
0sequential_2/module_wrapper_51/conv2d_11/BiasAdd?
-sequential_2/module_wrapper_51/conv2d_11/ReluRelu9sequential_2/module_wrapper_51/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2/
-sequential_2/module_wrapper_51/conv2d_11/Relu?
Dsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOpReadVariableOpMsequential_2_module_wrapper_52_batch_normalization_12_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp?
Fsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp_1ReadVariableOpOsequential_2_module_wrapper_52_batch_normalization_12_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp_1?
Usequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp^sequential_2_module_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02W
Usequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?
Wsequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`sequential_2_module_wrapper_52_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02Y
Wsequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?
Fsequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3;sequential_2/module_wrapper_51/conv2d_11/Relu:activations:0Lsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp:value:0Nsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp_1:value:0]sequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0_sequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2H
Fsequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3?
6sequential_2/module_wrapper_53/max_pooling2d_8/MaxPoolMaxPoolJsequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
28
6sequential_2/module_wrapper_53/max_pooling2d_8/MaxPool?
2sequential_2/module_wrapper_54/dropout_12/IdentityIdentity?sequential_2/module_wrapper_53/max_pooling2d_8/MaxPool:output:0*
T0*/
_output_shapes
:?????????@24
2sequential_2/module_wrapper_54/dropout_12/Identity?
>sequential_2/module_wrapper_55/conv2d_12/Conv2D/ReadVariableOpReadVariableOpGsequential_2_module_wrapper_55_conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02@
>sequential_2/module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp?
/sequential_2/module_wrapper_55/conv2d_12/Conv2DConv2D;sequential_2/module_wrapper_54/dropout_12/Identity:output:0Fsequential_2/module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
21
/sequential_2/module_wrapper_55/conv2d_12/Conv2D?
?sequential_2/module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOpReadVariableOpHsequential_2_module_wrapper_55_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_2/module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?
0sequential_2/module_wrapper_55/conv2d_12/BiasAddBiasAdd8sequential_2/module_wrapper_55/conv2d_12/Conv2D:output:0Gsequential_2/module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????22
0sequential_2/module_wrapper_55/conv2d_12/BiasAdd?
-sequential_2/module_wrapper_55/conv2d_12/ReluRelu9sequential_2/module_wrapper_55/conv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2/
-sequential_2/module_wrapper_55/conv2d_12/Relu?
Dsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOpReadVariableOpMsequential_2_module_wrapper_56_batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp?
Fsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp_1ReadVariableOpOsequential_2_module_wrapper_56_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02H
Fsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp_1?
Usequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp^sequential_2_module_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02W
Usequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
Wsequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`sequential_2_module_wrapper_56_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02Y
Wsequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
Fsequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3;sequential_2/module_wrapper_55/conv2d_12/Relu:activations:0Lsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp:value:0Nsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp_1:value:0]sequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0_sequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2H
Fsequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3?
6sequential_2/module_wrapper_57/max_pooling2d_9/MaxPoolMaxPoolJsequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
28
6sequential_2/module_wrapper_57/max_pooling2d_9/MaxPool?
2sequential_2/module_wrapper_58/dropout_13/IdentityIdentity?sequential_2/module_wrapper_57/max_pooling2d_9/MaxPool:output:0*
T0*0
_output_shapes
:??????????24
2sequential_2/module_wrapper_58/dropout_13/Identity?
>sequential_2/module_wrapper_59/conv2d_13/Conv2D/ReadVariableOpReadVariableOpGsequential_2_module_wrapper_59_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02@
>sequential_2/module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp?
/sequential_2/module_wrapper_59/conv2d_13/Conv2DConv2D;sequential_2/module_wrapper_58/dropout_13/Identity:output:0Fsequential_2/module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
21
/sequential_2/module_wrapper_59/conv2d_13/Conv2D?
?sequential_2/module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOpReadVariableOpHsequential_2_module_wrapper_59_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_2/module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?
0sequential_2/module_wrapper_59/conv2d_13/BiasAddBiasAdd8sequential_2/module_wrapper_59/conv2d_13/Conv2D:output:0Gsequential_2/module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????22
0sequential_2/module_wrapper_59/conv2d_13/BiasAdd?
-sequential_2/module_wrapper_59/conv2d_13/ReluRelu9sequential_2/module_wrapper_59/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2/
-sequential_2/module_wrapper_59/conv2d_13/Relu?
Dsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOpReadVariableOpMsequential_2_module_wrapper_60_batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp?
Fsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp_1ReadVariableOpOsequential_2_module_wrapper_60_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype02H
Fsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp_1?
Usequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp^sequential_2_module_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02W
Usequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
Wsequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`sequential_2_module_wrapper_60_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02Y
Wsequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
Fsequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3FusedBatchNormV3;sequential_2/module_wrapper_59/conv2d_13/Relu:activations:0Lsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp:value:0Nsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp_1:value:0]sequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0_sequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2H
Fsequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3?
7sequential_2/module_wrapper_61/max_pooling2d_10/MaxPoolMaxPoolJsequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
29
7sequential_2/module_wrapper_61/max_pooling2d_10/MaxPool?
2sequential_2/module_wrapper_62/dropout_14/IdentityIdentity@sequential_2/module_wrapper_61/max_pooling2d_10/MaxPool:output:0*
T0*0
_output_shapes
:??????????24
2sequential_2/module_wrapper_62/dropout_14/Identity?
>sequential_2/module_wrapper_63/conv2d_14/Conv2D/ReadVariableOpReadVariableOpGsequential_2_module_wrapper_63_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02@
>sequential_2/module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp?
/sequential_2/module_wrapper_63/conv2d_14/Conv2DConv2D;sequential_2/module_wrapper_62/dropout_14/Identity:output:0Fsequential_2/module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
21
/sequential_2/module_wrapper_63/conv2d_14/Conv2D?
?sequential_2/module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOpReadVariableOpHsequential_2_module_wrapper_63_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_2/module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?
0sequential_2/module_wrapper_63/conv2d_14/BiasAddBiasAdd8sequential_2/module_wrapper_63/conv2d_14/Conv2D:output:0Gsequential_2/module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????22
0sequential_2/module_wrapper_63/conv2d_14/BiasAdd?
-sequential_2/module_wrapper_63/conv2d_14/ReluRelu9sequential_2/module_wrapper_63/conv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2/
-sequential_2/module_wrapper_63/conv2d_14/Relu?
Dsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOpReadVariableOpMsequential_2_module_wrapper_64_batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp?
Fsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp_1ReadVariableOpOsequential_2_module_wrapper_64_batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02H
Fsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp_1?
Usequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp^sequential_2_module_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02W
Usequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
Wsequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`sequential_2_module_wrapper_64_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02Y
Wsequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
Fsequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3;sequential_2/module_wrapper_63/conv2d_14/Relu:activations:0Lsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp:value:0Nsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp_1:value:0]sequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0_sequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2H
Fsequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3?
7sequential_2/module_wrapper_65/max_pooling2d_11/MaxPoolMaxPoolJsequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
29
7sequential_2/module_wrapper_65/max_pooling2d_11/MaxPool?
2sequential_2/module_wrapper_66/dropout_15/IdentityIdentity@sequential_2/module_wrapper_65/max_pooling2d_11/MaxPool:output:0*
T0*0
_output_shapes
:??????????24
2sequential_2/module_wrapper_66/dropout_15/Identity?
.sequential_2/module_wrapper_67/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   20
.sequential_2/module_wrapper_67/flatten_2/Const?
0sequential_2/module_wrapper_67/flatten_2/ReshapeReshape;sequential_2/module_wrapper_66/dropout_15/Identity:output:07sequential_2/module_wrapper_67/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????$22
0sequential_2/module_wrapper_67/flatten_2/Reshape?
<sequential_2/module_wrapper_68/dense_6/MatMul/ReadVariableOpReadVariableOpEsequential_2_module_wrapper_68_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
?$?*
dtype02>
<sequential_2/module_wrapper_68/dense_6/MatMul/ReadVariableOp?
-sequential_2/module_wrapper_68/dense_6/MatMulMatMul9sequential_2/module_wrapper_67/flatten_2/Reshape:output:0Dsequential_2/module_wrapper_68/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_2/module_wrapper_68/dense_6/MatMul?
=sequential_2/module_wrapper_68/dense_6/BiasAdd/ReadVariableOpReadVariableOpFsequential_2_module_wrapper_68_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_2/module_wrapper_68/dense_6/BiasAdd/ReadVariableOp?
.sequential_2/module_wrapper_68/dense_6/BiasAddBiasAdd7sequential_2/module_wrapper_68/dense_6/MatMul:product:0Esequential_2/module_wrapper_68/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_2/module_wrapper_68/dense_6/BiasAdd?
+sequential_2/module_wrapper_68/dense_6/ReluRelu7sequential_2/module_wrapper_68/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2-
+sequential_2/module_wrapper_68/dense_6/Relu?
Nsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOpWsequential_2_module_wrapper_69_batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02P
Nsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp?
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2G
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/add/y?
Csequential_2/module_wrapper_69/batch_normalization_16/batchnorm/addAddV2Vsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp:value:0Nsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2E
Csequential_2/module_wrapper_69/batch_normalization_16/batchnorm/add?
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/RsqrtRsqrtGsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?2G
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt?
Rsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOp[sequential_2_module_wrapper_69_batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02T
Rsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp?
Csequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mulMulIsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/Rsqrt:y:0Zsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2E
Csequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul?
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul_1Mul9sequential_2/module_wrapper_68/dense_6/Relu:activations:0Gsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul_1?
Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOpYsequential_2_module_wrapper_69_batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02R
Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1?
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul_2MulXsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1:value:0Gsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2G
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul_2?
Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOpYsequential_2_module_wrapper_69_batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02R
Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2?
Csequential_2/module_wrapper_69/batch_normalization_16/batchnorm/subSubXsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2:value:0Isequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2E
Csequential_2/module_wrapper_69/batch_normalization_16/batchnorm/sub?
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/add_1AddV2Isequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul_1:z:0Gsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_2/module_wrapper_69/batch_normalization_16/batchnorm/add_1?
2sequential_2/module_wrapper_70/dropout_16/IdentityIdentityIsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????24
2sequential_2/module_wrapper_70/dropout_16/Identity?
<sequential_2/module_wrapper_71/dense_7/MatMul/ReadVariableOpReadVariableOpEsequential_2_module_wrapper_71_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02>
<sequential_2/module_wrapper_71/dense_7/MatMul/ReadVariableOp?
-sequential_2/module_wrapper_71/dense_7/MatMulMatMul;sequential_2/module_wrapper_70/dropout_16/Identity:output:0Dsequential_2/module_wrapper_71/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_2/module_wrapper_71/dense_7/MatMul?
=sequential_2/module_wrapper_71/dense_7/BiasAdd/ReadVariableOpReadVariableOpFsequential_2_module_wrapper_71_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_2/module_wrapper_71/dense_7/BiasAdd/ReadVariableOp?
.sequential_2/module_wrapper_71/dense_7/BiasAddBiasAdd7sequential_2/module_wrapper_71/dense_7/MatMul:product:0Esequential_2/module_wrapper_71/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_2/module_wrapper_71/dense_7/BiasAdd?
+sequential_2/module_wrapper_71/dense_7/ReluRelu7sequential_2/module_wrapper_71/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2-
+sequential_2/module_wrapper_71/dense_7/Relu?
Nsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOpWsequential_2_module_wrapper_72_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02P
Nsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp?
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2G
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/add/y?
Csequential_2/module_wrapper_72/batch_normalization_17/batchnorm/addAddV2Vsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp:value:0Nsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2E
Csequential_2/module_wrapper_72/batch_normalization_17/batchnorm/add?
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/RsqrtRsqrtGsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:?2G
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt?
Rsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOp[sequential_2_module_wrapper_72_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02T
Rsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp?
Csequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mulMulIsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/Rsqrt:y:0Zsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2E
Csequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul?
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul_1Mul9sequential_2/module_wrapper_71/dense_7/Relu:activations:0Gsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul_1?
Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOpYsequential_2_module_wrapper_72_batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02R
Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1?
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul_2MulXsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1:value:0Gsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2G
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul_2?
Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOpYsequential_2_module_wrapper_72_batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02R
Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2?
Csequential_2/module_wrapper_72/batch_normalization_17/batchnorm/subSubXsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2:value:0Isequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2E
Csequential_2/module_wrapper_72/batch_normalization_17/batchnorm/sub?
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/add_1AddV2Isequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul_1:z:0Gsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_2/module_wrapper_72/batch_normalization_17/batchnorm/add_1?
2sequential_2/module_wrapper_73/dropout_17/IdentityIdentityIsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????24
2sequential_2/module_wrapper_73/dropout_17/Identity?
<sequential_2/module_wrapper_74/dense_8/MatMul/ReadVariableOpReadVariableOpEsequential_2_module_wrapper_74_dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02>
<sequential_2/module_wrapper_74/dense_8/MatMul/ReadVariableOp?
-sequential_2/module_wrapper_74/dense_8/MatMulMatMul;sequential_2/module_wrapper_73/dropout_17/Identity:output:0Dsequential_2/module_wrapper_74/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2/
-sequential_2/module_wrapper_74/dense_8/MatMul?
=sequential_2/module_wrapper_74/dense_8/BiasAdd/ReadVariableOpReadVariableOpFsequential_2_module_wrapper_74_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=sequential_2/module_wrapper_74/dense_8/BiasAdd/ReadVariableOp?
.sequential_2/module_wrapper_74/dense_8/BiasAddBiasAdd7sequential_2/module_wrapper_74/dense_8/MatMul:product:0Esequential_2/module_wrapper_74/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.sequential_2/module_wrapper_74/dense_8/BiasAdd?
.sequential_2/module_wrapper_74/dense_8/SoftmaxSoftmax7sequential_2/module_wrapper_74/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????20
.sequential_2/module_wrapper_74/dense_8/Softmax?
IdentityIdentity8sequential_2/module_wrapper_74/dense_8/Softmax:softmax:0@^sequential_2/module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?^sequential_2/module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp@^sequential_2/module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?^sequential_2/module_wrapper_51/conv2d_11/Conv2D/ReadVariableOpV^sequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpX^sequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1E^sequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOpG^sequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp_1@^sequential_2/module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?^sequential_2/module_wrapper_55/conv2d_12/Conv2D/ReadVariableOpV^sequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpX^sequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1E^sequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOpG^sequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp_1@^sequential_2/module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?^sequential_2/module_wrapper_59/conv2d_13/Conv2D/ReadVariableOpV^sequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpX^sequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1E^sequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOpG^sequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp_1@^sequential_2/module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?^sequential_2/module_wrapper_63/conv2d_14/Conv2D/ReadVariableOpV^sequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpX^sequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1E^sequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOpG^sequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp_1>^sequential_2/module_wrapper_68/dense_6/BiasAdd/ReadVariableOp=^sequential_2/module_wrapper_68/dense_6/MatMul/ReadVariableOpO^sequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpQ^sequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1Q^sequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2S^sequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp>^sequential_2/module_wrapper_71/dense_7/BiasAdd/ReadVariableOp=^sequential_2/module_wrapper_71/dense_7/MatMul/ReadVariableOpO^sequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpQ^sequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1Q^sequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2S^sequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp>^sequential_2/module_wrapper_74/dense_8/BiasAdd/ReadVariableOp=^sequential_2/module_wrapper_74/dense_8/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
?sequential_2/module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp?sequential_2/module_wrapper_50/conv2d_10/BiasAdd/ReadVariableOp2?
>sequential_2/module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp>sequential_2/module_wrapper_50/conv2d_10/Conv2D/ReadVariableOp2?
?sequential_2/module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp?sequential_2/module_wrapper_51/conv2d_11/BiasAdd/ReadVariableOp2?
>sequential_2/module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp>sequential_2/module_wrapper_51/conv2d_11/Conv2D/ReadVariableOp2?
Usequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOpUsequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2?
Wsequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Wsequential_2/module_wrapper_52/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12?
Dsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOpDsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp2?
Fsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp_1Fsequential_2/module_wrapper_52/batch_normalization_12/ReadVariableOp_12?
?sequential_2/module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp?sequential_2/module_wrapper_55/conv2d_12/BiasAdd/ReadVariableOp2?
>sequential_2/module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp>sequential_2/module_wrapper_55/conv2d_12/Conv2D/ReadVariableOp2?
Usequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOpUsequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2?
Wsequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Wsequential_2/module_wrapper_56/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12?
Dsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOpDsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp2?
Fsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp_1Fsequential_2/module_wrapper_56/batch_normalization_13/ReadVariableOp_12?
?sequential_2/module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp?sequential_2/module_wrapper_59/conv2d_13/BiasAdd/ReadVariableOp2?
>sequential_2/module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp>sequential_2/module_wrapper_59/conv2d_13/Conv2D/ReadVariableOp2?
Usequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOpUsequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2?
Wsequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Wsequential_2/module_wrapper_60/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12?
Dsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOpDsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp2?
Fsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp_1Fsequential_2/module_wrapper_60/batch_normalization_14/ReadVariableOp_12?
?sequential_2/module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp?sequential_2/module_wrapper_63/conv2d_14/BiasAdd/ReadVariableOp2?
>sequential_2/module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp>sequential_2/module_wrapper_63/conv2d_14/Conv2D/ReadVariableOp2?
Usequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOpUsequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2?
Wsequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Wsequential_2/module_wrapper_64/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12?
Dsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOpDsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp2?
Fsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp_1Fsequential_2/module_wrapper_64/batch_normalization_15/ReadVariableOp_12~
=sequential_2/module_wrapper_68/dense_6/BiasAdd/ReadVariableOp=sequential_2/module_wrapper_68/dense_6/BiasAdd/ReadVariableOp2|
<sequential_2/module_wrapper_68/dense_6/MatMul/ReadVariableOp<sequential_2/module_wrapper_68/dense_6/MatMul/ReadVariableOp2?
Nsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOpNsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp2?
Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_1Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_12?
Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_2Psequential_2/module_wrapper_69/batch_normalization_16/batchnorm/ReadVariableOp_22?
Rsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOpRsequential_2/module_wrapper_69/batch_normalization_16/batchnorm/mul/ReadVariableOp2~
=sequential_2/module_wrapper_71/dense_7/BiasAdd/ReadVariableOp=sequential_2/module_wrapper_71/dense_7/BiasAdd/ReadVariableOp2|
<sequential_2/module_wrapper_71/dense_7/MatMul/ReadVariableOp<sequential_2/module_wrapper_71/dense_7/MatMul/ReadVariableOp2?
Nsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOpNsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp2?
Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_1Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_12?
Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_2Psequential_2/module_wrapper_72/batch_normalization_17/batchnorm/ReadVariableOp_22?
Rsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOpRsequential_2/module_wrapper_72/batch_normalization_17/batchnorm/mul/ReadVariableOp2~
=sequential_2/module_wrapper_74/dense_8/BiasAdd/ReadVariableOp=sequential_2/module_wrapper_74/dense_8/BiasAdd/ReadVariableOp2|
<sequential_2/module_wrapper_74/dense_8/MatMul/ReadVariableOp<sequential_2/module_wrapper_74/dense_8/MatMul/ReadVariableOp:h d
/
_output_shapes
:?????????00
1
_user_specified_namemodule_wrapper_50_input
?*
?
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_56756

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
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_56137

args_0
identityq
dropout_16/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_16/Identityq
IdentityIdentitydropout_16/Identity:output:0*
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
?=
__inference__traced_save_57116
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopA
=savev2_module_wrapper_50_conv2d_10_kernel_read_readvariableop?
;savev2_module_wrapper_50_conv2d_10_bias_read_readvariableopA
=savev2_module_wrapper_51_conv2d_11_kernel_read_readvariableop?
;savev2_module_wrapper_51_conv2d_11_bias_read_readvariableopM
Isavev2_module_wrapper_52_batch_normalization_12_gamma_read_readvariableopL
Hsavev2_module_wrapper_52_batch_normalization_12_beta_read_readvariableopA
=savev2_module_wrapper_55_conv2d_12_kernel_read_readvariableop?
;savev2_module_wrapper_55_conv2d_12_bias_read_readvariableopM
Isavev2_module_wrapper_56_batch_normalization_13_gamma_read_readvariableopL
Hsavev2_module_wrapper_56_batch_normalization_13_beta_read_readvariableopA
=savev2_module_wrapper_59_conv2d_13_kernel_read_readvariableop?
;savev2_module_wrapper_59_conv2d_13_bias_read_readvariableopM
Isavev2_module_wrapper_60_batch_normalization_14_gamma_read_readvariableopL
Hsavev2_module_wrapper_60_batch_normalization_14_beta_read_readvariableopA
=savev2_module_wrapper_63_conv2d_14_kernel_read_readvariableop?
;savev2_module_wrapper_63_conv2d_14_bias_read_readvariableopM
Isavev2_module_wrapper_64_batch_normalization_15_gamma_read_readvariableopL
Hsavev2_module_wrapper_64_batch_normalization_15_beta_read_readvariableop?
;savev2_module_wrapper_68_dense_6_kernel_read_readvariableop=
9savev2_module_wrapper_68_dense_6_bias_read_readvariableopM
Isavev2_module_wrapper_69_batch_normalization_16_gamma_read_readvariableopL
Hsavev2_module_wrapper_69_batch_normalization_16_beta_read_readvariableop?
;savev2_module_wrapper_71_dense_7_kernel_read_readvariableop=
9savev2_module_wrapper_71_dense_7_bias_read_readvariableopM
Isavev2_module_wrapper_72_batch_normalization_17_gamma_read_readvariableopL
Hsavev2_module_wrapper_72_batch_normalization_17_beta_read_readvariableop?
;savev2_module_wrapper_74_dense_8_kernel_read_readvariableop=
9savev2_module_wrapper_74_dense_8_bias_read_readvariableopS
Osavev2_module_wrapper_52_batch_normalization_12_moving_mean_read_readvariableopW
Ssavev2_module_wrapper_52_batch_normalization_12_moving_variance_read_readvariableopS
Osavev2_module_wrapper_56_batch_normalization_13_moving_mean_read_readvariableopW
Ssavev2_module_wrapper_56_batch_normalization_13_moving_variance_read_readvariableopS
Osavev2_module_wrapper_60_batch_normalization_14_moving_mean_read_readvariableopW
Ssavev2_module_wrapper_60_batch_normalization_14_moving_variance_read_readvariableopS
Osavev2_module_wrapper_64_batch_normalization_15_moving_mean_read_readvariableopW
Ssavev2_module_wrapper_64_batch_normalization_15_moving_variance_read_readvariableopS
Osavev2_module_wrapper_69_batch_normalization_16_moving_mean_read_readvariableopW
Ssavev2_module_wrapper_69_batch_normalization_16_moving_variance_read_readvariableopS
Osavev2_module_wrapper_72_batch_normalization_17_moving_mean_read_readvariableopW
Ssavev2_module_wrapper_72_batch_normalization_17_moving_variance_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopH
Dsavev2_adam_module_wrapper_50_conv2d_10_kernel_m_read_readvariableopF
Bsavev2_adam_module_wrapper_50_conv2d_10_bias_m_read_readvariableopH
Dsavev2_adam_module_wrapper_51_conv2d_11_kernel_m_read_readvariableopF
Bsavev2_adam_module_wrapper_51_conv2d_11_bias_m_read_readvariableopT
Psavev2_adam_module_wrapper_52_batch_normalization_12_gamma_m_read_readvariableopS
Osavev2_adam_module_wrapper_52_batch_normalization_12_beta_m_read_readvariableopH
Dsavev2_adam_module_wrapper_55_conv2d_12_kernel_m_read_readvariableopF
Bsavev2_adam_module_wrapper_55_conv2d_12_bias_m_read_readvariableopT
Psavev2_adam_module_wrapper_56_batch_normalization_13_gamma_m_read_readvariableopS
Osavev2_adam_module_wrapper_56_batch_normalization_13_beta_m_read_readvariableopH
Dsavev2_adam_module_wrapper_59_conv2d_13_kernel_m_read_readvariableopF
Bsavev2_adam_module_wrapper_59_conv2d_13_bias_m_read_readvariableopT
Psavev2_adam_module_wrapper_60_batch_normalization_14_gamma_m_read_readvariableopS
Osavev2_adam_module_wrapper_60_batch_normalization_14_beta_m_read_readvariableopH
Dsavev2_adam_module_wrapper_63_conv2d_14_kernel_m_read_readvariableopF
Bsavev2_adam_module_wrapper_63_conv2d_14_bias_m_read_readvariableopT
Psavev2_adam_module_wrapper_64_batch_normalization_15_gamma_m_read_readvariableopS
Osavev2_adam_module_wrapper_64_batch_normalization_15_beta_m_read_readvariableopF
Bsavev2_adam_module_wrapper_68_dense_6_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_68_dense_6_bias_m_read_readvariableopT
Psavev2_adam_module_wrapper_69_batch_normalization_16_gamma_m_read_readvariableopS
Osavev2_adam_module_wrapper_69_batch_normalization_16_beta_m_read_readvariableopF
Bsavev2_adam_module_wrapper_71_dense_7_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_71_dense_7_bias_m_read_readvariableopT
Psavev2_adam_module_wrapper_72_batch_normalization_17_gamma_m_read_readvariableopS
Osavev2_adam_module_wrapper_72_batch_normalization_17_beta_m_read_readvariableopF
Bsavev2_adam_module_wrapper_74_dense_8_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_74_dense_8_bias_m_read_readvariableopH
Dsavev2_adam_module_wrapper_50_conv2d_10_kernel_v_read_readvariableopF
Bsavev2_adam_module_wrapper_50_conv2d_10_bias_v_read_readvariableopH
Dsavev2_adam_module_wrapper_51_conv2d_11_kernel_v_read_readvariableopF
Bsavev2_adam_module_wrapper_51_conv2d_11_bias_v_read_readvariableopT
Psavev2_adam_module_wrapper_52_batch_normalization_12_gamma_v_read_readvariableopS
Osavev2_adam_module_wrapper_52_batch_normalization_12_beta_v_read_readvariableopH
Dsavev2_adam_module_wrapper_55_conv2d_12_kernel_v_read_readvariableopF
Bsavev2_adam_module_wrapper_55_conv2d_12_bias_v_read_readvariableopT
Psavev2_adam_module_wrapper_56_batch_normalization_13_gamma_v_read_readvariableopS
Osavev2_adam_module_wrapper_56_batch_normalization_13_beta_v_read_readvariableopH
Dsavev2_adam_module_wrapper_59_conv2d_13_kernel_v_read_readvariableopF
Bsavev2_adam_module_wrapper_59_conv2d_13_bias_v_read_readvariableopT
Psavev2_adam_module_wrapper_60_batch_normalization_14_gamma_v_read_readvariableopS
Osavev2_adam_module_wrapper_60_batch_normalization_14_beta_v_read_readvariableopH
Dsavev2_adam_module_wrapper_63_conv2d_14_kernel_v_read_readvariableopF
Bsavev2_adam_module_wrapper_63_conv2d_14_bias_v_read_readvariableopT
Psavev2_adam_module_wrapper_64_batch_normalization_15_gamma_v_read_readvariableopS
Osavev2_adam_module_wrapper_64_batch_normalization_15_beta_v_read_readvariableopF
Bsavev2_adam_module_wrapper_68_dense_6_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_68_dense_6_bias_v_read_readvariableopT
Psavev2_adam_module_wrapper_69_batch_normalization_16_gamma_v_read_readvariableopS
Osavev2_adam_module_wrapper_69_batch_normalization_16_beta_v_read_readvariableopF
Bsavev2_adam_module_wrapper_71_dense_7_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_71_dense_7_bias_v_read_readvariableopT
Psavev2_adam_module_wrapper_72_batch_normalization_17_gamma_v_read_readvariableopS
Osavev2_adam_module_wrapper_72_batch_normalization_17_beta_v_read_readvariableopF
Bsavev2_adam_module_wrapper_74_dense_8_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_74_dense_8_bias_v_read_readvariableop
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
SaveV2/shape_and_slices?;
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop=savev2_module_wrapper_50_conv2d_10_kernel_read_readvariableop;savev2_module_wrapper_50_conv2d_10_bias_read_readvariableop=savev2_module_wrapper_51_conv2d_11_kernel_read_readvariableop;savev2_module_wrapper_51_conv2d_11_bias_read_readvariableopIsavev2_module_wrapper_52_batch_normalization_12_gamma_read_readvariableopHsavev2_module_wrapper_52_batch_normalization_12_beta_read_readvariableop=savev2_module_wrapper_55_conv2d_12_kernel_read_readvariableop;savev2_module_wrapper_55_conv2d_12_bias_read_readvariableopIsavev2_module_wrapper_56_batch_normalization_13_gamma_read_readvariableopHsavev2_module_wrapper_56_batch_normalization_13_beta_read_readvariableop=savev2_module_wrapper_59_conv2d_13_kernel_read_readvariableop;savev2_module_wrapper_59_conv2d_13_bias_read_readvariableopIsavev2_module_wrapper_60_batch_normalization_14_gamma_read_readvariableopHsavev2_module_wrapper_60_batch_normalization_14_beta_read_readvariableop=savev2_module_wrapper_63_conv2d_14_kernel_read_readvariableop;savev2_module_wrapper_63_conv2d_14_bias_read_readvariableopIsavev2_module_wrapper_64_batch_normalization_15_gamma_read_readvariableopHsavev2_module_wrapper_64_batch_normalization_15_beta_read_readvariableop;savev2_module_wrapper_68_dense_6_kernel_read_readvariableop9savev2_module_wrapper_68_dense_6_bias_read_readvariableopIsavev2_module_wrapper_69_batch_normalization_16_gamma_read_readvariableopHsavev2_module_wrapper_69_batch_normalization_16_beta_read_readvariableop;savev2_module_wrapper_71_dense_7_kernel_read_readvariableop9savev2_module_wrapper_71_dense_7_bias_read_readvariableopIsavev2_module_wrapper_72_batch_normalization_17_gamma_read_readvariableopHsavev2_module_wrapper_72_batch_normalization_17_beta_read_readvariableop;savev2_module_wrapper_74_dense_8_kernel_read_readvariableop9savev2_module_wrapper_74_dense_8_bias_read_readvariableopOsavev2_module_wrapper_52_batch_normalization_12_moving_mean_read_readvariableopSsavev2_module_wrapper_52_batch_normalization_12_moving_variance_read_readvariableopOsavev2_module_wrapper_56_batch_normalization_13_moving_mean_read_readvariableopSsavev2_module_wrapper_56_batch_normalization_13_moving_variance_read_readvariableopOsavev2_module_wrapper_60_batch_normalization_14_moving_mean_read_readvariableopSsavev2_module_wrapper_60_batch_normalization_14_moving_variance_read_readvariableopOsavev2_module_wrapper_64_batch_normalization_15_moving_mean_read_readvariableopSsavev2_module_wrapper_64_batch_normalization_15_moving_variance_read_readvariableopOsavev2_module_wrapper_69_batch_normalization_16_moving_mean_read_readvariableopSsavev2_module_wrapper_69_batch_normalization_16_moving_variance_read_readvariableopOsavev2_module_wrapper_72_batch_normalization_17_moving_mean_read_readvariableopSsavev2_module_wrapper_72_batch_normalization_17_moving_variance_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopDsavev2_adam_module_wrapper_50_conv2d_10_kernel_m_read_readvariableopBsavev2_adam_module_wrapper_50_conv2d_10_bias_m_read_readvariableopDsavev2_adam_module_wrapper_51_conv2d_11_kernel_m_read_readvariableopBsavev2_adam_module_wrapper_51_conv2d_11_bias_m_read_readvariableopPsavev2_adam_module_wrapper_52_batch_normalization_12_gamma_m_read_readvariableopOsavev2_adam_module_wrapper_52_batch_normalization_12_beta_m_read_readvariableopDsavev2_adam_module_wrapper_55_conv2d_12_kernel_m_read_readvariableopBsavev2_adam_module_wrapper_55_conv2d_12_bias_m_read_readvariableopPsavev2_adam_module_wrapper_56_batch_normalization_13_gamma_m_read_readvariableopOsavev2_adam_module_wrapper_56_batch_normalization_13_beta_m_read_readvariableopDsavev2_adam_module_wrapper_59_conv2d_13_kernel_m_read_readvariableopBsavev2_adam_module_wrapper_59_conv2d_13_bias_m_read_readvariableopPsavev2_adam_module_wrapper_60_batch_normalization_14_gamma_m_read_readvariableopOsavev2_adam_module_wrapper_60_batch_normalization_14_beta_m_read_readvariableopDsavev2_adam_module_wrapper_63_conv2d_14_kernel_m_read_readvariableopBsavev2_adam_module_wrapper_63_conv2d_14_bias_m_read_readvariableopPsavev2_adam_module_wrapper_64_batch_normalization_15_gamma_m_read_readvariableopOsavev2_adam_module_wrapper_64_batch_normalization_15_beta_m_read_readvariableopBsavev2_adam_module_wrapper_68_dense_6_kernel_m_read_readvariableop@savev2_adam_module_wrapper_68_dense_6_bias_m_read_readvariableopPsavev2_adam_module_wrapper_69_batch_normalization_16_gamma_m_read_readvariableopOsavev2_adam_module_wrapper_69_batch_normalization_16_beta_m_read_readvariableopBsavev2_adam_module_wrapper_71_dense_7_kernel_m_read_readvariableop@savev2_adam_module_wrapper_71_dense_7_bias_m_read_readvariableopPsavev2_adam_module_wrapper_72_batch_normalization_17_gamma_m_read_readvariableopOsavev2_adam_module_wrapper_72_batch_normalization_17_beta_m_read_readvariableopBsavev2_adam_module_wrapper_74_dense_8_kernel_m_read_readvariableop@savev2_adam_module_wrapper_74_dense_8_bias_m_read_readvariableopDsavev2_adam_module_wrapper_50_conv2d_10_kernel_v_read_readvariableopBsavev2_adam_module_wrapper_50_conv2d_10_bias_v_read_readvariableopDsavev2_adam_module_wrapper_51_conv2d_11_kernel_v_read_readvariableopBsavev2_adam_module_wrapper_51_conv2d_11_bias_v_read_readvariableopPsavev2_adam_module_wrapper_52_batch_normalization_12_gamma_v_read_readvariableopOsavev2_adam_module_wrapper_52_batch_normalization_12_beta_v_read_readvariableopDsavev2_adam_module_wrapper_55_conv2d_12_kernel_v_read_readvariableopBsavev2_adam_module_wrapper_55_conv2d_12_bias_v_read_readvariableopPsavev2_adam_module_wrapper_56_batch_normalization_13_gamma_v_read_readvariableopOsavev2_adam_module_wrapper_56_batch_normalization_13_beta_v_read_readvariableopDsavev2_adam_module_wrapper_59_conv2d_13_kernel_v_read_readvariableopBsavev2_adam_module_wrapper_59_conv2d_13_bias_v_read_readvariableopPsavev2_adam_module_wrapper_60_batch_normalization_14_gamma_v_read_readvariableopOsavev2_adam_module_wrapper_60_batch_normalization_14_beta_v_read_readvariableopDsavev2_adam_module_wrapper_63_conv2d_14_kernel_v_read_readvariableopBsavev2_adam_module_wrapper_63_conv2d_14_bias_v_read_readvariableopPsavev2_adam_module_wrapper_64_batch_normalization_15_gamma_v_read_readvariableopOsavev2_adam_module_wrapper_64_batch_normalization_15_beta_v_read_readvariableopBsavev2_adam_module_wrapper_68_dense_6_kernel_v_read_readvariableop@savev2_adam_module_wrapper_68_dense_6_bias_v_read_readvariableopPsavev2_adam_module_wrapper_69_batch_normalization_16_gamma_v_read_readvariableopOsavev2_adam_module_wrapper_69_batch_normalization_16_beta_v_read_readvariableopBsavev2_adam_module_wrapper_71_dense_7_kernel_v_read_readvariableop@savev2_adam_module_wrapper_71_dense_7_bias_v_read_readvariableopPsavev2_adam_module_wrapper_72_batch_normalization_17_gamma_v_read_readvariableopOsavev2_adam_module_wrapper_72_batch_normalization_17_beta_v_read_readvariableopBsavev2_adam_module_wrapper_74_dense_8_kernel_v_read_readvariableop@savev2_adam_module_wrapper_74_dense_8_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
??:?:?:?:	?::@:@:?:?:?:?:?:?:?:?:?:?: : : : : : : @:@:@:@:@?:?:?:?:??:?:?:?:??:?:?:?:
?$?:?:?:?:
??:?:?:?:	?:: : : @:@:@:@:@?:?:?:?:??:?:?:?:??:?:?:?:
?$?:?:?:?:
??:?:?:?:	?:: 2(
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
:	?: !

_output_shapes
:: "
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
:	?: M

_output_shapes
::,N(
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
:	?: i

_output_shapes
::j

_output_shapes
: 
?
?	
#__inference_signature_wrapper_53347
module_wrapper_50_input!
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

unknown_37:	?

unknown_38:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_50_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_514342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
/
_output_shapes
:?????????00
1
_user_specified_namemodule_wrapper_50_input
?
?
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_56642

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

?
G__inference_sequential_2_layer_call_and_return_conditional_losses_52868

inputs1
module_wrapper_50_52762: %
module_wrapper_50_52764: 1
module_wrapper_51_52767: @%
module_wrapper_51_52769:@%
module_wrapper_52_52772:@%
module_wrapper_52_52774:@%
module_wrapper_52_52776:@%
module_wrapper_52_52778:@2
module_wrapper_55_52783:@?&
module_wrapper_55_52785:	?&
module_wrapper_56_52788:	?&
module_wrapper_56_52790:	?&
module_wrapper_56_52792:	?&
module_wrapper_56_52794:	?3
module_wrapper_59_52799:??&
module_wrapper_59_52801:	?&
module_wrapper_60_52804:	?&
module_wrapper_60_52806:	?&
module_wrapper_60_52808:	?&
module_wrapper_60_52810:	?3
module_wrapper_63_52815:??&
module_wrapper_63_52817:	?&
module_wrapper_64_52820:	?&
module_wrapper_64_52822:	?&
module_wrapper_64_52824:	?&
module_wrapper_64_52826:	?+
module_wrapper_68_52832:
?$?&
module_wrapper_68_52834:	?&
module_wrapper_69_52837:	?&
module_wrapper_69_52839:	?&
module_wrapper_69_52841:	?&
module_wrapper_69_52843:	?+
module_wrapper_71_52847:
??&
module_wrapper_71_52849:	?&
module_wrapper_72_52852:	?&
module_wrapper_72_52854:	?&
module_wrapper_72_52856:	?&
module_wrapper_72_52858:	?*
module_wrapper_74_52862:	?%
module_wrapper_74_52864:
identity??)module_wrapper_50/StatefulPartitionedCall?)module_wrapper_51/StatefulPartitionedCall?)module_wrapper_52/StatefulPartitionedCall?)module_wrapper_54/StatefulPartitionedCall?)module_wrapper_55/StatefulPartitionedCall?)module_wrapper_56/StatefulPartitionedCall?)module_wrapper_58/StatefulPartitionedCall?)module_wrapper_59/StatefulPartitionedCall?)module_wrapper_60/StatefulPartitionedCall?)module_wrapper_62/StatefulPartitionedCall?)module_wrapper_63/StatefulPartitionedCall?)module_wrapper_64/StatefulPartitionedCall?)module_wrapper_66/StatefulPartitionedCall?)module_wrapper_68/StatefulPartitionedCall?)module_wrapper_69/StatefulPartitionedCall?)module_wrapper_70/StatefulPartitionedCall?)module_wrapper_71/StatefulPartitionedCall?)module_wrapper_72/StatefulPartitionedCall?)module_wrapper_73/StatefulPartitionedCall?)module_wrapper_74/StatefulPartitionedCall?
)module_wrapper_50/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_50_52762module_wrapper_50_52764*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_526652+
)module_wrapper_50/StatefulPartitionedCall?
)module_wrapper_51/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_50/StatefulPartitionedCall:output:0module_wrapper_51_52767module_wrapper_51_52769*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_526352+
)module_wrapper_51/StatefulPartitionedCall?
)module_wrapper_52/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_51/StatefulPartitionedCall:output:0module_wrapper_52_52772module_wrapper_52_52774module_wrapper_52_52776module_wrapper_52_52778*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_526012+
)module_wrapper_52/StatefulPartitionedCall?
!module_wrapper_53/PartitionedCallPartitionedCall2module_wrapper_52/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_525642#
!module_wrapper_53/PartitionedCall?
)module_wrapper_54/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_53/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_525482+
)module_wrapper_54/StatefulPartitionedCall?
)module_wrapper_55/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_54/StatefulPartitionedCall:output:0module_wrapper_55_52783module_wrapper_55_52785*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_525212+
)module_wrapper_55/StatefulPartitionedCall?
)module_wrapper_56/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_55/StatefulPartitionedCall:output:0module_wrapper_56_52788module_wrapper_56_52790module_wrapper_56_52792module_wrapper_56_52794*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_524872+
)module_wrapper_56/StatefulPartitionedCall?
!module_wrapper_57/PartitionedCallPartitionedCall2module_wrapper_56/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_524502#
!module_wrapper_57/PartitionedCall?
)module_wrapper_58/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_57/PartitionedCall:output:0*^module_wrapper_54/StatefulPartitionedCall*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_524342+
)module_wrapper_58/StatefulPartitionedCall?
)module_wrapper_59/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_58/StatefulPartitionedCall:output:0module_wrapper_59_52799module_wrapper_59_52801*
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
GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_524072+
)module_wrapper_59/StatefulPartitionedCall?
)module_wrapper_60/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_59/StatefulPartitionedCall:output:0module_wrapper_60_52804module_wrapper_60_52806module_wrapper_60_52808module_wrapper_60_52810*
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
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_523732+
)module_wrapper_60/StatefulPartitionedCall?
!module_wrapper_61/PartitionedCallPartitionedCall2module_wrapper_60/StatefulPartitionedCall:output:0*
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
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_523362#
!module_wrapper_61/PartitionedCall?
)module_wrapper_62/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_61/PartitionedCall:output:0*^module_wrapper_58/StatefulPartitionedCall*
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
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_523202+
)module_wrapper_62/StatefulPartitionedCall?
)module_wrapper_63/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_62/StatefulPartitionedCall:output:0module_wrapper_63_52815module_wrapper_63_52817*
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
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_522932+
)module_wrapper_63/StatefulPartitionedCall?
)module_wrapper_64/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_63/StatefulPartitionedCall:output:0module_wrapper_64_52820module_wrapper_64_52822module_wrapper_64_52824module_wrapper_64_52826*
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
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_522592+
)module_wrapper_64/StatefulPartitionedCall?
!module_wrapper_65/PartitionedCallPartitionedCall2module_wrapper_64/StatefulPartitionedCall:output:0*
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
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_522222#
!module_wrapper_65/PartitionedCall?
)module_wrapper_66/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_65/PartitionedCall:output:0*^module_wrapper_62/StatefulPartitionedCall*
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
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_522062+
)module_wrapper_66/StatefulPartitionedCall?
!module_wrapper_67/PartitionedCallPartitionedCall2module_wrapper_66/StatefulPartitionedCall:output:0*
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
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_521832#
!module_wrapper_67/PartitionedCall?
)module_wrapper_68/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_67/PartitionedCall:output:0module_wrapper_68_52832module_wrapper_68_52834*
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
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_521622+
)module_wrapper_68/StatefulPartitionedCall?
)module_wrapper_69/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_68/StatefulPartitionedCall:output:0module_wrapper_69_52837module_wrapper_69_52839module_wrapper_69_52841module_wrapper_69_52843*
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
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_521282+
)module_wrapper_69/StatefulPartitionedCall?
)module_wrapper_70/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_69/StatefulPartitionedCall:output:0*^module_wrapper_66/StatefulPartitionedCall*
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
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_520752+
)module_wrapper_70/StatefulPartitionedCall?
)module_wrapper_71/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_70/StatefulPartitionedCall:output:0module_wrapper_71_52847module_wrapper_71_52849*
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
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_520482+
)module_wrapper_71/StatefulPartitionedCall?
)module_wrapper_72/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_71/StatefulPartitionedCall:output:0module_wrapper_72_52852module_wrapper_72_52854module_wrapper_72_52856module_wrapper_72_52858*
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
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_520142+
)module_wrapper_72/StatefulPartitionedCall?
)module_wrapper_73/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_72/StatefulPartitionedCall:output:0*^module_wrapper_70/StatefulPartitionedCall*
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
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_519612+
)module_wrapper_73/StatefulPartitionedCall?
)module_wrapper_74/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_73/StatefulPartitionedCall:output:0module_wrapper_74_52862module_wrapper_74_52864*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_519342+
)module_wrapper_74/StatefulPartitionedCall?
IdentityIdentity2module_wrapper_74/StatefulPartitionedCall:output:0*^module_wrapper_50/StatefulPartitionedCall*^module_wrapper_51/StatefulPartitionedCall*^module_wrapper_52/StatefulPartitionedCall*^module_wrapper_54/StatefulPartitionedCall*^module_wrapper_55/StatefulPartitionedCall*^module_wrapper_56/StatefulPartitionedCall*^module_wrapper_58/StatefulPartitionedCall*^module_wrapper_59/StatefulPartitionedCall*^module_wrapper_60/StatefulPartitionedCall*^module_wrapper_62/StatefulPartitionedCall*^module_wrapper_63/StatefulPartitionedCall*^module_wrapper_64/StatefulPartitionedCall*^module_wrapper_66/StatefulPartitionedCall*^module_wrapper_68/StatefulPartitionedCall*^module_wrapper_69/StatefulPartitionedCall*^module_wrapper_70/StatefulPartitionedCall*^module_wrapper_71/StatefulPartitionedCall*^module_wrapper_72/StatefulPartitionedCall*^module_wrapper_73/StatefulPartitionedCall*^module_wrapper_74/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)module_wrapper_50/StatefulPartitionedCall)module_wrapper_50/StatefulPartitionedCall2V
)module_wrapper_51/StatefulPartitionedCall)module_wrapper_51/StatefulPartitionedCall2V
)module_wrapper_52/StatefulPartitionedCall)module_wrapper_52/StatefulPartitionedCall2V
)module_wrapper_54/StatefulPartitionedCall)module_wrapper_54/StatefulPartitionedCall2V
)module_wrapper_55/StatefulPartitionedCall)module_wrapper_55/StatefulPartitionedCall2V
)module_wrapper_56/StatefulPartitionedCall)module_wrapper_56/StatefulPartitionedCall2V
)module_wrapper_58/StatefulPartitionedCall)module_wrapper_58/StatefulPartitionedCall2V
)module_wrapper_59/StatefulPartitionedCall)module_wrapper_59/StatefulPartitionedCall2V
)module_wrapper_60/StatefulPartitionedCall)module_wrapper_60/StatefulPartitionedCall2V
)module_wrapper_62/StatefulPartitionedCall)module_wrapper_62/StatefulPartitionedCall2V
)module_wrapper_63/StatefulPartitionedCall)module_wrapper_63/StatefulPartitionedCall2V
)module_wrapper_64/StatefulPartitionedCall)module_wrapper_64/StatefulPartitionedCall2V
)module_wrapper_66/StatefulPartitionedCall)module_wrapper_66/StatefulPartitionedCall2V
)module_wrapper_68/StatefulPartitionedCall)module_wrapper_68/StatefulPartitionedCall2V
)module_wrapper_69/StatefulPartitionedCall)module_wrapper_69/StatefulPartitionedCall2V
)module_wrapper_70/StatefulPartitionedCall)module_wrapper_70/StatefulPartitionedCall2V
)module_wrapper_71/StatefulPartitionedCall)module_wrapper_71/StatefulPartitionedCall2V
)module_wrapper_72/StatefulPartitionedCall)module_wrapper_72/StatefulPartitionedCall2V
)module_wrapper_73/StatefulPartitionedCall)module_wrapper_73/StatefulPartitionedCall2V
)module_wrapper_74/StatefulPartitionedCall)module_wrapper_74/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
M
1__inference_module_wrapper_62_layer_call_fn_55809

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
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_516332
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
?@
?
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_56122

args_0M
>batch_normalization_16_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_16_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_16_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_16_batchnorm_readvariableop_resource:	?
identity??&batch_normalization_16/AssignMovingAvg?5batch_normalization_16/AssignMovingAvg/ReadVariableOp?(batch_normalization_16/AssignMovingAvg_1?7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_16/batchnorm/ReadVariableOp?3batch_normalization_16/batchnorm/mul/ReadVariableOp?
5batch_normalization_16/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_16/moments/mean/reduction_indices?
#batch_normalization_16/moments/meanMeanargs_0>batch_normalization_16/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_16/moments/mean?
+batch_normalization_16/moments/StopGradientStopGradient,batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_16/moments/StopGradient?
0batch_normalization_16/moments/SquaredDifferenceSquaredDifferenceargs_04batch_normalization_16/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_16/moments/SquaredDifference?
9batch_normalization_16/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_16/moments/variance/reduction_indices?
'batch_normalization_16/moments/varianceMean4batch_normalization_16/moments/SquaredDifference:z:0Bbatch_normalization_16/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_16/moments/variance?
&batch_normalization_16/moments/SqueezeSqueeze,batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_16/moments/Squeeze?
(batch_normalization_16/moments/Squeeze_1Squeeze0batch_normalization_16/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_16/moments/Squeeze_1?
,batch_normalization_16/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_16/AssignMovingAvg/decay?
5batch_normalization_16/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_16_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_16/AssignMovingAvg/ReadVariableOp?
*batch_normalization_16/AssignMovingAvg/subSub=batch_normalization_16/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_16/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_16/AssignMovingAvg/sub?
*batch_normalization_16/AssignMovingAvg/mulMul.batch_normalization_16/AssignMovingAvg/sub:z:05batch_normalization_16/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_16/AssignMovingAvg/mul?
&batch_normalization_16/AssignMovingAvgAssignSubVariableOp>batch_normalization_16_assignmovingavg_readvariableop_resource.batch_normalization_16/AssignMovingAvg/mul:z:06^batch_normalization_16/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_16/AssignMovingAvg?
.batch_normalization_16/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_16/AssignMovingAvg_1/decay?
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_16_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_16/AssignMovingAvg_1/subSub?batch_normalization_16/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_16/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_16/AssignMovingAvg_1/sub?
,batch_normalization_16/AssignMovingAvg_1/mulMul0batch_normalization_16/AssignMovingAvg_1/sub:z:07batch_normalization_16/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_16/AssignMovingAvg_1/mul?
(batch_normalization_16/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_16_assignmovingavg_1_readvariableop_resource0batch_normalization_16/AssignMovingAvg_1/mul:z:08^batch_normalization_16/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_16/AssignMovingAvg_1?
&batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_16/batchnorm/add/y?
$batch_normalization_16/batchnorm/addAddV21batch_normalization_16/moments/Squeeze_1:output:0/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/add?
&batch_normalization_16/batchnorm/RsqrtRsqrt(batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_16/batchnorm/Rsqrt?
3batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_16/batchnorm/mul/ReadVariableOp?
$batch_normalization_16/batchnorm/mulMul*batch_normalization_16/batchnorm/Rsqrt:y:0;batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/mul?
&batch_normalization_16/batchnorm/mul_1Mulargs_0(batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_16/batchnorm/mul_1?
&batch_normalization_16/batchnorm/mul_2Mul/batch_normalization_16/moments/Squeeze:output:0(batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_16/batchnorm/mul_2?
/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_16/batchnorm/ReadVariableOp?
$batch_normalization_16/batchnorm/subSub7batch_normalization_16/batchnorm/ReadVariableOp:value:0*batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_16/batchnorm/sub?
&batch_normalization_16/batchnorm/add_1AddV2*batch_normalization_16/batchnorm/mul_1:z:0(batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_16/batchnorm/add_1?
IdentityIdentity*batch_normalization_16/batchnorm/add_1:z:0'^batch_normalization_16/AssignMovingAvg6^batch_normalization_16/AssignMovingAvg/ReadVariableOp)^batch_normalization_16/AssignMovingAvg_18^batch_normalization_16/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_16/batchnorm/ReadVariableOp4^batch_normalization_16/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2P
&batch_normalization_16/AssignMovingAvg&batch_normalization_16/AssignMovingAvg2n
5batch_normalization_16/AssignMovingAvg/ReadVariableOp5batch_normalization_16/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_16/AssignMovingAvg_1(batch_normalization_16/AssignMovingAvg_12r
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_16/batchnorm/ReadVariableOp/batch_normalization_16/batchnorm/ReadVariableOp2j
3batch_normalization_16/batchnorm/mul/ReadVariableOp3batch_normalization_16/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
c
module_wrapper_50_inputH
)serving_default_module_wrapper_50_input:0?????????00E
module_wrapper_740
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
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
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?
_tf_keras_sequential?{"name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "module_wrapper_50_input"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}]}, "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, null]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [64, 48, 48, 1]}, "float32", "module_wrapper_50_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 2}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
 _module
!regularization_losses
"trainable_variables
#	variables
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_50", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
%_module
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_51", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
*_module
+regularization_losses
,trainable_variables
-	variables
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_52", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
/_module
0regularization_losses
1trainable_variables
2	variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_53", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
4_module
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_54", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
9_module
:regularization_losses
;trainable_variables
<	variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_55", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
>_module
?regularization_losses
@trainable_variables
A	variables
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_56", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
C_module
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_57", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
H_module
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_58", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
M_module
Nregularization_losses
Otrainable_variables
P	variables
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_59", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
R_module
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_60", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
W_module
Xregularization_losses
Ytrainable_variables
Z	variables
[	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_61", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
\_module
]regularization_losses
^trainable_variables
_	variables
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_62", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
a_module
bregularization_losses
ctrainable_variables
d	variables
e	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_63", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
f_module
gregularization_losses
htrainable_variables
i	variables
j	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_64", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
k_module
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_65", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
p_module
qregularization_losses
rtrainable_variables
s	variables
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_66", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
u_module
vregularization_losses
wtrainable_variables
x	variables
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_67", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
z_module
{regularization_losses
|trainable_variables
}	variables
~	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_68", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_69", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_70", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_71", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_72", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_73", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_74", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
regularization_losses
trainable_variables
?non_trainable_variables
	variables
?layers
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
_tf_keras_layer?	{"name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 48, 48, 1]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
!regularization_losses
"trainable_variables
?non_trainable_variables
#	variables
?layers
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
_tf_keras_layer?{"name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 48, 48, 32]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
&regularization_losses
'trainable_variables
?non_trainable_variables
(	variables
?layers
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
_tf_keras_layer?{"name": "batch_normalization_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_12", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 48, 48, 64]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
+regularization_losses
,trainable_variables
?non_trainable_variables
-	variables
?layers
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
_tf_keras_layer?{"name": "max_pooling2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
0regularization_losses
1trainable_variables
?non_trainable_variables
2	variables
?layers
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
_tf_keras_layer?{"name": "dropout_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
5regularization_losses
6trainable_variables
?non_trainable_variables
7	variables
?layers
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
_tf_keras_layer?{"name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 24, 24, 64]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
:regularization_losses
;trainable_variables
?non_trainable_variables
<	variables
?layers
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
_tf_keras_layer?{"name": "batch_normalization_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_13", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 24, 24, 128]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
@trainable_variables
?non_trainable_variables
A	variables
?layers
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
_tf_keras_layer?{"name": "max_pooling2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
Dregularization_losses
Etrainable_variables
?non_trainable_variables
F	variables
?layers
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
_tf_keras_layer?{"name": "dropout_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
Iregularization_losses
Jtrainable_variables
?non_trainable_variables
K	variables
?layers
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
_tf_keras_layer?{"name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 12, 12, 128]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
Nregularization_losses
Otrainable_variables
?non_trainable_variables
P	variables
?layers
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
_tf_keras_layer?{"name": "batch_normalization_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_14", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 12, 12, 512]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
Sregularization_losses
Ttrainable_variables
?non_trainable_variables
U	variables
?layers
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
_tf_keras_layer?{"name": "max_pooling2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
Xregularization_losses
Ytrainable_variables
?non_trainable_variables
Z	variables
?layers
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
_tf_keras_layer?{"name": "dropout_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
]regularization_losses
^trainable_variables
?non_trainable_variables
_	variables
?layers
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
_tf_keras_layer?{"name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 6, 6, 512]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
bregularization_losses
ctrainable_variables
?non_trainable_variables
d	variables
?layers
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
_tf_keras_layer?{"name": "batch_normalization_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 6, 6, 512]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
gregularization_losses
htrainable_variables
?non_trainable_variables
i	variables
?layers
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
_tf_keras_layer?{"name": "max_pooling2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
lregularization_losses
mtrainable_variables
?non_trainable_variables
n	variables
?layers
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
_tf_keras_layer?{"name": "dropout_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
qregularization_losses
rtrainable_variables
?non_trainable_variables
s	variables
?layers
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
_tf_keras_layer?{"name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
vregularization_losses
wtrainable_variables
?non_trainable_variables
x	variables
?layers
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
_tf_keras_layer?{"name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4608}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 4608]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
{regularization_losses
|trainable_variables
?non_trainable_variables
}	variables
?layers
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
_tf_keras_layer?{"name": "batch_normalization_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 256]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
_tf_keras_layer?{"name": "dropout_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
_tf_keras_layer?{"name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 256]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
_tf_keras_layer?{"name": "batch_normalization_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 512]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
_tf_keras_layer?{"name": "dropout_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
_tf_keras_layer?{"name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 512]}}
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
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
<:: 2"module_wrapper_50/conv2d_10/kernel
.:, 2 module_wrapper_50/conv2d_10/bias
<:: @2"module_wrapper_51/conv2d_11/kernel
.:,@2 module_wrapper_51/conv2d_11/bias
<::@2.module_wrapper_52/batch_normalization_12/gamma
;:9@2-module_wrapper_52/batch_normalization_12/beta
=:;@?2"module_wrapper_55/conv2d_12/kernel
/:-?2 module_wrapper_55/conv2d_12/bias
=:;?2.module_wrapper_56/batch_normalization_13/gamma
<::?2-module_wrapper_56/batch_normalization_13/beta
>:<??2"module_wrapper_59/conv2d_13/kernel
/:-?2 module_wrapper_59/conv2d_13/bias
=:;?2.module_wrapper_60/batch_normalization_14/gamma
<::?2-module_wrapper_60/batch_normalization_14/beta
>:<??2"module_wrapper_63/conv2d_14/kernel
/:-?2 module_wrapper_63/conv2d_14/bias
=:;?2.module_wrapper_64/batch_normalization_15/gamma
<::?2-module_wrapper_64/batch_normalization_15/beta
4:2
?$?2 module_wrapper_68/dense_6/kernel
-:+?2module_wrapper_68/dense_6/bias
=:;?2.module_wrapper_69/batch_normalization_16/gamma
<::?2-module_wrapper_69/batch_normalization_16/beta
4:2
??2 module_wrapper_71/dense_7/kernel
-:+?2module_wrapper_71/dense_7/bias
=:;?2.module_wrapper_72/batch_normalization_17/gamma
<::?2-module_wrapper_72/batch_normalization_17/beta
3:1	?2 module_wrapper_74/dense_8/kernel
,:*2module_wrapper_74/dense_8/bias
D:B@ (24module_wrapper_52/batch_normalization_12/moving_mean
H:F@ (28module_wrapper_52/batch_normalization_12/moving_variance
E:C? (24module_wrapper_56/batch_normalization_13/moving_mean
I:G? (28module_wrapper_56/batch_normalization_13/moving_variance
E:C? (24module_wrapper_60/batch_normalization_14/moving_mean
I:G? (28module_wrapper_60/batch_normalization_14/moving_variance
E:C? (24module_wrapper_64/batch_normalization_15/moving_mean
I:G? (28module_wrapper_64/batch_normalization_15/moving_variance
E:C? (24module_wrapper_69/batch_normalization_16/moving_mean
I:G? (28module_wrapper_69/batch_normalization_16/moving_variance
E:C? (24module_wrapper_72/batch_normalization_17/moving_mean
I:G? (28module_wrapper_72/batch_normalization_17/moving_variance
 "
trackable_dict_wrapper
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
A:? 2)Adam/module_wrapper_50/conv2d_10/kernel/m
3:1 2'Adam/module_wrapper_50/conv2d_10/bias/m
A:? @2)Adam/module_wrapper_51/conv2d_11/kernel/m
3:1@2'Adam/module_wrapper_51/conv2d_11/bias/m
A:?@25Adam/module_wrapper_52/batch_normalization_12/gamma/m
@:>@24Adam/module_wrapper_52/batch_normalization_12/beta/m
B:@@?2)Adam/module_wrapper_55/conv2d_12/kernel/m
4:2?2'Adam/module_wrapper_55/conv2d_12/bias/m
B:@?25Adam/module_wrapper_56/batch_normalization_13/gamma/m
A:??24Adam/module_wrapper_56/batch_normalization_13/beta/m
C:A??2)Adam/module_wrapper_59/conv2d_13/kernel/m
4:2?2'Adam/module_wrapper_59/conv2d_13/bias/m
B:@?25Adam/module_wrapper_60/batch_normalization_14/gamma/m
A:??24Adam/module_wrapper_60/batch_normalization_14/beta/m
C:A??2)Adam/module_wrapper_63/conv2d_14/kernel/m
4:2?2'Adam/module_wrapper_63/conv2d_14/bias/m
B:@?25Adam/module_wrapper_64/batch_normalization_15/gamma/m
A:??24Adam/module_wrapper_64/batch_normalization_15/beta/m
9:7
?$?2'Adam/module_wrapper_68/dense_6/kernel/m
2:0?2%Adam/module_wrapper_68/dense_6/bias/m
B:@?25Adam/module_wrapper_69/batch_normalization_16/gamma/m
A:??24Adam/module_wrapper_69/batch_normalization_16/beta/m
9:7
??2'Adam/module_wrapper_71/dense_7/kernel/m
2:0?2%Adam/module_wrapper_71/dense_7/bias/m
B:@?25Adam/module_wrapper_72/batch_normalization_17/gamma/m
A:??24Adam/module_wrapper_72/batch_normalization_17/beta/m
8:6	?2'Adam/module_wrapper_74/dense_8/kernel/m
1:/2%Adam/module_wrapper_74/dense_8/bias/m
A:? 2)Adam/module_wrapper_50/conv2d_10/kernel/v
3:1 2'Adam/module_wrapper_50/conv2d_10/bias/v
A:? @2)Adam/module_wrapper_51/conv2d_11/kernel/v
3:1@2'Adam/module_wrapper_51/conv2d_11/bias/v
A:?@25Adam/module_wrapper_52/batch_normalization_12/gamma/v
@:>@24Adam/module_wrapper_52/batch_normalization_12/beta/v
B:@@?2)Adam/module_wrapper_55/conv2d_12/kernel/v
4:2?2'Adam/module_wrapper_55/conv2d_12/bias/v
B:@?25Adam/module_wrapper_56/batch_normalization_13/gamma/v
A:??24Adam/module_wrapper_56/batch_normalization_13/beta/v
C:A??2)Adam/module_wrapper_59/conv2d_13/kernel/v
4:2?2'Adam/module_wrapper_59/conv2d_13/bias/v
B:@?25Adam/module_wrapper_60/batch_normalization_14/gamma/v
A:??24Adam/module_wrapper_60/batch_normalization_14/beta/v
C:A??2)Adam/module_wrapper_63/conv2d_14/kernel/v
4:2?2'Adam/module_wrapper_63/conv2d_14/bias/v
B:@?25Adam/module_wrapper_64/batch_normalization_15/gamma/v
A:??24Adam/module_wrapper_64/batch_normalization_15/beta/v
9:7
?$?2'Adam/module_wrapper_68/dense_6/kernel/v
2:0?2%Adam/module_wrapper_68/dense_6/bias/v
B:@?25Adam/module_wrapper_69/batch_normalization_16/gamma/v
A:??24Adam/module_wrapper_69/batch_normalization_16/beta/v
9:7
??2'Adam/module_wrapper_71/dense_7/kernel/v
2:0?2%Adam/module_wrapper_71/dense_7/bias/v
B:@?25Adam/module_wrapper_72/batch_normalization_17/gamma/v
A:??24Adam/module_wrapper_72/batch_normalization_17/beta/v
8:6	?2'Adam/module_wrapper_74/dense_8/kernel/v
1:/2%Adam/module_wrapper_74/dense_8/bias/v
?2?
,__inference_sequential_2_layer_call_fn_54309
,__inference_sequential_2_layer_call_fn_54394
,__inference_sequential_2_layer_call_fn_54479
,__inference_sequential_2_layer_call_fn_54564?
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
G__inference_sequential_2_layer_call_and_return_conditional_losses_54724
G__inference_sequential_2_layer_call_and_return_conditional_losses_54954
G__inference_sequential_2_layer_call_and_return_conditional_losses_55114
G__inference_sequential_2_layer_call_and_return_conditional_losses_55344?
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
?2?
 __inference__wrapped_model_51434?
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
annotations? *>?;
9?6
module_wrapper_50_input?????????00
?2?
1__inference_module_wrapper_50_layer_call_fn_55353
1__inference_module_wrapper_50_layer_call_fn_55362?
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
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_55373
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_55384?
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
1__inference_module_wrapper_51_layer_call_fn_55393
1__inference_module_wrapper_51_layer_call_fn_55402?
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
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_55413
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_55424?
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
1__inference_module_wrapper_52_layer_call_fn_55437
1__inference_module_wrapper_52_layer_call_fn_55450?
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
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_55468
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_55486?
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
1__inference_module_wrapper_53_layer_call_fn_55491
1__inference_module_wrapper_53_layer_call_fn_55496?
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
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_55501
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_55506?
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
1__inference_module_wrapper_54_layer_call_fn_55511
1__inference_module_wrapper_54_layer_call_fn_55516?
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
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_55521
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_55533?
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
1__inference_module_wrapper_55_layer_call_fn_55542
1__inference_module_wrapper_55_layer_call_fn_55551?
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
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_55562
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_55573?
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
1__inference_module_wrapper_56_layer_call_fn_55586
1__inference_module_wrapper_56_layer_call_fn_55599?
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
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_55617
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_55635?
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
1__inference_module_wrapper_57_layer_call_fn_55640
1__inference_module_wrapper_57_layer_call_fn_55645?
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
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_55650
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_55655?
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
1__inference_module_wrapper_58_layer_call_fn_55660
1__inference_module_wrapper_58_layer_call_fn_55665?
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
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_55670
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_55682?
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
1__inference_module_wrapper_59_layer_call_fn_55691
1__inference_module_wrapper_59_layer_call_fn_55700?
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
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_55711
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_55722?
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
1__inference_module_wrapper_60_layer_call_fn_55735
1__inference_module_wrapper_60_layer_call_fn_55748?
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
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_55766
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_55784?
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
1__inference_module_wrapper_61_layer_call_fn_55789
1__inference_module_wrapper_61_layer_call_fn_55794?
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
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_55799
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_55804?
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
1__inference_module_wrapper_62_layer_call_fn_55809
1__inference_module_wrapper_62_layer_call_fn_55814?
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
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_55819
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_55831?
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
1__inference_module_wrapper_63_layer_call_fn_55840
1__inference_module_wrapper_63_layer_call_fn_55849?
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
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_55860
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_55871?
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
1__inference_module_wrapper_64_layer_call_fn_55884
1__inference_module_wrapper_64_layer_call_fn_55897?
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
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_55915
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_55933?
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
1__inference_module_wrapper_65_layer_call_fn_55938
1__inference_module_wrapper_65_layer_call_fn_55943?
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
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_55948
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_55953?
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
1__inference_module_wrapper_66_layer_call_fn_55958
1__inference_module_wrapper_66_layer_call_fn_55963?
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
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_55968
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_55980?
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
1__inference_module_wrapper_67_layer_call_fn_55985
1__inference_module_wrapper_67_layer_call_fn_55990?
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
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_55996
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_56002?
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
1__inference_module_wrapper_68_layer_call_fn_56011
1__inference_module_wrapper_68_layer_call_fn_56020?
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
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_56031
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_56042?
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
1__inference_module_wrapper_69_layer_call_fn_56055
1__inference_module_wrapper_69_layer_call_fn_56068?
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
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_56088
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_56122?
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
1__inference_module_wrapper_70_layer_call_fn_56127
1__inference_module_wrapper_70_layer_call_fn_56132?
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
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_56137
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_56149?
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
1__inference_module_wrapper_71_layer_call_fn_56158
1__inference_module_wrapper_71_layer_call_fn_56167?
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
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_56178
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_56189?
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
1__inference_module_wrapper_72_layer_call_fn_56202
1__inference_module_wrapper_72_layer_call_fn_56215?
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
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_56235
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_56269?
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
1__inference_module_wrapper_73_layer_call_fn_56274
1__inference_module_wrapper_73_layer_call_fn_56279?
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
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_56284
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_56296?
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
1__inference_module_wrapper_74_layer_call_fn_56305
1__inference_module_wrapper_74_layer_call_fn_56314?
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
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_56325
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_56336?
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
#__inference_signature_wrapper_53347module_wrapper_50_input"?
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
6__inference_batch_normalization_12_layer_call_fn_56349
6__inference_batch_normalization_12_layer_call_fn_56362?
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
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_56380
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_56398?
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
/__inference_max_pooling2d_8_layer_call_fn_53486?
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
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_53480?
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
6__inference_batch_normalization_13_layer_call_fn_56411
6__inference_batch_normalization_13_layer_call_fn_56424?
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
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_56442
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_56460?
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
/__inference_max_pooling2d_9_layer_call_fn_53624?
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
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_53618?
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
6__inference_batch_normalization_14_layer_call_fn_56479
6__inference_batch_normalization_14_layer_call_fn_56492?
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
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_56510
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_56528?
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
0__inference_max_pooling2d_10_layer_call_fn_53762?
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
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_53756?
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
6__inference_batch_normalization_15_layer_call_fn_56547
6__inference_batch_normalization_15_layer_call_fn_56560?
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
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_56578
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_56596?
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
0__inference_max_pooling2d_11_layer_call_fn_53900?
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
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_53894?
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
6__inference_batch_normalization_16_layer_call_fn_56609
6__inference_batch_normalization_16_layer_call_fn_56622?
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
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_56642
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_56676?
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
6__inference_batch_normalization_17_layer_call_fn_56689
6__inference_batch_normalization_17_layer_call_fn_56702?
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
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_56722
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_56756?
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
__inference_loss_fn_0_56767?
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
__inference_loss_fn_1_56778?
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
 __inference__wrapped_model_51434?P????????????????????????????????????????H?E
>?;
9?6
module_wrapper_50_input?????????00
? "E?B
@
module_wrapper_74+?(
module_wrapper_74??????????
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_56380?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_56398?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
6__inference_batch_normalization_12_layer_call_fn_56349?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
6__inference_batch_normalization_12_layer_call_fn_56362?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_56442?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_56460?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_batch_normalization_13_layer_call_fn_56411?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_13_layer_call_fn_56424?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_56510?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_56528?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_batch_normalization_14_layer_call_fn_56479?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_14_layer_call_fn_56492?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_56578?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_56596?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_batch_normalization_15_layer_call_fn_56547?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_15_layer_call_fn_56560?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_56642h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_56676h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
6__inference_batch_normalization_16_layer_call_fn_56609[????4?1
*?'
!?
inputs??????????
p 
? "????????????
6__inference_batch_normalization_16_layer_call_fn_56622[????4?1
*?'
!?
inputs??????????
p
? "????????????
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_56722h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_56756h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
6__inference_batch_normalization_17_layer_call_fn_56689[????4?1
*?'
!?
inputs??????????
p 
? "????????????
6__inference_batch_normalization_17_layer_call_fn_56702[????4?1
*?'
!?
inputs??????????
p
? "???????????;
__inference_loss_fn_0_56767??

? 
? "? ;
__inference_loss_fn_1_56778??

? 
? "? ?
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_53756?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_10_layer_call_fn_53762?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_53894?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_11_layer_call_fn_53900?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_53480?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_8_layer_call_fn_53486?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_53618?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_9_layer_call_fn_53624?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_55373~??G?D
-?*
(?%
args_0?????????00
?

trainingp "-?*
#? 
0?????????00 
? ?
L__inference_module_wrapper_50_layer_call_and_return_conditional_losses_55384~??G?D
-?*
(?%
args_0?????????00
?

trainingp"-?*
#? 
0?????????00 
? ?
1__inference_module_wrapper_50_layer_call_fn_55353q??G?D
-?*
(?%
args_0?????????00
?

trainingp " ??????????00 ?
1__inference_module_wrapper_50_layer_call_fn_55362q??G?D
-?*
(?%
args_0?????????00
?

trainingp" ??????????00 ?
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_55413~??G?D
-?*
(?%
args_0?????????00 
?

trainingp "-?*
#? 
0?????????00@
? ?
L__inference_module_wrapper_51_layer_call_and_return_conditional_losses_55424~??G?D
-?*
(?%
args_0?????????00 
?

trainingp"-?*
#? 
0?????????00@
? ?
1__inference_module_wrapper_51_layer_call_fn_55393q??G?D
-?*
(?%
args_0?????????00 
?

trainingp " ??????????00@?
1__inference_module_wrapper_51_layer_call_fn_55402q??G?D
-?*
(?%
args_0?????????00 
?

trainingp" ??????????00@?
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_55468?????G?D
-?*
(?%
args_0?????????00@
?

trainingp "-?*
#? 
0?????????00@
? ?
L__inference_module_wrapper_52_layer_call_and_return_conditional_losses_55486?????G?D
-?*
(?%
args_0?????????00@
?

trainingp"-?*
#? 
0?????????00@
? ?
1__inference_module_wrapper_52_layer_call_fn_55437u????G?D
-?*
(?%
args_0?????????00@
?

trainingp " ??????????00@?
1__inference_module_wrapper_52_layer_call_fn_55450u????G?D
-?*
(?%
args_0?????????00@
?

trainingp" ??????????00@?
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_55501xG?D
-?*
(?%
args_0?????????00@
?

trainingp "-?*
#? 
0?????????@
? ?
L__inference_module_wrapper_53_layer_call_and_return_conditional_losses_55506xG?D
-?*
(?%
args_0?????????00@
?

trainingp"-?*
#? 
0?????????@
? ?
1__inference_module_wrapper_53_layer_call_fn_55491kG?D
-?*
(?%
args_0?????????00@
?

trainingp " ??????????@?
1__inference_module_wrapper_53_layer_call_fn_55496kG?D
-?*
(?%
args_0?????????00@
?

trainingp" ??????????@?
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_55521xG?D
-?*
(?%
args_0?????????@
?

trainingp "-?*
#? 
0?????????@
? ?
L__inference_module_wrapper_54_layer_call_and_return_conditional_losses_55533xG?D
-?*
(?%
args_0?????????@
?

trainingp"-?*
#? 
0?????????@
? ?
1__inference_module_wrapper_54_layer_call_fn_55511kG?D
-?*
(?%
args_0?????????@
?

trainingp " ??????????@?
1__inference_module_wrapper_54_layer_call_fn_55516kG?D
-?*
(?%
args_0?????????@
?

trainingp" ??????????@?
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_55562??G?D
-?*
(?%
args_0?????????@
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_55_layer_call_and_return_conditional_losses_55573??G?D
-?*
(?%
args_0?????????@
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_55_layer_call_fn_55542r??G?D
-?*
(?%
args_0?????????@
?

trainingp "!????????????
1__inference_module_wrapper_55_layer_call_fn_55551r??G?D
-?*
(?%
args_0?????????@
?

trainingp"!????????????
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_55617?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_56_layer_call_and_return_conditional_losses_55635?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_56_layer_call_fn_55586w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_56_layer_call_fn_55599w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_55650zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_57_layer_call_and_return_conditional_losses_55655zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_57_layer_call_fn_55640mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_57_layer_call_fn_55645mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_55670zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_58_layer_call_and_return_conditional_losses_55682zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_58_layer_call_fn_55660mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_58_layer_call_fn_55665mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_55711???H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_59_layer_call_and_return_conditional_losses_55722???H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_59_layer_call_fn_55691s??H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_59_layer_call_fn_55700s??H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_55766?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_60_layer_call_and_return_conditional_losses_55784?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_60_layer_call_fn_55735w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_60_layer_call_fn_55748w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_55799zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_61_layer_call_and_return_conditional_losses_55804zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_61_layer_call_fn_55789mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_61_layer_call_fn_55794mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_55819zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_62_layer_call_and_return_conditional_losses_55831zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_62_layer_call_fn_55809mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_62_layer_call_fn_55814mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_55860???H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_63_layer_call_and_return_conditional_losses_55871???H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_63_layer_call_fn_55840s??H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_63_layer_call_fn_55849s??H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_55915?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_64_layer_call_and_return_conditional_losses_55933?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_64_layer_call_fn_55884w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_64_layer_call_fn_55897w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_55948zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_65_layer_call_and_return_conditional_losses_55953zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_65_layer_call_fn_55938mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_65_layer_call_fn_55943mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_55968zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_66_layer_call_and_return_conditional_losses_55980zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_66_layer_call_fn_55958mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_66_layer_call_fn_55963mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_55996rH?E
.?+
)?&
args_0??????????
?

trainingp "&?#
?
0??????????$
? ?
L__inference_module_wrapper_67_layer_call_and_return_conditional_losses_56002rH?E
.?+
)?&
args_0??????????
?

trainingp"&?#
?
0??????????$
? ?
1__inference_module_wrapper_67_layer_call_fn_55985eH?E
.?+
)?&
args_0??????????
?

trainingp "???????????$?
1__inference_module_wrapper_67_layer_call_fn_55990eH?E
.?+
)?&
args_0??????????
?

trainingp"???????????$?
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_56031p??@?=
&?#
!?
args_0??????????$
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_68_layer_call_and_return_conditional_losses_56042p??@?=
&?#
!?
args_0??????????$
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_68_layer_call_fn_56011c??@?=
&?#
!?
args_0??????????$
?

trainingp "????????????
1__inference_module_wrapper_68_layer_call_fn_56020c??@?=
&?#
!?
args_0??????????$
?

trainingp"????????????
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_56088t????@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_69_layer_call_and_return_conditional_losses_56122t????@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_69_layer_call_fn_56055g????@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_69_layer_call_fn_56068g????@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_56137j@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_70_layer_call_and_return_conditional_losses_56149j@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_70_layer_call_fn_56127]@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_70_layer_call_fn_56132]@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_56178p??@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_71_layer_call_and_return_conditional_losses_56189p??@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_71_layer_call_fn_56158c??@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_71_layer_call_fn_56167c??@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_56235t????@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_72_layer_call_and_return_conditional_losses_56269t????@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_72_layer_call_fn_56202g????@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_72_layer_call_fn_56215g????@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_56284j@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_73_layer_call_and_return_conditional_losses_56296j@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_73_layer_call_fn_56274]@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_73_layer_call_fn_56279]@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_56325o??@?=
&?#
!?
args_0??????????
?

trainingp "%?"
?
0?????????
? ?
L__inference_module_wrapper_74_layer_call_and_return_conditional_losses_56336o??@?=
&?#
!?
args_0??????????
?

trainingp"%?"
?
0?????????
? ?
1__inference_module_wrapper_74_layer_call_fn_56305b??@?=
&?#
!?
args_0??????????
?

trainingp "???????????
1__inference_module_wrapper_74_layer_call_fn_56314b??@?=
&?#
!?
args_0??????????
?

trainingp"???????????
G__inference_sequential_2_layer_call_and_return_conditional_losses_54724?P??????????????????????????????????????????<
5?2
(?%
inputs?????????00
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_54954?P??????????????????????????????????????????<
5?2
(?%
inputs?????????00
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55114?P????????????????????????????????????????P?M
F?C
9?6
module_wrapper_50_input?????????00
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_55344?P????????????????????????????????????????P?M
F?C
9?6
module_wrapper_50_input?????????00
p

 
? "%?"
?
0?????????
? ?
,__inference_sequential_2_layer_call_fn_54309?P????????????????????????????????????????P?M
F?C
9?6
module_wrapper_50_input?????????00
p 

 
? "???????????
,__inference_sequential_2_layer_call_fn_54394?P??????????????????????????????????????????<
5?2
(?%
inputs?????????00
p 

 
? "???????????
,__inference_sequential_2_layer_call_fn_54479?P??????????????????????????????????????????<
5?2
(?%
inputs?????????00
p

 
? "???????????
,__inference_sequential_2_layer_call_fn_54564?P????????????????????????????????????????P?M
F?C
9?6
module_wrapper_50_input?????????00
p

 
? "???????????
#__inference_signature_wrapper_53347?P????????????????????????????????????????c?`
? 
Y?V
T
module_wrapper_50_input9?6
module_wrapper_50_input?????????00"E?B
@
module_wrapper_74+?(
module_wrapper_74?????????