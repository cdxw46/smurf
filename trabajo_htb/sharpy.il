.assembly extern mscorlib
{
  .ver 2:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly extern System
{
  .ver 2:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly 'runtime_compiler_aes'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::'.ctor'(int32) =  (01 00 08 00 00 00 00 00 ) // ........

  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module runtime_compiler_aes.dll // GUID = {D1A1C693-3F6A-4799-A344-CDA13699E5B9}


  .class public auto ansi beforefieldinit SharPy
  	extends [mscorlib]System.Object
  {

    // method line 1
    .method private hidebysig 
           instance default unsigned int8[] ConvertHexStringToByteArray (string hexString)  cil managed 
    {
        // Method begins at RVA 0x2050
	// Code size 55 (0x37)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0,
		int32	V_1,
		string	V_2)
	IL_0000:  ldarg.1 
	IL_0001:  callvirt instance int32 string::get_Length()
	IL_0006:  ldc.i4.2 
	IL_0007:  div 
	IL_0008:  newarr [mscorlib]System.Byte
	IL_000d:  stloc.0 
	IL_000e:  ldc.i4.0 
	IL_000f:  stloc.1 
	IL_0010:  br.s IL_002f

	IL_0012:  ldarg.1 
	IL_0013:  ldloc.1 
	IL_0014:  ldc.i4.2 
	IL_0015:  mul 
	IL_0016:  ldc.i4.2 
	IL_0017:  callvirt instance string string::Substring(int32, int32)
	IL_001c:  stloc.2 
	IL_001d:  ldloc.0 
	IL_001e:  ldloc.1 
	IL_001f:  ldloc.2 
	IL_0020:  ldc.i4 515
	IL_0025:  call unsigned int8 unsigned int8::Parse(string, valuetype [mscorlib]System.Globalization.NumberStyles)
	IL_002a:  stelem.i1 
	IL_002b:  ldloc.1 
	IL_002c:  ldc.i4.1 
	IL_002d:  add 
	IL_002e:  stloc.1 
	IL_002f:  ldloc.1 
	IL_0030:  ldloc.0 
	IL_0031:  ldlen 
	IL_0032:  conv.i4 
	IL_0033:  blt.s IL_0012

	IL_0035:  ldloc.0 
	IL_0036:  ret 
    } // end of method SharPy::ConvertHexStringToByteArray

    // method line 2
    .method private hidebysig 
           instance default unsigned int8[] AESEnc (unsigned int8[] plain, unsigned int8[] Key, unsigned int8[] IV)  cil managed 
    {
        // Method begins at RVA 0x2094
	// Code size 114 (0x72)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0,
		class [mscorlib]System.Security.Cryptography.Rijndael	V_1,
		class [mscorlib]System.Security.Cryptography.ICryptoTransform	V_2,
		class [mscorlib]System.IO.MemoryStream	V_3,
		class [mscorlib]System.Security.Cryptography.CryptoStream	V_4)
	IL_0000:  call class [mscorlib]System.Security.Cryptography.Rijndael class [mscorlib]System.Security.Cryptography.Rijndael::Create()
	IL_0005:  stloc.1 
	.try { // 2
	  IL_0006:  ldloc.1 
	  IL_0007:  ldarg.2 
	  IL_0008:  callvirt instance void class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Key(unsigned int8[])
	  IL_000d:  ldloc.1 
	  IL_000e:  ldarg.3 
	  IL_000f:  callvirt instance void class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_IV(unsigned int8[])
	  IL_0014:  ldloc.1 
	  IL_0015:  ldloc.1 
	  IL_0016:  callvirt instance unsigned int8[] class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_Key()
	  IL_001b:  ldloc.1 
	  IL_001c:  callvirt instance unsigned int8[] class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_IV()
	  IL_0021:  callvirt instance class [mscorlib]System.Security.Cryptography.ICryptoTransform class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::CreateEncryptor(unsigned int8[], unsigned int8[])
	  IL_0026:  stloc.2 
	  IL_0027:  newobj instance void class [mscorlib]System.IO.MemoryStream::'.ctor'()
	  IL_002c:  stloc.3 
	  .try { // 1
	    IL_002d:  ldloc.3 
	    IL_002e:  ldloc.2 
	    IL_002f:  ldc.i4.1 
	    IL_0030:  newobj instance void class [mscorlib]System.Security.Cryptography.CryptoStream::'.ctor'(class [mscorlib]System.IO.Stream, class [mscorlib]System.Security.Cryptography.ICryptoTransform, valuetype [mscorlib]System.Security.Cryptography.CryptoStreamMode)
	    IL_0035:  stloc.s 4
	    .try { // 0
	      IL_0037:  ldloc.s 4
	      IL_0039:  ldarg.1 
	      IL_003a:  ldc.i4.0 
	      IL_003b:  ldarg.1 
	      IL_003c:  ldlen 
	      IL_003d:  conv.i4 
	      IL_003e:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	      IL_0043:  leave.s IL_0051

	    } // end .try 0
	    finally  { // 0
	      IL_0045:  ldloc.s 4
	      IL_0047:  brfalse.s IL_0050

	      IL_0049:  ldloc.s 4
	      IL_004b:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	      IL_0050:  endfinally 
	    } // end handler 0
	    IL_0051:  ldloc.3 
	    IL_0052:  callvirt instance unsigned int8[] class [mscorlib]System.IO.MemoryStream::ToArray()
	    IL_0057:  stloc.0 
	    IL_0058:  leave.s IL_0064

	  } // end .try 1
	  finally  { // 1
	    IL_005a:  ldloc.3 
	    IL_005b:  brfalse.s IL_0063

	    IL_005d:  ldloc.3 
	    IL_005e:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	    IL_0063:  endfinally 
	  } // end handler 1
	  IL_0064:  leave.s IL_0070

	} // end .try 2
	finally  { // 2
	  IL_0066:  ldloc.1 
	  IL_0067:  brfalse.s IL_006f

	  IL_0069:  ldloc.1 
	  IL_006a:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	  IL_006f:  endfinally 
	} // end handler 2
	IL_0070:  ldloc.0 
	IL_0071:  ret 
    } // end of method SharPy::AESEnc

    // method line 3
    .method private hidebysig 
           instance default unsigned int8[] AESDec (unsigned int8[] encrypted, unsigned int8[] Key, unsigned int8[] IV)  cil managed 
    {
        // Method begins at RVA 0x213c
	// Code size 141 (0x8d)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0,
		class [mscorlib]System.Security.Cryptography.Rijndael	V_1,
		class [mscorlib]System.Security.Cryptography.ICryptoTransform	V_2,
		class [mscorlib]System.IO.MemoryStream	V_3,
		class [mscorlib]System.Security.Cryptography.CryptoStream	V_4,
		class [mscorlib]System.IO.StreamReader	V_5,
		string	V_6)
	IL_0000:  call class [mscorlib]System.Security.Cryptography.Rijndael class [mscorlib]System.Security.Cryptography.Rijndael::Create()
	IL_0005:  stloc.1 
	.try { // 3
	  IL_0006:  ldloc.1 
	  IL_0007:  ldarg.2 
	  IL_0008:  callvirt instance void class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Key(unsigned int8[])
	  IL_000d:  ldloc.1 
	  IL_000e:  ldarg.3 
	  IL_000f:  callvirt instance void class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_IV(unsigned int8[])
	  IL_0014:  ldloc.1 
	  IL_0015:  ldloc.1 
	  IL_0016:  callvirt instance unsigned int8[] class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_Key()
	  IL_001b:  ldloc.1 
	  IL_001c:  callvirt instance unsigned int8[] class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_IV()
	  IL_0021:  callvirt instance class [mscorlib]System.Security.Cryptography.ICryptoTransform class [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::CreateDecryptor(unsigned int8[], unsigned int8[])
	  IL_0026:  stloc.2 
	  IL_0027:  ldarg.1 
	  IL_0028:  newobj instance void class [mscorlib]System.IO.MemoryStream::'.ctor'(unsigned int8[])
	  IL_002d:  stloc.3 
	  .try { // 2
	    IL_002e:  ldloc.3 
	    IL_002f:  ldloc.2 
	    IL_0030:  ldc.i4.0 
	    IL_0031:  newobj instance void class [mscorlib]System.Security.Cryptography.CryptoStream::'.ctor'(class [mscorlib]System.IO.Stream, class [mscorlib]System.Security.Cryptography.ICryptoTransform, valuetype [mscorlib]System.Security.Cryptography.CryptoStreamMode)
	    IL_0036:  stloc.s 4
	    .try { // 1
	      IL_0038:  ldloc.s 4
	      IL_003a:  newobj instance void class [mscorlib]System.IO.StreamReader::'.ctor'(class [mscorlib]System.IO.Stream)
	      IL_003f:  stloc.s 5
	      .try { // 0
	        IL_0041:  ldloc.s 5
	        IL_0043:  callvirt instance string class [mscorlib]System.IO.TextReader::ReadToEnd()
	        IL_0048:  stloc.s 6
	        IL_004a:  call class [mscorlib]System.Text.Encoding class [mscorlib]System.Text.Encoding::get_UTF8()
	        IL_004f:  ldloc.s 6
	        IL_0051:  callvirt instance unsigned int8[] class [mscorlib]System.Text.Encoding::GetBytes(string)
	        IL_0056:  stloc.0 
	        IL_0057:  leave.s IL_0065

	      } // end .try 0
	      finally  { // 0
	        IL_0059:  ldloc.s 5
	        IL_005b:  brfalse.s IL_0064

	        IL_005d:  ldloc.s 5
	        IL_005f:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	        IL_0064:  endfinally 
	      } // end handler 0
	      IL_0065:  leave.s IL_0073

	    } // end .try 1
	    finally  { // 1
	      IL_0067:  ldloc.s 4
	      IL_0069:  brfalse.s IL_0072

	      IL_006b:  ldloc.s 4
	      IL_006d:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	      IL_0072:  endfinally 
	    } // end handler 1
	    IL_0073:  leave.s IL_007f

	  } // end .try 2
	  finally  { // 2
	    IL_0075:  ldloc.3 
	    IL_0076:  brfalse.s IL_007e

	    IL_0078:  ldloc.3 
	    IL_0079:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	    IL_007e:  endfinally 
	  } // end handler 2
	  IL_007f:  leave.s IL_008b

	} // end .try 3
	finally  { // 3
	  IL_0081:  ldloc.1 
	  IL_0082:  brfalse.s IL_008a

	  IL_0084:  ldloc.1 
	  IL_0085:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	  IL_008a:  endfinally 
	} // end handler 3
	IL_008b:  ldloc.0 
	IL_008c:  ret 
    } // end of method SharPy::AESDec

    // method line 4
    .method public hidebysig 
           instance default string Run (string code, string password)  cil managed 
    {
        // Method begins at RVA 0x2220
	// Code size 343 (0x157)
	.maxstack 5
	.locals init (
		unsigned int8[]	V_0,
		unsigned int8[]	V_1,
		string	V_2,
		unsigned int8[]	V_3,
		unsigned int8[]	V_4,
		string	V_5,
		object	V_6,
		class [System]System.CodeDom.Compiler.CompilerResults	V_7,
		class [System]Microsoft.CSharp.CSharpCodeProvider	V_8,
		class [System]System.CodeDom.Compiler.CompilerParameters	V_9,
		object	V_10,
		class [mscorlib]System.Reflection.MethodInfo	V_11,
		class [mscorlib]System.Exception	V_12,
		string	V_13,
		int32	V_14,
		unsigned int8[]	V_15,
		string	V_16,
		string[]	V_17)
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.2 
	IL_0002:  call instance unsigned int8[] class SharPy::ConvertHexStringToByteArray(string)
	IL_0007:  stloc.0 
	IL_0008:  ldc.i4.s 0x10
	IL_000a:  newarr [mscorlib]System.Byte
	IL_000f:  dup 
	IL_0010:  ldtoken field valuetype '<PrivateImplementationDetails>{D1A1C693-3F6A-4799-A344-CDA13699E5B9}'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>{D1A1C693-3F6A-4799-A344-CDA13699E5B9}'::'$$method0x6000004-1'
	IL_0015:  call void class [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array, valuetype [mscorlib]System.RuntimeFieldHandle)
	IL_001a:  stloc.1 
	IL_001b:  ldstr ""
	IL_0020:  stloc.2 
	IL_0021:  ldarg.1 
	IL_0022:  brfalse IL_0155

	IL_0027:  ldarg.1 
	IL_0028:  call unsigned int8[] class [mscorlib]System.Convert::FromBase64String(string)
	IL_002d:  stloc.3 
	IL_002e:  ldarg.0 
	IL_002f:  ldloc.3 
	IL_0030:  ldloc.0 
	IL_0031:  ldloc.1 
	IL_0032:  call instance unsigned int8[] class SharPy::AESDec(unsigned int8[], unsigned int8[], unsigned int8[])
	IL_0037:  stloc.s 4
	IL_0039:  call class [mscorlib]System.Text.Encoding class [mscorlib]System.Text.Encoding::get_UTF8()
	IL_003e:  ldloc.s 4
	IL_0040:  callvirt instance string class [mscorlib]System.Text.Encoding::GetString(unsigned int8[])
	IL_0045:  stloc.s 5
	IL_0047:  newobj instance void object::'.ctor'()
	IL_004c:  stloc.s 6
	IL_004e:  ldnull 
	IL_004f:  stloc.s 7
	.try { // 0
	  IL_0051:  newobj instance void class [System]Microsoft.CSharp.CSharpCodeProvider::'.ctor'()
	  IL_0056:  stloc.s 8
	  IL_0058:  newobj instance void class [System]System.CodeDom.Compiler.CompilerParameters::'.ctor'()
	  IL_005d:  stloc.s 9
	  IL_005f:  ldloc.s 9
	  IL_0061:  ldc.i4.1 
	  IL_0062:  callvirt instance void class [System]System.CodeDom.Compiler.CompilerParameters::set_GenerateInMemory(bool)
	  IL_0067:  ldloc.s 9
	  IL_0069:  ldc.i4.0 
	  IL_006a:  callvirt instance void class [System]System.CodeDom.Compiler.CompilerParameters::set_GenerateExecutable(bool)
	  IL_006f:  ldloc.s 9
	  IL_0071:  callvirt instance class [System]System.Collections.Specialized.StringCollection class [System]System.CodeDom.Compiler.CompilerParameters::get_ReferencedAssemblies()
	  IL_0076:  ldstr "System.dll"
	  IL_007b:  callvirt instance int32 class [System]System.Collections.Specialized.StringCollection::Add(string)
	  IL_0080:  pop 
	  IL_0081:  ldloc.s 8
	  IL_0083:  ldloc.s 9
	  IL_0085:  ldc.i4.1 
	  IL_0086:  newarr [mscorlib]System.String
	  IL_008b:  stloc.s 17
	  IL_008d:  ldloc.s 17
	  IL_008f:  ldc.i4.0 
	  IL_0090:  ldloc.s 5
	  IL_0092:  stelem.ref 
	  IL_0093:  ldloc.s 17
	  IL_0095:  callvirt instance class [System]System.CodeDom.Compiler.CompilerResults class [System]System.CodeDom.Compiler.CodeDomProvider::CompileAssemblyFromSource(class [System]System.CodeDom.Compiler.CompilerParameters, string[])
	  IL_009a:  stloc.s 7
	  IL_009c:  ldloc.s 7
	  IL_009e:  callvirt instance class [mscorlib]System.Reflection.Assembly class [System]System.CodeDom.Compiler.CompilerResults::get_CompiledAssembly()
	  IL_00a3:  ldstr "SharPyShell"
	  IL_00a8:  callvirt instance object class [mscorlib]System.Reflection.Assembly::CreateInstance(string)
	  IL_00ad:  stloc.s 10
	  IL_00af:  ldloc.s 10
	  IL_00b1:  callvirt instance class [mscorlib]System.Type object::GetType()
	  IL_00b6:  ldstr "ExecRuntime"
	  IL_00bb:  callvirt instance class [mscorlib]System.Reflection.MethodInfo class [mscorlib]System.Type::GetMethod(string)
	  IL_00c0:  stloc.s 11
	  IL_00c2:  ldloc.s 11
	  IL_00c4:  ldloc.s 10
	  IL_00c6:  ldnull 
	  IL_00c7:  callvirt instance object class [mscorlib]System.Reflection.MethodBase::Invoke(object, object[])
	  IL_00cc:  stloc.s 6
	  IL_00ce:  leave.s IL_0138

	} // end .try 0
	catch class [mscorlib]System.Exception { // 0
	  IL_00d0:  stloc.s 12
	  IL_00d2:  ldloc.s 12
	  IL_00d4:  callvirt instance string object::ToString()
	  IL_00d9:  ldstr "\n\n{{{SharPyShellError}}}"
	  IL_00de:  call string string::Concat(string, string)
	  IL_00e3:  stloc.s 13
	  IL_00e5:  ldc.i4.0 
	  IL_00e6:  stloc.s 14
	  IL_00e8:  br.s IL_0118

	  IL_00ea:  ldloc.s 13
	  IL_00ec:  ldloca.s 14
	  IL_00ee:  call instance string int32::ToString()
	  IL_00f3:  ldstr ": "
	  IL_00f8:  ldloc.s 7
	  IL_00fa:  callvirt instance class [System]System.CodeDom.Compiler.CompilerErrorCollection class [System]System.CodeDom.Compiler.CompilerResults::get_Errors()
	  IL_00ff:  ldloc.s 14
	  IL_0101:  callvirt instance class [System]System.CodeDom.Compiler.CompilerError class [System]System.CodeDom.Compiler.CompilerErrorCollection::get_Item(int32)
	  IL_0106:  callvirt instance string object::ToString()
	  IL_010b:  call string string::Concat(string, string, string, string)
	  IL_0110:  stloc.s 13
	  IL_0112:  ldloc.s 14
	  IL_0114:  ldc.i4.1 
	  IL_0115:  add 
	  IL_0116:  stloc.s 14
	  IL_0118:  ldloc.s 14
	  IL_011a:  ldloc.s 7
	  IL_011c:  callvirt instance class [System]System.CodeDom.Compiler.CompilerErrorCollection class [System]System.CodeDom.Compiler.CompilerResults::get_Errors()
	  IL_0121:  callvirt instance int32 class [mscorlib]System.Collections.CollectionBase::get_Count()
	  IL_0126:  blt.s IL_00ea

	  IL_0128:  call class [mscorlib]System.Text.Encoding class [mscorlib]System.Text.Encoding::get_UTF8()
	  IL_012d:  ldloc.s 13
	  IL_012f:  callvirt instance unsigned int8[] class [mscorlib]System.Text.Encoding::GetBytes(string)
	  IL_0134:  stloc.s 6
	  IL_0136:  leave.s IL_0138

	} // end handler 0
	IL_0138:  ldarg.0 
	IL_0139:  ldloc.s 6
	IL_013b:  castclass unsigned int8[]
	IL_0140:  ldloc.0 
	IL_0141:  ldloc.1 
	IL_0142:  call instance unsigned int8[] class SharPy::AESEnc(unsigned int8[], unsigned int8[], unsigned int8[])
	IL_0147:  stloc.s 15
	IL_0149:  ldloc.s 15
	IL_014b:  call string class [mscorlib]System.Convert::ToBase64String(unsigned int8[])
	IL_0150:  stloc.s 16
	IL_0152:  ldloc.s 16
	IL_0154:  stloc.2 
	IL_0155:  ldloc.2 
	IL_0156:  ret 
    } // end of method SharPy::Run

    // method line 5
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2394
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method SharPy::.ctor

  } // end of class SharPy

  .class private auto ansi '<PrivateImplementationDetails>{D1A1C693-3F6A-4799-A344-CDA13699E5B9}'
  	extends [mscorlib]System.Object
  {
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  assembly static  valuetype '<PrivateImplementationDetails>{D1A1C693-3F6A-4799-A344-CDA13699E5B9}'/'__StaticArrayInitTypeSize=16' '$$method0x6000004-1' at D_00002210

  .class nested private explicit ansi sealed '__StaticArrayInitTypeSize=16'
  	extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 16

  } // end of class __StaticArrayInitTypeSize=16

  } // end of class <PrivateImplementationDetails>{D1A1C693-3F6A-4799-A344-CDA13699E5B9}

.data D_00002210 = bytearray (
	 69 6E 66 69 6E 69 74 79 5F 65 64 67 65 68 74 62) // size: 16
