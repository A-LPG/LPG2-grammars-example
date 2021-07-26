
    //#line 192 "java.g
// This method is part of an automatic generation : do NOT edit-modify
protected void consumeRule(int act) {
  switch ( act ) {
    case 40 : if (DEBUG) { System.out.println("Type ::= PrimitiveType"); }  //$NON-NLS-1$
		    consumePrimitiveType();  
			break;
 
    case 54 : if (DEBUG) { System.out.println("ReferenceType ::= ClassOrInterfaceType"); }  //-NLS-1
		    consumeReferenceType();  
			break;
 
    case 58 : if (DEBUG) { System.out.println("ClassOrInterface ::= Name"); }  //-NLS-1
		    consumeClassOrInterfaceName();  
			break;
 
    case 59 : if (DEBUG) { System.out.println("ClassOrInterface ::= GenericType . Name"); }  //-NLS-1
		    consumeClassOrInterface();  
			break;
 
    case 60 : if (DEBUG) { System.out.println("GenericType ::= ClassOrInterface TypeArguments"); }  //-NLS-1
		    consumeGenericType();  
			break;
 
    case 61 : if (DEBUG) { System.out.println("GenericType ::= ClassOrInterface < >"); }  //-NLS-1
		    consumeGenericTypeWithDiamond();  
			break;
 
    case 62 : if (DEBUG) { System.out.println("ArrayTypeWithTypeArgumentsName ::= GenericType . Name"); }  //-NLS-1
		    consumeArrayTypeWithTypeArgumentsName();  
			break;
 
    case 63 : if (DEBUG) { System.out.println("ArrayType ::= PrimitiveType Dims"); }  //-NLS-1
		    consumePrimitiveArrayType();  
			break;
 
    case 64 : if (DEBUG) { System.out.println("ArrayType ::= Name Dims"); }  //-NLS-1
		    consumeNameArrayType();  
			break;
 
    case 65 : if (DEBUG) { System.out.println("ArrayType ::= ArrayTypeWithTypeArgumentsName Dims"); }  //-NLS-1
		    consumeGenericTypeNameArrayType();  
			break;
 
    case 66 : if (DEBUG) { System.out.println("ArrayType ::= GenericType Dims"); }  //-NLS-1
		    consumeGenericTypeArrayType();  
			break;
 
    case 68 : if (DEBUG) { System.out.println("Name ::= SimpleName"); }  //-NLS-1
		    consumeZeroTypeAnnotations();  
			break;
 
    case 73 : if (DEBUG) { System.out.println("UnannotatableName ::= UnannotatableName . SimpleName"); }  //-NLS-1
		    consumeUnannotatableQualifiedName();  
			break;
 
    case 74 : if (DEBUG) { System.out.println("QualifiedName ::= Name . SimpleName"); }  //-NLS-1
		    consumeQualifiedName(false);  
			break;
 
    case 75 : if (DEBUG) { System.out.println("QualifiedName ::= Name . TypeAnnotations SimpleName"); }  //-NLS-1
		    consumeQualifiedName(true);  
			break;
 
    case 76 : if (DEBUG) { System.out.println("TypeAnnotationsopt ::= $Empty"); }  //-NLS-1
		    consumeZeroTypeAnnotations();  
			break;
 
     case 80 : if (DEBUG) { System.out.println("TypeAnnotations0 ::= TypeAnnotations0 TypeAnnotation"); }  //-NLS-1
		    consumeOneMoreTypeAnnotation();  
			break;
 
     case 81 : if (DEBUG) { System.out.println("TypeAnnotation ::= NormalTypeAnnotation"); }  //-NLS-1
		    consumeTypeAnnotation();  
			break;
 
     case 82 : if (DEBUG) { System.out.println("TypeAnnotation ::= MarkerTypeAnnotation"); }  //-NLS-1
		    consumeTypeAnnotation();  
			break;
 
     case 83 : if (DEBUG) { System.out.println("TypeAnnotation ::= SingleMemberTypeAnnotation"); }  //-NLS-1
		    consumeTypeAnnotation();  
			break;
 
    case 84 : if (DEBUG) { System.out.println("TypeAnnotationName ::= @308 UnannotatableName"); }  //-NLS-1
		    consumeAnnotationName() ;  
			break;
 
     case 85 : if (DEBUG) { System.out.println("NormalTypeAnnotation ::= TypeAnnotationName ( MemberValuePairsopt )"); }  //-NLS-1
		    consumeNormalAnnotation(true) ;  
			break;
 
    case 86 : if (DEBUG) { System.out.println("MarkerTypeAnnotation ::= TypeAnnotationName"); }  //-NLS-1
		    consumeMarkerAnnotation(true) ;  
			break;
 
    case 87 : if (DEBUG) { System.out.println("SingleMemberTypeAnnotation ::= TypeAnnotationName ( SingleMemberAnnotationMemberValue )"); }  //-NLS-1
		    consumeSingleMemberAnnotation(true) ;  
			break;
 
    case 88 : if (DEBUG) { System.out.println("RejectTypeAnnotations ::= $Empty"); }  //-NLS-1
		    consumeNonTypeUseName();  
			break;
 
    case 89 : if (DEBUG) { System.out.println("PushZeroTypeAnnotations ::= $Empty"); }  //-NLS-1
		    consumeZeroTypeAnnotations();  
			break;
 
    case 90 : if (DEBUG) { System.out.println("VariableDeclaratorIdOrThis ::= this"); }  //-NLS-1
		    consumeExplicitThisParameter(false);  
			break;
 
    case 91 : if (DEBUG) { System.out.println("VariableDeclaratorIdOrThis ::= UnannotatableName . this"); }  //-NLS-1
		    consumeExplicitThisParameter(true);  
			break;
 
    case 92 : if (DEBUG) { System.out.println("VariableDeclaratorIdOrThis ::= VariableDeclaratorId"); }  //-NLS-1
		    consumeVariableDeclaratorIdParameter();  
			break;
 
    case 93 : if (DEBUG) { System.out.println("CompilationUnit ::= EnterCompilationUnit InternalCompilationUnit"); }  //-NLS-1
		    consumeCompilationUnit();  
			break;
 
    case 94 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= PackageDeclaration"); }  //-NLS-1
		    consumeInternalCompilationUnit();  
			break;
 
    case 95 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= PackageDeclaration ImportDeclarations ReduceImports"); }  //-NLS-1
		    consumeInternalCompilationUnit();  
			break;
 
    case 96 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= PackageDeclaration ImportDeclarations ReduceImports TypeDeclarations"); }  //-NLS-1
		    consumeInternalCompilationUnitWithTypes();  
			break;
 
    case 97 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= PackageDeclaration TypeDeclarations"); }  //-NLS-1
		    consumeInternalCompilationUnitWithTypes();  
			break;
 
    case 98 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= ImportDeclarations ReduceImports"); }  //-NLS-1
		    consumeInternalCompilationUnit();  
			break;
 
    case 99 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= TypeDeclarations"); }  //-NLS-1
		    consumeInternalCompilationUnitWithTypes();  
			break;
 
    case 100 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= ImportDeclarations ReduceImports TypeDeclarations"); }  //-NLS-1
		    consumeInternalCompilationUnitWithTypes();  
			break;
 
    case 101 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= $Empty"); }  //-NLS-1
		    consumeEmptyInternalCompilationUnit();  
			break;
 
    case 102 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= ImportDeclarations ReduceImports ModuleDeclaration"); }  //-NLS-1
		    consumeInternalCompilationUnitWithModuleDeclaration();  
			break;
 
    case 103 : if (DEBUG) { System.out.println("InternalCompilationUnit ::= ModuleDeclaration"); }  //-NLS-1
		    consumeInternalCompilationUnitWithModuleDeclaration();  
			break;
 
    case 104 : if (DEBUG) { System.out.println("ModuleDeclaration ::= ModuleHeader ModuleBody"); }  //-NLS-1
		    consumeModuleDeclaration();  
			break;
 
    case 105 : if (DEBUG) { System.out.println("ModuleHeader ::= Modifiersopt ModuleModifieropt module UnannotatableName"); }  //-NLS-1
		    consumeModuleHeader();  
			break;
 
    case 107 : if (DEBUG) { System.out.println("ModuleModifieropt ::= ModuleModifier"); }  //-NLS-1
		    consumeModuleModifiers();  
			break;
 
    case 110 : if (DEBUG) { System.out.println("ModuleStatementsOpt ::= $Empty"); }  //-NLS-1
		    consumeEmptyModuleStatementsOpt();  
			break;
 
    case 113 : if (DEBUG) { System.out.println("ModuleStatements ::= ModuleStatements ModuleStatement"); }  //-NLS-1
		    consumeModuleStatements();  
			break;
 
    case 119 : if (DEBUG) { System.out.println("RequiresStatement ::= SingleRequiresModuleName ;"); }  //-NLS-1
		    consumeRequiresStatement();  
			break;
 
    case 120 : if (DEBUG) { System.out.println("SingleRequiresModuleName ::= requires RequiresModifiersopt UnannotatableName"); }  //-NLS-1
		    consumeSingleRequiresModuleName();  
			break;
 
    case 121 : if (DEBUG) { System.out.println("RequiresModifiersopt ::= RequiresModifiers"); }  //-NLS-1
		    consumeModifiers();  
			break;
 
    case 122 : if (DEBUG) { System.out.println("RequiresModifiersopt ::= $Empty"); }  //-NLS-1
		    consumeDefaultModifiers();  
			break;
 
    case 124 : if (DEBUG) { System.out.println("RequiresModifiers ::= RequiresModifiers RequiresModifier"); }  //-NLS-1
		    consumeModifiers2();  
			break;
 
    case 127 : if (DEBUG) { System.out.println("ExportsStatement ::= ExportsHeader TargetModuleListopt ;"); }  //-NLS-1
		    consumeExportsStatement();  
			break;
 
    case 128 : if (DEBUG) { System.out.println("ExportsHeader ::= exports SinglePkgName"); }  //-NLS-1
		    consumeExportsHeader();  
			break;
 
    case 130 : if (DEBUG) { System.out.println("TargetModuleListopt ::= to TargetModuleNameList"); }  //-NLS-1
		    consumeTargetModuleList();  
			break;
 
    case 131 : if (DEBUG) { System.out.println("TargetModuleName ::= UnannotatableName"); }  //-NLS-1
		    consumeSingleTargetModuleName();  
			break;
 
    case 133 : if (DEBUG) { System.out.println("TargetModuleNameList ::= TargetModuleNameList , TargetModuleName"); }  //-NLS-1
		    consumeTargetModuleNameList();  
			break;
 
    case 134 : if (DEBUG) { System.out.println("SinglePkgName ::= UnannotatableName"); }  //-NLS-1
		    consumeSinglePkgName();  
			break;
 
    case 135 : if (DEBUG) { System.out.println("OpensStatement ::= OpensHeader TargetModuleListopt ;"); }  //-NLS-1
		    consumeOpensStatement();  
			break;
 
    case 136 : if (DEBUG) { System.out.println("OpensHeader ::= opens SinglePkgName"); }  //-NLS-1
		    consumeOpensHeader();  
			break;
 
    case 137 : if (DEBUG) { System.out.println("UsesStatement ::= UsesHeader ;"); }  //-NLS-1
		    consumeUsesStatement();  
			break;
 
    case 138 : if (DEBUG) { System.out.println("UsesHeader ::= uses Name"); }  //-NLS-1
		    consumeUsesHeader();  
			break;
 
    case 139 : if (DEBUG) { System.out.println("ProvidesStatement ::= ProvidesInterface WithClause ;"); }  //-NLS-1
		    consumeProvidesStatement();  
			break;
 
    case 140 : if (DEBUG) { System.out.println("ProvidesInterface ::= provides Name"); }  //-NLS-1
		    consumeProvidesInterface();  
			break;
 
    case 141 : if (DEBUG) { System.out.println("ServiceImplName ::= Name"); }  //-NLS-1
		    consumeSingleServiceImplName();  
			break;
 
    case 143 : if (DEBUG) { System.out.println("ServiceImplNameList ::= ServiceImplNameList , ServiceImplName"); }  //-NLS-1
		    consumeServiceImplNameList();  
			break;
 
    case 144 : if (DEBUG) { System.out.println("WithClause ::= with ServiceImplNameList"); }  //-NLS-1
		    consumeWithClause();  
			break;
 
    case 145 : if (DEBUG) { System.out.println("ReduceImports ::= $Empty"); }  //-NLS-1
		    consumeReduceImports();  
			break;
 
    case 146 : if (DEBUG) { System.out.println("EnterCompilationUnit ::= $Empty"); }  //-NLS-1
		    consumeEnterCompilationUnit();  
			break;
 
    case 169 : if (DEBUG) { System.out.println("CatchHeader ::= catch ( CatchFormalParameter ) {"); }  //-NLS-1
		    consumeCatchHeader();  
			break;
 
    case 171 : if (DEBUG) { System.out.println("ImportDeclarations ::= ImportDeclarations ImportDeclaration"); }  //-NLS-1
		    consumeImportDeclarations();  
			break;
 
    case 173 : if (DEBUG) { System.out.println("TypeDeclarations ::= TypeDeclarations TypeDeclaration"); }  //-NLS-1
		    consumeTypeDeclarations();  
			break;
 
    case 174 : if (DEBUG) { System.out.println("PackageDeclaration ::= PackageDeclarationName ;"); }  //-NLS-1
		    consumePackageDeclaration();  
			break;
 
    case 175 : if (DEBUG) { System.out.println("PackageDeclarationName ::= Modifiers package PushRealModifiers Name RejectTypeAnnotations"); }  //-NLS-1
		    consumePackageDeclarationNameWithModifiers();  
			break;
 
    case 176 : if (DEBUG) { System.out.println("PackageDeclarationName ::= PackageComment package Name RejectTypeAnnotations"); }  //-NLS-1
		    consumePackageDeclarationName();  
			break;
 
    case 177 : if (DEBUG) { System.out.println("PackageComment ::= $Empty"); }  //-NLS-1
		    consumePackageComment();  
			break;
 
    case 182 : if (DEBUG) { System.out.println("SingleTypeImportDeclaration ::= SingleTypeImportDeclarationName ;"); }  //-NLS-1
		    consumeImportDeclaration();  
			break;
 
    case 183 : if (DEBUG) { System.out.println("SingleTypeImportDeclarationName ::= import Name RejectTypeAnnotations"); }  //-NLS-1
		    consumeSingleTypeImportDeclarationName();  
			break;
 
    case 184 : if (DEBUG) { System.out.println("TypeImportOnDemandDeclaration ::= TypeImportOnDemandDeclarationName ;"); }  //-NLS-1
		    consumeImportDeclaration();  
			break;
 
    case 185 : if (DEBUG) { System.out.println("TypeImportOnDemandDeclarationName ::= import Name . RejectTypeAnnotations *"); }  //-NLS-1
		    consumeTypeImportOnDemandDeclarationName();  
			break;
 
     case 188 : if (DEBUG) { System.out.println("TypeDeclaration ::= ;"); }  //-NLS-1
		    consumeEmptyTypeDeclaration();  
			break;
 
    case 193 : if (DEBUG) { System.out.println("Modifiers ::= Modifiers Modifier"); }  //-NLS-1
		    consumeModifiers2();  
			break;
 
    case 207 : if (DEBUG) { System.out.println("Modifier ::= Annotation"); }  //-NLS-1
		    consumeAnnotationAsModifier();  
			break;
 
    case 208 : if (DEBUG) { System.out.println("ClassDeclaration ::= ClassHeader ClassBody"); }  //-NLS-1
		    consumeClassDeclaration();  
			break;
 
    case 209 : if (DEBUG) { System.out.println("ClassHeader ::= ClassHeaderName ClassHeaderExtendsopt ClassHeaderImplementsopt ClassHeaderPermittedSubclassesopt"); }  //-NLS-1
		    consumeClassHeader();  
			break;
 
    case 210 : if (DEBUG) { System.out.println("ClassHeaderName ::= ClassHeaderName1 TypeParameters"); }  //-NLS-1
		    consumeTypeHeaderNameWithTypeParameters();  
			break;
 
    case 212 : if (DEBUG) { System.out.println("ClassHeaderName1 ::= Modifiersopt class Identifier"); }  //-NLS-1
		    consumeClassHeaderName1();  
			break;
 
    case 213 : if (DEBUG) { System.out.println("ClassHeaderExtends ::= extends ClassType"); }  //-NLS-1
		    consumeClassHeaderExtends();  
			break;
 
    case 214 : if (DEBUG) { System.out.println("ClassHeaderImplements ::= implements InterfaceTypeList"); }  //-NLS-1
		    consumeClassHeaderImplements();  
			break;
 
    case 216 : if (DEBUG) { System.out.println("InterfaceTypeList ::= InterfaceTypeList , InterfaceType"); }  //-NLS-1
		    consumeInterfaceTypeList();  
			break;
 
    case 217 : if (DEBUG) { System.out.println("InterfaceType ::= ClassOrInterfaceType"); }  //-NLS-1
		    consumeInterfaceType();  
			break;
 
    case 220 : if (DEBUG) { System.out.println("ClassBodyDeclarations ::= ClassBodyDeclarations ClassBodyDeclaration"); }  //-NLS-1
		    consumeClassBodyDeclarations();  
			break;
 
    case 224 : if (DEBUG) { System.out.println("ClassBodyDeclaration ::= Diet NestedMethod CreateInitializer Block"); }  //-NLS-1
		    consumeClassBodyDeclaration();  
			break;
 
    case 225 : if (DEBUG) { System.out.println("Diet ::= $Empty"); }  //-NLS-1
		    consumeDiet();  
			break;

    case 226 : if (DEBUG) { System.out.println("Initializer ::= Diet NestedMethod CreateInitializer Block"); }  //-NLS-1
		    consumeClassBodyDeclaration();  
			break;
 
    case 227 : if (DEBUG) { System.out.println("CreateInitializer ::= $Empty"); }  //-NLS-1
		    consumeCreateInitializer();  
			break;

    case 235 : if (DEBUG) { System.out.println("ClassMemberDeclaration ::= ;"); }  //-NLS-1
		    consumeEmptyTypeDeclaration();  
			break;

    case 238 : if (DEBUG) { System.out.println("FieldDeclaration ::= Modifiersopt Type VariableDeclarators ;"); }  //-NLS-1
		    consumeFieldDeclaration();  
			break;
 
    case 240 : if (DEBUG) { System.out.println("VariableDeclarators ::= VariableDeclarators , VariableDeclarator"); }  //-NLS-1
		    consumeVariableDeclarators();  
			break;
 
    case 243 : if (DEBUG) { System.out.println("EnterVariable ::= $Empty"); }  //-NLS-1
		    consumeEnterVariable();  
			break;
 
    case 244 : if (DEBUG) { System.out.println("ExitVariableWithInitialization ::= $Empty"); }  //-NLS-1
		    consumeExitVariableWithInitialization();  
			break;
 
    case 245 : if (DEBUG) { System.out.println("ExitVariableWithoutInitialization ::= $Empty"); }  //-NLS-1
		    consumeExitVariableWithoutInitialization();  
			break;
 
    case 246 : if (DEBUG) { System.out.println("ForceNoDiet ::= $Empty"); }  //-NLS-1
		    consumeForceNoDiet();  
			break;
 
    case 247 : if (DEBUG) { System.out.println("RestoreDiet ::= $Empty"); }  //-NLS-1
		    consumeRestoreDiet();  
			break;
 
    case 252 : if (DEBUG) { System.out.println("MethodDeclaration ::= MethodHeader MethodBody"); }  //-NLS-1
		    // set to true to consume a method with a body
 consumeMethodDeclaration(true, false);  
			break;
     case 253 : if (DEBUG) { System.out.println("MethodDeclaration ::= DefaultMethodHeader MethodBody"); }  //-NLS-1
		    // set to true to consume a method with a body
 consumeMethodDeclaration(true, true);  
			break;
     case 254 : if (DEBUG) { System.out.println("AbstractMethodDeclaration ::= MethodHeader ;"); }  //-NLS-1
		    // set to false to consume a method without body
 consumeMethodDeclaration(false, false);  
			break;
     case 255 : if (DEBUG) { System.out.println("MethodHeader ::= MethodHeaderName FormalParameterListopt MethodHeaderRightParen MethodHeaderExtendedDims MethodHeaderThrowsClauseopt"); }  //-NLS-1
		    consumeMethodHeader();  
			break;
 
    case 256 : if (DEBUG) { System.out.println("DefaultMethodHeader ::= DefaultMethodHeaderName FormalParameterListopt MethodHeaderRightParen MethodHeaderExtendedDims MethodHeaderThrowsClauseopt"); }  //-NLS-1
		    consumeMethodHeader();  
			break;
 
    case 257 : if (DEBUG) { System.out.println("MethodHeaderName ::= Modifiersopt TypeParameters Type Identifier ("); }  //-NLS-1
		    consumeMethodHeaderNameWithTypeParameters(false);  
			break;
 
    case 258 : if (DEBUG) { System.out.println("MethodHeaderName ::= Modifiersopt Type Identifier ("); }  //-NLS-1
		    consumeMethodHeaderName(false);  
			break;
 
    case 259 : if (DEBUG) { System.out.println("DefaultMethodHeaderName ::= ModifiersWithDefault TypeParameters Type Identifier ("); }  //-NLS-1
		    consumeMethodHeaderNameWithTypeParameters(false);  
			break;
 
    case 260 : if (DEBUG) { System.out.println("DefaultMethodHeaderName ::= ModifiersWithDefault Type Identifier ("); }  //-NLS-1
		    consumeMethodHeaderName(false);  
			break;
 
    case 261 : if (DEBUG) { System.out.println("ModifiersWithDefault ::= Modifiersopt default Modifiersopt"); }  //-NLS-1
		    consumePushCombineModifiers();  
			break;
 
    case 262 : if (DEBUG) { System.out.println("MethodHeaderRightParen ::= )"); }  //-NLS-1
		    consumeMethodHeaderRightParen();  
			break;
 
    case 263 : if (DEBUG) { System.out.println("MethodHeaderExtendedDims ::= Dimsopt"); }  //-NLS-1
		    consumeMethodHeaderExtendedDims();  
			break;
 
    case 264 : if (DEBUG) { System.out.println("MethodHeaderThrowsClause ::= throws ClassTypeList"); }  //-NLS-1
		    consumeMethodHeaderThrowsClause();  
			break;
 
    case 265 : if (DEBUG) { System.out.println("ConstructorHeader ::= ConstructorHeaderName FormalParameterListopt MethodHeaderRightParen MethodHeaderThrowsClauseopt"); }  //-NLS-1
		    consumeConstructorHeader();  
			break;
 
    case 266 : if (DEBUG) { System.out.println("ConstructorHeaderName ::= Modifiersopt TypeParameters Identifier ("); }  //-NLS-1
		    consumeConstructorHeaderNameWithTypeParameters();  
			break;
 
    case 267 : if (DEBUG) { System.out.println("ConstructorHeaderName ::= Modifiersopt Identifier ("); }  //-NLS-1
		    consumeConstructorHeaderName();  
			break;
 
    case 269 : if (DEBUG) { System.out.println("FormalParameterList ::= FormalParameterList , FormalParameter"); }  //-NLS-1
		    consumeFormalParameterList();  
			break;
 
    case 270 : if (DEBUG) { System.out.println("FormalParameter ::= Modifiersopt Type VariableDeclaratorIdOrThis"); }  //-NLS-1
		    consumeFormalParameter(false);  
			break;
 
    case 271 : if (DEBUG) { System.out.println("FormalParameter ::= Modifiersopt Type PushZeroTypeAnnotations ... VariableDeclaratorIdOrThis"); }  //-NLS-1
		    consumeFormalParameter(true);  
			break;
 
    case 272 : if (DEBUG) { System.out.println("FormalParameter ::= Modifiersopt Type @308... TypeAnnotations ... VariableDeclaratorIdOrThis"); }  //-NLS-1
		    consumeFormalParameter(true);  
			break;
 
    case 273 : if (DEBUG) { System.out.println("CatchFormalParameter ::= Modifiersopt CatchType VariableDeclaratorId"); }  //-NLS-1
		    consumeCatchFormalParameter();  
			break;
 
    case 274 : if (DEBUG) { System.out.println("CatchType ::= UnionType"); }  //-NLS-1
		    consumeCatchType();  
			break;
 
    case 275 : if (DEBUG) { System.out.println("UnionType ::= Type"); }  //-NLS-1
		    consumeUnionTypeAsClassType();  
			break;
 
    case 276 : if (DEBUG) { System.out.println("UnionType ::= UnionType | Type"); }  //-NLS-1
		    consumeUnionType();  
			break;
 
    case 278 : if (DEBUG) { System.out.println("ClassTypeList ::= ClassTypeList , ClassTypeElt"); }  //-NLS-1
		    consumeClassTypeList();  
			break;
 
    case 279 : if (DEBUG) { System.out.println("ClassTypeElt ::= ClassType"); }  //-NLS-1
		    consumeClassTypeElt();  
			break;
 
    case 280 : if (DEBUG) { System.out.println("MethodBody ::= NestedMethod { BlockStatementsopt }"); }  //-NLS-1
		    consumeMethodBody();  
			break;
 
    case 281 : if (DEBUG) { System.out.println("NestedMethod ::= $Empty"); }  //-NLS-1
		    consumeNestedMethod();  
			break;
 
    case 282 : if (DEBUG) { System.out.println("StaticInitializer ::= StaticOnly Block"); }  //-NLS-1
		    consumeStaticInitializer();  
			break;

    case 283 : if (DEBUG) { System.out.println("StaticOnly ::= static"); }  //-NLS-1
		    consumeStaticOnly();  
			break;
 
    case 284 : if (DEBUG) { System.out.println("ConstructorDeclaration ::= ConstructorHeader MethodBody"); }  //-NLS-1
		    consumeConstructorDeclaration() ;  
			break;
 
    case 285 : if (DEBUG) { System.out.println("ConstructorDeclaration ::= ConstructorHeader ;"); }  //-NLS-1
		    consumeInvalidConstructorDeclaration() ;  
			break;
 
    case 286 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= this ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocation(0, THIS_CALL);  
			break;
 
    case 287 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= OnlyTypeArguments this ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocationWithTypeArguments(0,THIS_CALL);  
			break;
 
    case 288 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= super ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocation(0,SUPER_CALL);  
			break;
 
    case 289 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= OnlyTypeArguments super ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocationWithTypeArguments(0,SUPER_CALL);  
			break;
 
    case 290 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= Primary . super ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocation(1, SUPER_CALL);  
			break;
 
    case 291 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= Primary . OnlyTypeArguments super ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocationWithTypeArguments(1, SUPER_CALL);  
			break;
 
    case 292 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= Name . super ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocation(2, SUPER_CALL);  
			break;
 
    case 293 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= Name . OnlyTypeArguments super ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocationWithTypeArguments(2, SUPER_CALL);  
			break;
 
    case 294 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= Primary . this ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocation(1, THIS_CALL);  
			break;
 
    case 295 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= Primary . OnlyTypeArguments this ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocationWithTypeArguments(1, THIS_CALL);  
			break;
 
    case 296 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= Name . this ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocation(2, THIS_CALL);  
			break;
 
    case 297 : if (DEBUG) { System.out.println("ExplicitConstructorInvocation ::= Name . OnlyTypeArguments this ( ArgumentListopt ) ;"); }  //-NLS-1
		    consumeExplicitConstructorInvocationWithTypeArguments(2, THIS_CALL);  
			break;
 
    case 298 : if (DEBUG) { System.out.println("InterfaceDeclaration ::= InterfaceHeader InterfaceBody"); }  //-NLS-1
		    consumeInterfaceDeclaration();  
			break;
 
    case 299 : if (DEBUG) { System.out.println("InterfaceHeader ::= InterfaceHeaderName InterfaceHeaderExtendsopt InterfaceHeaderPermittedSubClassesAndSubInterfacesopt"); }  //-NLS-1
		    consumeInterfaceHeader();  
			break;
 
    case 300 : if (DEBUG) { System.out.println("InterfaceHeaderName ::= InterfaceHeaderName1 TypeParameters"); }  //-NLS-1
		    consumeTypeHeaderNameWithTypeParameters();  
			break;
 
    case 302 : if (DEBUG) { System.out.println("InterfaceHeaderName1 ::= Modifiersopt interface Identifier"); }  //-NLS-1
		    consumeInterfaceHeaderName1();  
			break;
 
    case 303 : if (DEBUG) { System.out.println("InterfaceHeaderExtends ::= extends InterfaceTypeList"); }  //-NLS-1
		    consumeInterfaceHeaderExtends();  
			break;
 
    case 306 : if (DEBUG) { System.out.println("InterfaceMemberDeclarations ::= InterfaceMemberDeclarations InterfaceMemberDeclaration"); }  //-NLS-1
		    consumeInterfaceMemberDeclarations();  
			break;
 
    case 307 : if (DEBUG) { System.out.println("InterfaceMemberDeclaration ::= ;"); }  //-NLS-1
		    consumeEmptyTypeDeclaration();  
			break;
 
    case 309 : if (DEBUG) { System.out.println("InterfaceMemberDeclaration ::= DefaultMethodHeader MethodBody"); }  //-NLS-1
		    consumeInterfaceMethodDeclaration(false);  
			break;
 
    case 310 : if (DEBUG) { System.out.println("InterfaceMemberDeclaration ::= MethodHeader MethodBody"); }  //-NLS-1
		    consumeInterfaceMethodDeclaration(false);  
			break;
 
    case 311 : if (DEBUG) { System.out.println("InterfaceMemberDeclaration ::= DefaultMethodHeader ;"); }  //-NLS-1
		    consumeInterfaceMethodDeclaration(true);  
			break;
 
    case 312 : if (DEBUG) { System.out.println("InvalidConstructorDeclaration ::= ConstructorHeader MethodBody"); }  //-NLS-1
		    consumeInvalidConstructorDeclaration(true);  
			break;
 
    case 313 : if (DEBUG) { System.out.println("InvalidConstructorDeclaration ::= ConstructorHeader ;"); }  //-NLS-1
		    consumeInvalidConstructorDeclaration(false);  
			break;
 
    case 324 : if (DEBUG) { System.out.println("RecordDeclaration ::= RecordHeaderPart RecordBody"); }  //-NLS-1
		    consumeRecordDeclaration();  
			break;
 
    case 325 : if (DEBUG) { System.out.println("RecordHeaderPart ::= RecordHeaderName RecordHeader ClassHeaderImplementsopt"); }  //-NLS-1
		    consumeRecordHeaderPart();  
			break;
 
    case 326 : if (DEBUG) { System.out.println("RecordHeaderName ::= RecordHeaderName1 TypeParameters"); }  //-NLS-1
		    consumeRecordHeaderNameWithTypeParameters();  
			break;
 
    case 328 : if (DEBUG) { System.out.println("RecordHeaderName1 ::= Modifiersopt RestrictedIdentifierrecord Identifier"); }  //-NLS-1
		    consumeRecordHeaderName1();  
			break;
 
    case 329 : if (DEBUG) { System.out.println("RecordComponentHeaderRightParen ::= )"); }  //-NLS-1
		    consumeRecordComponentHeaderRightParen();  
			break;
 
    case 330 : if (DEBUG) { System.out.println("RecordHeader ::= ( RecordComponentsopt RecordComponentHeaderRightParen"); }  //-NLS-1
		    consumeRecordHeader();  
			break;
 
    case 331 : if (DEBUG) { System.out.println("RecordComponentsopt ::= $Empty"); }  //-NLS-1
		    consumeRecordComponentsopt();  
			break;
 
    case 334 : if (DEBUG) { System.out.println("RecordComponents ::= RecordComponents , RecordComponent"); }  //-NLS-1
		    consumeRecordComponents();  
			break;
 
    case 336 : if (DEBUG) { System.out.println("RecordComponent ::= Modifiersopt Type VariableDeclaratorId"); }  //-NLS-1
		    consumeRecordComponent(false);  
			break;
 
    case 337 : if (DEBUG) { System.out.println("VariableArityRecordComponent ::= Modifiersopt Type PushZeroTypeAnnotations ... VariableDeclaratorId"); }  //-NLS-1
		    consumeRecordComponent(true);  
			break;
 
    case 338 : if (DEBUG) { System.out.println("VariableArityRecordComponent ::= Modifiersopt Type @308... TypeAnnotations ... VariableDeclaratorId"); }  //-NLS-1
		    consumeRecordComponent(true);  
			break;
 
    case 339 : if (DEBUG) { System.out.println("RecordBody ::= { RecordBodyDeclarationopt }"); }  //-NLS-1
		    consumeRecordBody();  
			break;
 
    case 340 : if (DEBUG) { System.out.println("RecordBodyDeclarationopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyRecordBodyDeclaration();  
			break;
 
    case 343 : if (DEBUG) { System.out.println("RecordBodyDeclarations ::= RecordBodyDeclarations RecordBodyDeclaration"); }  //-NLS-1
		    consumeRecordBodyDeclarations();  
			break;
 
    case 344 : if (DEBUG) { System.out.println("RecordBodyDeclaration ::= ClassBodyDeclaration"); }  //-NLS-1
		    consumeRecordBodyDeclaration();  
			break;
 
    case 345 : if (DEBUG) { System.out.println("RecordBodyDeclaration ::= CompactConstructorDeclaration"); }  //-NLS-1
		    consumeRecordBodyDeclaration();  
			break;
 
    case 346 : if (DEBUG) { System.out.println("CompactConstructorDeclaration ::= CompactConstructorHeader MethodBody"); }  //-NLS-1
		    consumeCompactConstructorDeclaration();  
			break;
 
    case 347 : if (DEBUG) { System.out.println("CompactConstructorHeader ::= CompactConstructorHeaderName MethodHeaderThrowsClauseopt"); }  //-NLS-1
		    consumeCompactConstructorHeader();  
			break;
 
    case 348 : if (DEBUG) { System.out.println("CompactConstructorHeaderName ::= Modifiersopt Identifier"); }  //-NLS-1
		    consumeCompactConstructorHeaderName();  
			break;
 
    case 349 : if (DEBUG) { System.out.println("CompactConstructorHeaderName ::= Modifiersopt TypeParameters Identifier"); }  //-NLS-1
		    consumeCompactConstructorHeaderNameWithTypeParameters();  
			break;
 
    case 351 : if (DEBUG) { System.out.println("InstanceofExpression ::= InstanceofExpression InstanceofRHS"); }  //-NLS-1
		    consumeInstanceOfExpression();  
			break;
 
    case 353 : if (DEBUG) { System.out.println("InstanceofRHS -> InstanceofPattern"); }  //-NLS-1
		    consumeInstanceOfRHS();  
			break;
 
    case 354 : if (DEBUG) { System.out.println("InstanceofClassic ::= instanceof Modifiersopt Type"); }  //-NLS-1
		    consumeInstanceOfClassic();  
			break;
 
    case 355 : if (DEBUG) { System.out.println("InstanceofPattern ::= InstanceofClassic Identifier"); }  //-NLS-1
		    consumeInstanceofPattern();  
			break;
 
    case 357 : if (DEBUG) { System.out.println("PushLeftBrace ::= $Empty"); }  //-NLS-1
		    consumePushLeftBrace();  
			break;
 
    case 358 : if (DEBUG) { System.out.println("ArrayInitializer ::= { PushLeftBrace ,opt }"); }  //-NLS-1
		    consumeEmptyArrayInitializer();  
			break;
 
    case 359 : if (DEBUG) { System.out.println("ArrayInitializer ::= { PushLeftBrace VariableInitializers }"); }  //-NLS-1
		    consumeArrayInitializer();  
			break;
 
    case 360 : if (DEBUG) { System.out.println("ArrayInitializer ::= { PushLeftBrace VariableInitializers , }"); }  //-NLS-1
		    consumeArrayInitializer();  
			break;
 
    case 362 : if (DEBUG) { System.out.println("VariableInitializers ::= VariableInitializers , VariableInitializer"); }  //-NLS-1
		    consumeVariableInitializers();  
			break;
 
    case 363 : if (DEBUG) { System.out.println("Block ::= OpenBlock { BlockStatementsopt }"); }  //-NLS-1
		    consumeBlock();  
			break;
 
    case 364 : if (DEBUG) { System.out.println("OpenBlock ::= $Empty"); }  //-NLS-1
		    consumeOpenBlock() ;  
			break;
 
    case 365 : if (DEBUG) { System.out.println("BlockStatements ::= BlockStatement"); }  //-NLS-1
		    consumeBlockStatement() ;  
			break;
 
    case 366 : if (DEBUG) { System.out.println("BlockStatements ::= BlockStatements BlockStatement"); }  //-NLS-1
		    consumeBlockStatements() ;  
			break;
 
    case 374 : if (DEBUG) { System.out.println("BlockStatement ::= InterfaceDeclaration"); }  //-NLS-1
		    consumeInvalidInterfaceDeclaration();  
			break;
 
    case 375 : if (DEBUG) { System.out.println("BlockStatement ::= AnnotationTypeDeclaration"); }  //-NLS-1
		    consumeInvalidAnnotationTypeDeclaration();  
			break;
 
    case 376 : if (DEBUG) { System.out.println("BlockStatement ::= EnumDeclaration"); }  //-NLS-1
		    consumeInvalidEnumDeclaration();  
			break;
 
    case 377 : if (DEBUG) { System.out.println("LocalVariableDeclarationStatement ::= LocalVariableDeclaration ;"); }  //-NLS-1
		    consumeLocalVariableDeclarationStatement();  
			break;
 
    case 378 : if (DEBUG) { System.out.println("LocalVariableDeclaration ::= Type PushModifiers VariableDeclarators"); }  //-NLS-1
		    consumeLocalVariableDeclaration();  
			break;
 
    case 379 : if (DEBUG) { System.out.println("LocalVariableDeclaration ::= Modifiers Type PushRealModifiers VariableDeclarators"); }  //-NLS-1
		    consumeLocalVariableDeclaration();  
			break;
 
    case 380 : if (DEBUG) { System.out.println("PushModifiers ::= $Empty"); }  //-NLS-1
		    consumePushModifiers();  
			break;
 
    case 381 : if (DEBUG) { System.out.println("PushModifiersForHeader ::= $Empty"); }  //-NLS-1
		    consumePushModifiersForHeader();  
			break;
 
    case 382 : if (DEBUG) { System.out.println("PushRealModifiers ::= $Empty"); }  //-NLS-1
		    consumePushRealModifiers();  
			break;
 
    case 410 : if (DEBUG) { System.out.println("EmptyStatement ::= ;"); }  //-NLS-1
		    consumeEmptyStatement();  
			break;
 
    case 411 : if (DEBUG) { System.out.println("LabeledStatement ::= Label : Statement"); }  //-NLS-1
		    consumeStatementLabel() ;  
			break;
 
    case 412 : if (DEBUG) { System.out.println("LabeledStatementNoShortIf ::= Label : StatementNoShortIf"); }  //-NLS-1
		    consumeStatementLabel() ;  
			break;
 
    case 413 : if (DEBUG) { System.out.println("Label ::= Identifier"); }  //-NLS-1
		    consumeLabel() ;  
			break;
 
     case 414 : if (DEBUG) { System.out.println("ExpressionStatement ::= StatementExpression ;"); }  //-NLS-1
		    consumeExpressionStatement();  
			break;
 
    case 423 : if (DEBUG) { System.out.println("IfThenStatement ::= if ( Expression ) Statement"); }  //-NLS-1
		    consumeStatementIfNoElse();  
			break;
 
    case 424 : if (DEBUG) { System.out.println("IfThenElseStatement ::= if ( Expression ) StatementNoShortIf else Statement"); }  //-NLS-1
		    consumeStatementIfWithElse();  
			break;
 
    case 425 : if (DEBUG) { System.out.println("IfThenElseStatementNoShortIf ::= if ( Expression ) StatementNoShortIf else StatementNoShortIf"); }  //-NLS-1
		    consumeStatementIfWithElse();  
			break;
 
    case 426 : if (DEBUG) { System.out.println("SwitchStatement ::= switch ( Expression ) OpenBlock SwitchBlock"); }  //-NLS-1
		    consumeStatementSwitch() ;  
			break;
 
    case 427 : if (DEBUG) { System.out.println("SwitchBlock ::= { }"); }  //-NLS-1
		    consumeEmptySwitchBlock() ;  
			break;
 
    case 430 : if (DEBUG) { System.out.println("SwitchBlock ::= { SwitchBlockStatements SwitchLabels }"); }  //-NLS-1
		    consumeSwitchBlock() ;  
			break;
 
    case 432 : if (DEBUG) { System.out.println("SwitchBlockStatements ::= SwitchBlockStatements SwitchBlockStatement"); }  //-NLS-1
		    consumeSwitchBlockStatements() ;  
			break;
 
    case 434 : if (DEBUG) { System.out.println("SwitchBlockStatement ::= SwitchLabels BlockStatements"); }  //-NLS-1
		    consumeSwitchBlockStatement() ;  
			break;
 
    case 436 : if (DEBUG) { System.out.println("SwitchLabels ::= SwitchLabels SwitchLabel"); }  //-NLS-1
		    consumeSwitchLabels() ;  
			break;
 
     case 437 : if (DEBUG) { System.out.println("SwitchLabel ::= SwitchLabelCaseLhs :"); }  //-NLS-1
		    consumeCaseLabel();  
			break;
 
     case 438 : if (DEBUG) { System.out.println("SwitchLabel ::= default :"); }  //-NLS-1
		    consumeDefaultLabel();  
			break;
 
    case 441 : if (DEBUG) { System.out.println("SwitchExpression ::= switch ( Expression ) OpenBlock SwitchBlock"); }  //-NLS-1
		    consumeSwitchExpression() ;  
			break;
 
     case 444 : if (DEBUG) { System.out.println("SwitchLabeledRule ::= SwitchLabeledThrowStatement"); }  //-NLS-1
		    consumeSwitchLabeledRule();  
			break;
 
     case 445 : if (DEBUG) { System.out.println("SwitchLabeledExpression ::= SwitchLabelExpr Expression ;"); }  //-NLS-1
		    consumeSwitchLabeledExpression();  
			break;
 
     case 446 : if (DEBUG) { System.out.println("SwitchLabeledBlock ::= SwitchLabelExpr Block"); }  //-NLS-1
		    consumeSwitchLabeledBlock();  
			break;
 
     case 447 : if (DEBUG) { System.out.println("SwitchLabeledThrowStatement ::= SwitchLabelExpr ThrowExpression ;"); }  //-NLS-1
		    consumeSwitchLabeledThrowStatement();  
			break;
 
     case 448 : if (DEBUG) { System.out.println("SwitchLabelExpr ::= default ->"); }  //-NLS-1
		    consumeDefaultLabelExpr();  
			break;
 
     case 449 : if (DEBUG) { System.out.println("SwitchLabelExpr ::= SwitchLabelCaseLhs BeginCaseExpr ->"); }  //-NLS-1
		    consumeCaseLabelExpr();  
			break;
 
     case 450 : if (DEBUG) { System.out.println("SwitchLabelCaseLhs ::= case ConstantExpressions"); }  //-NLS-1
		    consumeSwitchLabelCaseLhs();  
			break;
 
    case 451 : if (DEBUG) { System.out.println("YieldStatement ::= RestrictedIdentifierYield Expression ;"); }  //-NLS-1
		    consumeStatementYield() ;  
			break;
 
    case 452 : if (DEBUG) { System.out.println("WhileStatement ::= while ( Expression ) Statement"); }  //-NLS-1
		    consumeStatementWhile() ;  
			break;
 
    case 453 : if (DEBUG) { System.out.println("WhileStatementNoShortIf ::= while ( Expression ) StatementNoShortIf"); }  //-NLS-1
		    consumeStatementWhile() ;  
			break;
 
    case 454 : if (DEBUG) { System.out.println("DoStatement ::= do Statement while ( Expression ) ;"); }  //-NLS-1
		    consumeStatementDo() ;  
			break;
 
    case 455 : if (DEBUG) { System.out.println("ForStatement ::= for ( ForInitopt ; Expressionopt ; ForUpdateopt ) Statement"); }  //-NLS-1
		    consumeStatementFor() ;  
			break;
 
    case 456 : if (DEBUG) { System.out.println("ForStatementNoShortIf ::= for ( ForInitopt ; Expressionopt ; ForUpdateopt ) StatementNoShortIf"); }  //-NLS-1
		    consumeStatementFor() ;  
			break;
 
    case 457 : if (DEBUG) { System.out.println("ForInit ::= StatementExpressionList"); }  //-NLS-1
		    consumeForInit() ;  
			break;
 
    case 461 : if (DEBUG) { System.out.println("StatementExpressionList ::= StatementExpressionList , StatementExpression"); }  //-NLS-1
		    consumeStatementExpressionList() ;  
			break;
 
    case 462 : if (DEBUG) { System.out.println("AssertStatement ::= assert Expression ;"); }  //-NLS-1
		    consumeSimpleAssertStatement() ;  
			break;
 
    case 463 : if (DEBUG) { System.out.println("AssertStatement ::= assert Expression : Expression ;"); }  //-NLS-1
		    consumeAssertStatement() ;  
			break;
 
    case 464 : if (DEBUG) { System.out.println("BreakStatement ::= break ;"); }  //-NLS-1
		    consumeStatementBreak() ;  
			break;
 
    case 465 : if (DEBUG) { System.out.println("BreakStatement ::= break Identifier ;"); }  //-NLS-1
		    consumeStatementBreakWithLabel() ;  
			break;
 
    case 466 : if (DEBUG) { System.out.println("ContinueStatement ::= continue ;"); }  //-NLS-1
		    consumeStatementContinue() ;  
			break;
 
    case 467 : if (DEBUG) { System.out.println("ContinueStatement ::= continue Identifier ;"); }  //-NLS-1
		    consumeStatementContinueWithLabel() ;  
			break;
 
    case 468 : if (DEBUG) { System.out.println("ReturnStatement ::= return Expressionopt ;"); }  //-NLS-1
		    consumeStatementReturn() ;  
			break;
 
    case 469 : if (DEBUG) { System.out.println("ThrowStatement ::= throw Expression ;"); }  //-NLS-1
		    consumeStatementThrow();  
			break;
 
    case 470 : if (DEBUG) { System.out.println("ThrowExpression ::= throw Expression"); }  //-NLS-1
		    consumeThrowExpression() ;  
			break;
 
    case 471 : if (DEBUG) { System.out.println("SynchronizedStatement ::= OnlySynchronized ( Expression ) Block"); }  //-NLS-1
		    consumeStatementSynchronized();  
			break;
 
    case 472 : if (DEBUG) { System.out.println("OnlySynchronized ::= synchronized"); }  //-NLS-1
		    consumeOnlySynchronized();  
			break;
 
    case 473 : if (DEBUG) { System.out.println("TryStatement ::= try TryBlock Catches"); }  //-NLS-1
		    consumeStatementTry(false, false);  
			break;
 
    case 474 : if (DEBUG) { System.out.println("TryStatement ::= try TryBlock Catchesopt Finally"); }  //-NLS-1
		    consumeStatementTry(true, false);  
			break;
 
    case 475 : if (DEBUG) { System.out.println("TryStatementWithResources ::= try ResourceSpecification TryBlock Catchesopt"); }  //-NLS-1
		    consumeStatementTry(false, true);  
			break;
 
    case 476 : if (DEBUG) { System.out.println("TryStatementWithResources ::= try ResourceSpecification TryBlock Catchesopt Finally"); }  //-NLS-1
		    consumeStatementTry(true, true);  
			break;
 
    case 477 : if (DEBUG) { System.out.println("ResourceSpecification ::= ( Resources ;opt )"); }  //-NLS-1
		    consumeResourceSpecification();  
			break;
 
    case 478 : if (DEBUG) { System.out.println(";opt ::= $Empty"); }  //-NLS-1
		    consumeResourceOptionalTrailingSemiColon(false);  
			break;
 
    case 479 : if (DEBUG) { System.out.println(";opt ::= ;"); }  //-NLS-1
		    consumeResourceOptionalTrailingSemiColon(true);  
			break;
 
    case 480 : if (DEBUG) { System.out.println("Resources ::= Resource"); }  //-NLS-1
		    consumeSingleResource();  
			break;
 
    case 481 : if (DEBUG) { System.out.println("Resources ::= Resources TrailingSemiColon Resource"); }  //-NLS-1
		    consumeMultipleResources();  
			break;
 
    case 482 : if (DEBUG) { System.out.println("TrailingSemiColon ::= ;"); }  //-NLS-1
		    consumeResourceOptionalTrailingSemiColon(true);  
			break;
 
    case 483 : if (DEBUG) { System.out.println("Resource ::= Type PushModifiers VariableDeclaratorId EnterVariable = ForceNoDiet VariableInitializer RestoreDiet ExitVariableWithInitialization"); }  //-NLS-1
		    consumeResourceAsLocalVariableDeclaration();  
			break;
 
    case 484 : if (DEBUG) { System.out.println("Resource ::= Modifiers Type PushRealModifiers VariableDeclaratorId EnterVariable = ForceNoDiet VariableInitializer RestoreDiet ExitVariableWithInitialization"); }  //-NLS-1
		    consumeResourceAsLocalVariableDeclaration();  
			break;
 
    case 485 : if (DEBUG) { System.out.println("Resource ::= Name"); }  //-NLS-1
		    consumeResourceAsLocalVariable();  
			break;
 
    case 486 : if (DEBUG) { System.out.println("Resource ::= FieldAccess"); }  //-NLS-1
		    consumeResourceAsFieldAccess();  
			break;
 
    case 488 : if (DEBUG) { System.out.println("ExitTryBlock ::= $Empty"); }  //-NLS-1
		    consumeExitTryBlock();  
			break;
 
    case 490 : if (DEBUG) { System.out.println("Catches ::= Catches CatchClause"); }  //-NLS-1
		    consumeCatches();  
			break;
 
    case 491 : if (DEBUG) { System.out.println("CatchClause ::= catch ( CatchFormalParameter ) Block"); }  //-NLS-1
		    consumeStatementCatch() ;  
			break;
 
    case 493 : if (DEBUG) { System.out.println("PushLPAREN ::= ("); }  //-NLS-1
		    consumeLeftParen();  
			break;
 
    case 494 : if (DEBUG) { System.out.println("PushRPAREN ::= )"); }  //-NLS-1
		    consumeRightParen();  
			break;
 
    case 499 : if (DEBUG) { System.out.println("PrimaryNoNewArray ::= this"); }  //-NLS-1
		    consumePrimaryNoNewArrayThis();  
			break;
 
    case 500 : if (DEBUG) { System.out.println("PrimaryNoNewArray ::= PushLPAREN Expression_NotName PushRPAREN"); }  //-NLS-1
		    consumePrimaryNoNewArray();  
			break;
 
    case 501 : if (DEBUG) { System.out.println("PrimaryNoNewArray ::= PushLPAREN Name PushRPAREN"); }  //-NLS-1
		    consumePrimaryNoNewArrayWithName();  
			break;
 
    case 504 : if (DEBUG) { System.out.println("PrimaryNoNewArray ::= Name . this"); }  //-NLS-1
		    consumePrimaryNoNewArrayNameThis();  
			break;
 
    case 505 : if (DEBUG) { System.out.println("QualifiedSuperReceiver ::= Name . super"); }  //-NLS-1
		    consumeQualifiedSuperReceiver();  
			break;
 
    case 506 : if (DEBUG) { System.out.println("PrimaryNoNewArray ::= Name . class"); }  //-NLS-1
		    consumePrimaryNoNewArrayName();  
			break;
 
    case 507 : if (DEBUG) { System.out.println("PrimaryNoNewArray ::= Name Dims . class"); }  //-NLS-1
		    consumePrimaryNoNewArrayArrayType();  
			break;
 
    case 508 : if (DEBUG) { System.out.println("PrimaryNoNewArray ::= PrimitiveType Dims . class"); }  //-NLS-1
		    consumePrimaryNoNewArrayPrimitiveArrayType();  
			break;
 
    case 509 : if (DEBUG) { System.out.println("PrimaryNoNewArray ::= PrimitiveType . class"); }  //-NLS-1
		    consumePrimaryNoNewArrayPrimitiveType();  
			break;
 
    case 515 : if (DEBUG) { System.out.println("ReferenceExpressionTypeArgumentsAndTrunk0 ::= OnlyTypeArguments Dimsopt"); }  //-NLS-1
		    consumeReferenceExpressionTypeArgumentsAndTrunk(false);  
			break;
 
    case 516 : if (DEBUG) { System.out.println("ReferenceExpressionTypeArgumentsAndTrunk0 ::= OnlyTypeArguments . ClassOrInterfaceType Dimsopt"); }  //-NLS-1
		    consumeReferenceExpressionTypeArgumentsAndTrunk(true);  
			break;
 
    case 517 : if (DEBUG) { System.out.println("ReferenceExpression ::= PrimitiveType Dims :: NonWildTypeArgumentsopt IdentifierOrNew"); }  //-NLS-1
		    consumeReferenceExpressionTypeForm(true);  
			break;
 
    case 518 : if (DEBUG) { System.out.println("ReferenceExpression ::= Name Dimsopt :: NonWildTypeArgumentsopt IdentifierOrNew"); }  //-NLS-1
		    consumeReferenceExpressionTypeForm(false);  
			break;
 
    case 519 : if (DEBUG) { System.out.println("ReferenceExpression ::= Name BeginTypeArguments ReferenceExpressionTypeArgumentsAndTrunk :: NonWildTypeArgumentsopt IdentifierOrNew"); }  //-NLS-1
		    consumeReferenceExpressionGenericTypeForm();  
			break;
 
    case 520 : if (DEBUG) { System.out.println("ReferenceExpression ::= Primary :: NonWildTypeArgumentsopt Identifier"); }  //-NLS-1
		    consumeReferenceExpressionPrimaryForm();  
			break;
 
    case 521 : if (DEBUG) { System.out.println("ReferenceExpression ::= QualifiedSuperReceiver :: NonWildTypeArgumentsopt Identifier"); }  //-NLS-1
		    consumeReferenceExpressionPrimaryForm();  
			break;
 
    case 522 : if (DEBUG) { System.out.println("ReferenceExpression ::= super :: NonWildTypeArgumentsopt Identifier"); }  //-NLS-1
		    consumeReferenceExpressionSuperForm();  
			break;
 
    case 523 : if (DEBUG) { System.out.println("NonWildTypeArgumentsopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyTypeArguments();  
			break;
 
    case 525 : if (DEBUG) { System.out.println("IdentifierOrNew ::= Identifier"); }  //-NLS-1
		    consumeIdentifierOrNew(false);  
			break;
 
    case 526 : if (DEBUG) { System.out.println("IdentifierOrNew ::= new"); }  //-NLS-1
		    consumeIdentifierOrNew(true);  
			break;
 
    case 527 : if (DEBUG) { System.out.println("LambdaExpression ::= LambdaParameters -> LambdaBody"); }  //-NLS-1
		    consumeLambdaExpression();  
			break;
 
    case 528 : if (DEBUG) { System.out.println("NestedLambda ::= $Empty"); }  //-NLS-1
		    consumeNestedLambda();  
			break;
 
    case 529 : if (DEBUG) { System.out.println("LambdaParameters ::= Identifier NestedLambda"); }  //-NLS-1
		    consumeTypeElidedLambdaParameter(false);  
			break;
 
    case 535 : if (DEBUG) { System.out.println("TypeElidedFormalParameterList ::= TypeElidedFormalParameterList , TypeElidedFormalParameter"); }  //-NLS-1
		    consumeFormalParameterList();  
			break;
 
    case 536 : if (DEBUG) { System.out.println("TypeElidedFormalParameter ::= Modifiersopt Identifier"); }  //-NLS-1
		    consumeTypeElidedLambdaParameter(true);  
			break;
 
    case 539 : if (DEBUG) { System.out.println("ElidedLeftBraceAndReturn ::= $Empty"); }  //-NLS-1
		    consumeElidedLeftBraceAndReturn();  
			break;
 
    case 540 : if (DEBUG) { System.out.println("AllocationHeader ::= new ClassType ( ArgumentListopt )"); }  //-NLS-1
		    consumeAllocationHeader();  
			break;
 
    case 541 : if (DEBUG) { System.out.println("ClassInstanceCreationExpression ::= new OnlyTypeArguments ClassType EnterInstanceCreationArgumentList ( ArgumentListopt ) UnqualifiedClassBodyopt"); }  //-NLS-1
		    consumeClassInstanceCreationExpressionWithTypeArguments();  
			break;
 
    case 542 : if (DEBUG) { System.out.println("ClassInstanceCreationExpression ::= new ClassType EnterInstanceCreationArgumentList ( ArgumentListopt ) UnqualifiedClassBodyopt"); }  //-NLS-1
		    consumeClassInstanceCreationExpression();  
			break;
 
    case 543 : if (DEBUG) { System.out.println("ClassInstanceCreationExpression ::= Primary . new OnlyTypeArguments ClassType EnterInstanceCreationArgumentList ( ArgumentListopt ) QualifiedClassBodyopt"); }  //-NLS-1
		    consumeClassInstanceCreationExpressionQualifiedWithTypeArguments() ;  
			break;
 
    case 544 : if (DEBUG) { System.out.println("ClassInstanceCreationExpression ::= Primary . new ClassType EnterInstanceCreationArgumentList ( ArgumentListopt ) QualifiedClassBodyopt"); }  //-NLS-1
		    consumeClassInstanceCreationExpressionQualified() ;  
			break;
 
    case 545 : if (DEBUG) { System.out.println("ClassInstanceCreationExpression ::= ClassInstanceCreationExpressionName ClassType EnterInstanceCreationArgumentList ( ArgumentListopt ) QualifiedClassBodyopt"); }  //-NLS-1
		    consumeClassInstanceCreationExpressionQualified() ;  
			break;
 
    case 546 : if (DEBUG) { System.out.println("ClassInstanceCreationExpression ::= ClassInstanceCreationExpressionName OnlyTypeArguments ClassType EnterInstanceCreationArgumentList ( ArgumentListopt ) QualifiedClassBodyopt"); }  //-NLS-1
		    consumeClassInstanceCreationExpressionQualifiedWithTypeArguments() ;  
			break;
 
    case 547 : if (DEBUG) { System.out.println("EnterInstanceCreationArgumentList ::= $Empty"); }  //-NLS-1
		    consumeEnterInstanceCreationArgumentList();  
			break;
 
    case 548 : if (DEBUG) { System.out.println("ClassInstanceCreationExpressionName ::= Name . new"); }  //-NLS-1
		    consumeClassInstanceCreationExpressionName() ;  
			break;
 
    case 549 : if (DEBUG) { System.out.println("UnqualifiedClassBodyopt ::= $Empty"); }  //-NLS-1
		    consumeClassBodyopt();  
			break;
 
    case 551 : if (DEBUG) { System.out.println("UnqualifiedEnterAnonymousClassBody ::= $Empty"); }  //-NLS-1
		    consumeEnterAnonymousClassBody(false);  
			break;
 
    case 552 : if (DEBUG) { System.out.println("QualifiedClassBodyopt ::= $Empty"); }  //-NLS-1
		    consumeClassBodyopt();  
			break;
 
    case 554 : if (DEBUG) { System.out.println("QualifiedEnterAnonymousClassBody ::= $Empty"); }  //-NLS-1
		    consumeEnterAnonymousClassBody(true);  
			break;
 
    case 556 : if (DEBUG) { System.out.println("ArgumentList ::= ArgumentList , Expression"); }  //-NLS-1
		    consumeArgumentList();  
			break;
 
    case 557 : if (DEBUG) { System.out.println("ArrayCreationHeader ::= new PrimitiveType DimWithOrWithOutExprs"); }  //-NLS-1
		    consumeArrayCreationHeader();  
			break;
 
    case 558 : if (DEBUG) { System.out.println("ArrayCreationHeader ::= new ClassOrInterfaceType DimWithOrWithOutExprs"); }  //-NLS-1
		    consumeArrayCreationHeader();  
			break;
 
    case 559 : if (DEBUG) { System.out.println("ArrayCreationWithoutArrayInitializer ::= new PrimitiveType DimWithOrWithOutExprs"); }  //-NLS-1
		    consumeArrayCreationExpressionWithoutInitializer();  
			break;
 
    case 560 : if (DEBUG) { System.out.println("ArrayCreationWithArrayInitializer ::= new PrimitiveType DimWithOrWithOutExprs ArrayInitializer"); }  //-NLS-1
		    consumeArrayCreationExpressionWithInitializer();  
			break;
 
    case 561 : if (DEBUG) { System.out.println("ArrayCreationWithoutArrayInitializer ::= new ClassOrInterfaceType DimWithOrWithOutExprs"); }  //-NLS-1
		    consumeArrayCreationExpressionWithoutInitializer();  
			break;
 
    case 562 : if (DEBUG) { System.out.println("ArrayCreationWithArrayInitializer ::= new ClassOrInterfaceType DimWithOrWithOutExprs ArrayInitializer"); }  //-NLS-1
		    consumeArrayCreationExpressionWithInitializer();  
			break;
 
    case 564 : if (DEBUG) { System.out.println("DimWithOrWithOutExprs ::= DimWithOrWithOutExprs DimWithOrWithOutExpr"); }  //-NLS-1
		    consumeDimWithOrWithOutExprs();  
			break;
 
     case 566 : if (DEBUG) { System.out.println("DimWithOrWithOutExpr ::= TypeAnnotationsopt [ ]"); }  //-NLS-1
		    consumeDimWithOrWithOutExpr();  
			break;
 
     case 567 : if (DEBUG) { System.out.println("Dims ::= DimsLoop"); }  //-NLS-1
		    consumeDims();  
			break;
 
     case 570 : if (DEBUG) { System.out.println("OneDimLoop ::= [ ]"); }  //-NLS-1
		    consumeOneDimLoop(false);  
			break;
 
     case 571 : if (DEBUG) { System.out.println("OneDimLoop ::= TypeAnnotations [ ]"); }  //-NLS-1
		    consumeOneDimLoop(true);  
			break;
 
    case 572 : if (DEBUG) { System.out.println("FieldAccess ::= Primary . Identifier"); }  //-NLS-1
		    consumeFieldAccess(false);  
			break;
 
    case 573 : if (DEBUG) { System.out.println("FieldAccess ::= super . Identifier"); }  //-NLS-1
		    consumeFieldAccess(true);  
			break;
 
    case 574 : if (DEBUG) { System.out.println("FieldAccess ::= QualifiedSuperReceiver . Identifier"); }  //-NLS-1
		    consumeFieldAccess(false);  
			break;
 
    case 575 : if (DEBUG) { System.out.println("MethodInvocation ::= Name ( ArgumentListopt )"); }  //-NLS-1
		    consumeMethodInvocationName();  
			break;
 
    case 576 : if (DEBUG) { System.out.println("MethodInvocation ::= Name . OnlyTypeArguments Identifier ( ArgumentListopt )"); }  //-NLS-1
		    consumeMethodInvocationNameWithTypeArguments();  
			break;
 
    case 577 : if (DEBUG) { System.out.println("MethodInvocation ::= Primary . OnlyTypeArguments Identifier ( ArgumentListopt )"); }  //-NLS-1
		    consumeMethodInvocationPrimaryWithTypeArguments();  
			break;
 
    case 578 : if (DEBUG) { System.out.println("MethodInvocation ::= Primary . Identifier ( ArgumentListopt )"); }  //-NLS-1
		    consumeMethodInvocationPrimary();  
			break;
 
    case 579 : if (DEBUG) { System.out.println("MethodInvocation ::= QualifiedSuperReceiver . Identifier ( ArgumentListopt )"); }  //-NLS-1
		    consumeMethodInvocationPrimary();  
			break;
 
    case 580 : if (DEBUG) { System.out.println("MethodInvocation ::= QualifiedSuperReceiver . OnlyTypeArguments Identifier ( ArgumentListopt )"); }  //-NLS-1
		    consumeMethodInvocationPrimaryWithTypeArguments();  
			break;
 
    case 581 : if (DEBUG) { System.out.println("MethodInvocation ::= super . OnlyTypeArguments Identifier ( ArgumentListopt )"); }  //-NLS-1
		    consumeMethodInvocationSuperWithTypeArguments();  
			break;
 
    case 582 : if (DEBUG) { System.out.println("MethodInvocation ::= super . Identifier ( ArgumentListopt )"); }  //-NLS-1
		    consumeMethodInvocationSuper();  
			break;
 
    case 583 : if (DEBUG) { System.out.println("ArrayAccess ::= Name [ Expression ]"); }  //-NLS-1
		    consumeArrayAccess(true);  
			break;
 
    case 584 : if (DEBUG) { System.out.println("ArrayAccess ::= PrimaryNoNewArray [ Expression ]"); }  //-NLS-1
		    consumeArrayAccess(false);  
			break;
 
    case 585 : if (DEBUG) { System.out.println("ArrayAccess ::= ArrayCreationWithArrayInitializer [ Expression ]"); }  //-NLS-1
		    consumeArrayAccess(false);  
			break;
 
    case 587 : if (DEBUG) { System.out.println("PostfixExpression ::= Name"); }  //-NLS-1
		    consumePostfixExpression();  
			break;
 
    case 590 : if (DEBUG) { System.out.println("PostIncrementExpression ::= PostfixExpression ++"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.PLUS,true);  
			break;
 
    case 591 : if (DEBUG) { System.out.println("PostDecrementExpression ::= PostfixExpression --"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.MINUS,true);  
			break;
 
    case 592 : if (DEBUG) { System.out.println("PushPosition ::= $Empty"); }  //-NLS-1
		    consumePushPosition();  
			break;
 
    case 595 : if (DEBUG) { System.out.println("UnaryExpression ::= + PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.PLUS);  
			break;
 
    case 596 : if (DEBUG) { System.out.println("UnaryExpression ::= - PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.MINUS);  
			break;
 
    case 598 : if (DEBUG) { System.out.println("PreIncrementExpression ::= ++ PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.PLUS,false);  
			break;
 
    case 599 : if (DEBUG) { System.out.println("PreDecrementExpression ::= -- PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.MINUS,false);  
			break;
 
    case 601 : if (DEBUG) { System.out.println("UnaryExpressionNotPlusMinus ::= ~ PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.TWIDDLE);  
			break;
 
    case 602 : if (DEBUG) { System.out.println("UnaryExpressionNotPlusMinus ::= ! PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.NOT);  
			break;
 
    case 604 : if (DEBUG) { System.out.println("CastExpression ::= PushLPAREN PrimitiveType Dimsopt AdditionalBoundsListOpt PushRPAREN InsideCastExpression UnaryExpression"); }  //-NLS-1
		    consumeCastExpressionWithPrimitiveType();  
			break;
 
    case 605 : if (DEBUG) { System.out.println("CastExpression ::= PushLPAREN Name OnlyTypeArgumentsForCastExpression Dimsopt AdditionalBoundsListOpt PushRPAREN InsideCastExpression UnaryExpressionNotPlusMinus"); }  //-NLS-1
		    consumeCastExpressionWithGenericsArray();  
			break;
 
    case 606 : if (DEBUG) { System.out.println("CastExpression ::= PushLPAREN Name OnlyTypeArgumentsForCastExpression . ClassOrInterfaceType Dimsopt AdditionalBoundsListOpt PushRPAREN InsideCastExpressionWithQualifiedGenerics UnaryExpressionNotPlusMinus"); }  //-NLS-1
		    consumeCastExpressionWithQualifiedGenericsArray();  
			break;
 
    case 607 : if (DEBUG) { System.out.println("CastExpression ::= PushLPAREN Name PushRPAREN InsideCastExpressionLL1 UnaryExpressionNotPlusMinus"); }  //-NLS-1
		    consumeCastExpressionLL1();  
			break;
 
    case 608 : if (DEBUG) { System.out.println("CastExpression ::= BeginIntersectionCast PushLPAREN CastNameAndBounds PushRPAREN InsideCastExpressionLL1WithBounds UnaryExpressionNotPlusMinus"); }  //-NLS-1
		    consumeCastExpressionLL1WithBounds();  
			break;
 
    case 609 : if (DEBUG) { System.out.println("CastExpression ::= PushLPAREN Name Dims AdditionalBoundsListOpt PushRPAREN InsideCastExpression UnaryExpressionNotPlusMinus"); }  //-NLS-1
		    consumeCastExpressionWithNameArray();  
			break;
 
    case 610 : if (DEBUG) { System.out.println("AdditionalBoundsListOpt ::= $Empty"); }  //-NLS-1
		    consumeZeroAdditionalBounds();  
			break;
 
    case 614 : if (DEBUG) { System.out.println("OnlyTypeArgumentsForCastExpression ::= OnlyTypeArguments"); }  //-NLS-1
		    consumeOnlyTypeArgumentsForCastExpression();  
			break;
 
    case 615 : if (DEBUG) { System.out.println("InsideCastExpression ::= $Empty"); }  //-NLS-1
		    consumeInsideCastExpression();  
			break;
 
    case 616 : if (DEBUG) { System.out.println("InsideCastExpressionLL1 ::= $Empty"); }  //-NLS-1
		    consumeInsideCastExpressionLL1();  
			break;
 
    case 617 : if (DEBUG) { System.out.println("InsideCastExpressionLL1WithBounds ::= $Empty"); }  //-NLS-1
		    consumeInsideCastExpressionLL1WithBounds ();  
			break;
 
    case 618 : if (DEBUG) { System.out.println("InsideCastExpressionWithQualifiedGenerics ::= $Empty"); }  //-NLS-1
		    consumeInsideCastExpressionWithQualifiedGenerics();  
			break;
 
    case 620 : if (DEBUG) { System.out.println("MultiplicativeExpression ::= MultiplicativeExpression * UnaryExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.MULTIPLY);  
			break;
 
    case 621 : if (DEBUG) { System.out.println("MultiplicativeExpression ::= MultiplicativeExpression / UnaryExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.DIVIDE);  
			break;
 
    case 622 : if (DEBUG) { System.out.println("MultiplicativeExpression ::= MultiplicativeExpression % UnaryExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.REMAINDER);  
			break;
 
    case 624 : if (DEBUG) { System.out.println("AdditiveExpression ::= AdditiveExpression + MultiplicativeExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.PLUS);  
			break;
 
    case 625 : if (DEBUG) { System.out.println("AdditiveExpression ::= AdditiveExpression - MultiplicativeExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.MINUS);  
			break;
 
    case 627 : if (DEBUG) { System.out.println("ShiftExpression ::= ShiftExpression << AdditiveExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.LEFT_SHIFT);  
			break;
 
    case 628 : if (DEBUG) { System.out.println("ShiftExpression ::= ShiftExpression >> AdditiveExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.RIGHT_SHIFT);  
			break;
 
    case 629 : if (DEBUG) { System.out.println("ShiftExpression ::= ShiftExpression >>> AdditiveExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.UNSIGNED_RIGHT_SHIFT);  
			break;
 
    case 631 : if (DEBUG) { System.out.println("RelationalExpression ::= RelationalExpression < ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.LESS);  
			break;
 
    case 632 : if (DEBUG) { System.out.println("RelationalExpression ::= RelationalExpression > ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.GREATER);  
			break;
 
    case 633 : if (DEBUG) { System.out.println("RelationalExpression ::= RelationalExpression <= ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.LESS_EQUAL);  
			break;
 
    case 634 : if (DEBUG) { System.out.println("RelationalExpression ::= RelationalExpression >= ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.GREATER_EQUAL);  
			break;
 
    case 636 : if (DEBUG) { System.out.println("EqualityExpression ::= EqualityExpression == InstanceofExpression"); }  //-NLS-1
		    consumeEqualityExpression(OperatorIds.EQUAL_EQUAL);  
			break;
 
    case 637 : if (DEBUG) { System.out.println("EqualityExpression ::= EqualityExpression != InstanceofExpression"); }  //-NLS-1
		    consumeEqualityExpression(OperatorIds.NOT_EQUAL);  
			break;
 
    case 639 : if (DEBUG) { System.out.println("AndExpression ::= AndExpression & EqualityExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.AND);  
			break;
 
    case 641 : if (DEBUG) { System.out.println("ExclusiveOrExpression ::= ExclusiveOrExpression ^ AndExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.XOR);  
			break;
 
    case 643 : if (DEBUG) { System.out.println("InclusiveOrExpression ::= InclusiveOrExpression | ExclusiveOrExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.OR);  
			break;
 
    case 645 : if (DEBUG) { System.out.println("ConditionalAndExpression ::= ConditionalAndExpression && InclusiveOrExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.AND_AND);  
			break;
 
    case 647 : if (DEBUG) { System.out.println("ConditionalOrExpression ::= ConditionalOrExpression || ConditionalAndExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.OR_OR);  
			break;
 
    case 649 : if (DEBUG) { System.out.println("ConditionalExpression ::= ConditionalOrExpression ? Expression : ConditionalExpression"); }  //-NLS-1
		    consumeConditionalExpression(OperatorIds.QUESTIONCOLON) ;  
			break;
 
    case 652 : if (DEBUG) { System.out.println("Assignment ::= PostfixExpression AssignmentOperator AssignmentExpression"); }  //-NLS-1
		    consumeAssignment();  
			break;
 
    case 654 : if (DEBUG) { System.out.println("Assignment ::= InvalidArrayInitializerAssignement"); }  //-NLS-1
		    ignoreExpressionAssignment(); 
			break;
 
    case 655 : if (DEBUG) { System.out.println("AssignmentOperator ::= ="); }  //-NLS-1
		    consumeAssignmentOperator(EQUAL);  
			break;
 
    case 656 : if (DEBUG) { System.out.println("AssignmentOperator ::= *="); }  //-NLS-1
		    consumeAssignmentOperator(MULTIPLY);  
			break;
 
    case 657 : if (DEBUG) { System.out.println("AssignmentOperator ::= /="); }  //-NLS-1
		    consumeAssignmentOperator(DIVIDE);  
			break;
 
    case 658 : if (DEBUG) { System.out.println("AssignmentOperator ::= %="); }  //-NLS-1
		    consumeAssignmentOperator(REMAINDER);  
			break;
 
    case 659 : if (DEBUG) { System.out.println("AssignmentOperator ::= +="); }  //-NLS-1
		    consumeAssignmentOperator(PLUS);  
			break;
 
    case 660 : if (DEBUG) { System.out.println("AssignmentOperator ::= -="); }  //-NLS-1
		    consumeAssignmentOperator(MINUS);  
			break;
 
    case 661 : if (DEBUG) { System.out.println("AssignmentOperator ::= <<="); }  //-NLS-1
		    consumeAssignmentOperator(LEFT_SHIFT);  
			break;
 
    case 662 : if (DEBUG) { System.out.println("AssignmentOperator ::= >>="); }  //-NLS-1
		    consumeAssignmentOperator(RIGHT_SHIFT);  
			break;
 
    case 663 : if (DEBUG) { System.out.println("AssignmentOperator ::= >>>="); }  //-NLS-1
		    consumeAssignmentOperator(UNSIGNED_RIGHT_SHIFT);  
			break;
 
    case 664 : if (DEBUG) { System.out.println("AssignmentOperator ::= &="); }  //-NLS-1
		    consumeAssignmentOperator(AND);  
			break;
 
    case 665 : if (DEBUG) { System.out.println("AssignmentOperator ::= ^="); }  //-NLS-1
		    consumeAssignmentOperator(XOR);  
			break;
 
    case 666 : if (DEBUG) { System.out.println("AssignmentOperator ::= |="); }  //-NLS-1
		    consumeAssignmentOperator(OR);  
			break;
 
    case 667 : if (DEBUG) { System.out.println("Expression ::= AssignmentExpression"); }  //-NLS-1
		    consumeExpression();  
			break;
 
    case 670 : if (DEBUG) { System.out.println("Expressionopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyExpression();  
			break;
 
    case 673 : if (DEBUG) { System.out.println("ConstantExpressions ::= ConstantExpressions , ConstantExpression"); }  //-NLS-1
		    consumeConstantExpressions();  
			break;
 
    case 677 : if (DEBUG) { System.out.println("ClassBodyDeclarationsopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyClassBodyDeclarationsopt();  
			break;
 
    case 678 : if (DEBUG) { System.out.println("ClassBodyDeclarationsopt ::= NestedType ClassBodyDeclarations"); }  //-NLS-1
		    consumeClassBodyDeclarationsopt();  
			break;
 
     case 679 : if (DEBUG) { System.out.println("Modifiersopt ::= $Empty"); }  //-NLS-1
		    consumeDefaultModifiers();  
			break;
 
    case 680 : if (DEBUG) { System.out.println("Modifiersopt ::= Modifiers"); }  //-NLS-1
		    consumeModifiers();  
			break;
 
    case 681 : if (DEBUG) { System.out.println("BlockStatementsopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyBlockStatementsopt();  
			break;
 
     case 683 : if (DEBUG) { System.out.println("Dimsopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyDimsopt();  
			break;
 
     case 685 : if (DEBUG) { System.out.println("ArgumentListopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyArgumentListopt();  
			break;
 
 consumeFormalParameterListopt();  
			break;
 
    case 696 : if (DEBUG) { System.out.println("ClassHeaderPermittedSubclasses ::= RestrictedIdentifierpermits ClassTypeList"); }  //-NLS-1
		    consumeClassHeaderPermittedSubclasses();  
			break;
 
    case 699 : if (DEBUG) { System.out.println("InterfaceHeaderPermittedSubClassesAndSubInterfaces ::= RestrictedIdentifierpermits ClassTypeList"); }  //-NLS-1
		    consumeInterfaceHeaderPermittedSubClassesAndSubInterfaces();  
			break;
 
     case 700 : if (DEBUG) { System.out.println("InterfaceMemberDeclarationsopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyInterfaceMemberDeclarationsopt();  
			break;
 
     case 701 : if (DEBUG) { System.out.println("InterfaceMemberDeclarationsopt ::= NestedType InterfaceMemberDeclarations"); }  //-NLS-1
		    consumeInterfaceMemberDeclarationsopt();  
			break;
 
    case 702 : if (DEBUG) { System.out.println("NestedType ::= $Empty"); }  //-NLS-1
		    consumeNestedType();  
			break;

     case 703 : if (DEBUG) { System.out.println("ForInitopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyForInitopt();  
			break;
 
     case 705 : if (DEBUG) { System.out.println("ForUpdateopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyForUpdateopt();  
			break;
 
     case 709 : if (DEBUG) { System.out.println("Catchesopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyCatchesopt();  
			break;
 
     case 711 : if (DEBUG) { System.out.println("EnumDeclaration ::= EnumHeader EnumBody"); }  //-NLS-1
		    consumeEnumDeclaration();  
			break;
 
     case 712 : if (DEBUG) { System.out.println("EnumHeader ::= EnumHeaderName ClassHeaderImplementsopt"); }  //-NLS-1
		    consumeEnumHeader();  
			break;
 
     case 713 : if (DEBUG) { System.out.println("EnumHeaderName ::= Modifiersopt enum Identifier"); }  //-NLS-1
		    consumeEnumHeaderName();  
			break;
 
     case 714 : if (DEBUG) { System.out.println("EnumHeaderName ::= Modifiersopt enum Identifier TypeParameters"); }  //-NLS-1
		    consumeEnumHeaderNameWithTypeParameters();  
			break;
 
     case 715 : if (DEBUG) { System.out.println("EnumBody ::= { EnumBodyDeclarationsopt }"); }  //-NLS-1
		    consumeEnumBodyNoConstants();  
			break;
 
     case 716 : if (DEBUG) { System.out.println("EnumBody ::= { , EnumBodyDeclarationsopt }"); }  //-NLS-1
		    consumeEnumBodyNoConstants();  
			break;
 
     case 717 : if (DEBUG) { System.out.println("EnumBody ::= { EnumConstants , EnumBodyDeclarationsopt }"); }  //-NLS-1
		    consumeEnumBodyWithConstants();  
			break;
 
     case 718 : if (DEBUG) { System.out.println("EnumBody ::= { EnumConstants EnumBodyDeclarationsopt }"); }  //-NLS-1
		    consumeEnumBodyWithConstants();  
			break;
 
    case 720 : if (DEBUG) { System.out.println("EnumConstants ::= EnumConstants , EnumConstant"); }  //-NLS-1
		    consumeEnumConstants();  
			break;
 
    case 721 : if (DEBUG) { System.out.println("EnumConstantHeaderName ::= Modifiersopt Identifier"); }  //-NLS-1
		    consumeEnumConstantHeaderName();  
			break;
 
    case 722 : if (DEBUG) { System.out.println("EnumConstantHeader ::= EnumConstantHeaderName ForceNoDiet Argumentsopt RestoreDiet"); }  //-NLS-1
		    consumeEnumConstantHeader();  
			break;
 
    case 723 : if (DEBUG) { System.out.println("EnumConstant ::= EnumConstantHeader ForceNoDiet ClassBody RestoreDiet"); }  //-NLS-1
		    consumeEnumConstantWithClassBody();  
			break;
 
    case 724 : if (DEBUG) { System.out.println("EnumConstant ::= EnumConstantHeader"); }  //-NLS-1
		    consumeEnumConstantNoClassBody();  
			break;
 
    case 725 : if (DEBUG) { System.out.println("Arguments ::= ( ArgumentListopt )"); }  //-NLS-1
		    consumeArguments();  
			break;
 
    case 726 : if (DEBUG) { System.out.println("Argumentsopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyArguments();  
			break;
 
    case 728 : if (DEBUG) { System.out.println("EnumDeclarations ::= ; ClassBodyDeclarationsopt"); }  //-NLS-1
		    consumeEnumDeclarations();  
			break;
 
    case 729 : if (DEBUG) { System.out.println("EnumBodyDeclarationsopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyEnumDeclarations();  
			break;
 
    case 731 : if (DEBUG) { System.out.println("EnhancedForStatement ::= EnhancedForStatementHeader Statement"); }  //-NLS-1
		    consumeEnhancedForStatement();  
			break;
 
    case 732 : if (DEBUG) { System.out.println("EnhancedForStatementNoShortIf ::= EnhancedForStatementHeader StatementNoShortIf"); }  //-NLS-1
		    consumeEnhancedForStatement();  
			break;
 
    case 733 : if (DEBUG) { System.out.println("EnhancedForStatementHeaderInit ::= for ( Type PushModifiers Identifier Dimsopt"); }  //-NLS-1
		    consumeEnhancedForStatementHeaderInit(false);  
			break;
 
    case 734 : if (DEBUG) { System.out.println("EnhancedForStatementHeaderInit ::= for ( Modifiers Type PushRealModifiers Identifier Dimsopt"); }  //-NLS-1
		    consumeEnhancedForStatementHeaderInit(true);  
			break;
 
    case 735 : if (DEBUG) { System.out.println("EnhancedForStatementHeader ::= EnhancedForStatementHeaderInit : Expression )"); }  //-NLS-1
		    consumeEnhancedForStatementHeader();  
			break;
 
    case 736 : if (DEBUG) { System.out.println("SingleStaticImportDeclaration ::= SingleStaticImportDeclarationName ;"); }  //-NLS-1
		    consumeImportDeclaration();  
			break;
 
    case 737 : if (DEBUG) { System.out.println("SingleStaticImportDeclarationName ::= import static Name RejectTypeAnnotations"); }  //-NLS-1
		    consumeSingleStaticImportDeclarationName();  
			break;
 
    case 738 : if (DEBUG) { System.out.println("StaticImportOnDemandDeclaration ::= StaticImportOnDemandDeclarationName ;"); }  //-NLS-1
		    consumeImportDeclaration();  
			break;
 
    case 739 : if (DEBUG) { System.out.println("StaticImportOnDemandDeclarationName ::= import static Name . RejectTypeAnnotations *"); }  //-NLS-1
		    consumeStaticImportOnDemandDeclarationName();  
			break;
 
    case 740 : if (DEBUG) { System.out.println("TypeArguments ::= < TypeArgumentList1"); }  //-NLS-1
		    consumeTypeArguments();  
			break;
 
    case 741 : if (DEBUG) { System.out.println("OnlyTypeArguments ::= < TypeArgumentList1"); }  //-NLS-1
		    consumeOnlyTypeArguments();  
			break;
 
    case 743 : if (DEBUG) { System.out.println("TypeArgumentList1 ::= TypeArgumentList , TypeArgument1"); }  //-NLS-1
		    consumeTypeArgumentList1();  
			break;
 
    case 745 : if (DEBUG) { System.out.println("TypeArgumentList ::= TypeArgumentList , TypeArgument"); }  //-NLS-1
		    consumeTypeArgumentList();  
			break;
 
    case 746 : if (DEBUG) { System.out.println("TypeArgument ::= ReferenceType"); }  //-NLS-1
		    consumeTypeArgument();  
			break;
 
    case 750 : if (DEBUG) { System.out.println("ReferenceType1 ::= ReferenceType >"); }  //-NLS-1
		    consumeReferenceType1();  
			break;
 
    case 751 : if (DEBUG) { System.out.println("ReferenceType1 ::= ClassOrInterface < TypeArgumentList2"); }  //-NLS-1
		    consumeTypeArgumentReferenceType1();  
			break;
 
    case 753 : if (DEBUG) { System.out.println("TypeArgumentList2 ::= TypeArgumentList , TypeArgument2"); }  //-NLS-1
		    consumeTypeArgumentList2();  
			break;
 
    case 756 : if (DEBUG) { System.out.println("ReferenceType2 ::= ReferenceType >>"); }  //-NLS-1
		    consumeReferenceType2();  
			break;
 
    case 757 : if (DEBUG) { System.out.println("ReferenceType2 ::= ClassOrInterface < TypeArgumentList3"); }  //-NLS-1
		    consumeTypeArgumentReferenceType2();  
			break;
 
    case 759 : if (DEBUG) { System.out.println("TypeArgumentList3 ::= TypeArgumentList , TypeArgument3"); }  //-NLS-1
		    consumeTypeArgumentList3();  
			break;
 
    case 762 : if (DEBUG) { System.out.println("ReferenceType3 ::= ReferenceType >>>"); }  //-NLS-1
		    consumeReferenceType3();  
			break;
 
    case 763 : if (DEBUG) { System.out.println("Wildcard ::= TypeAnnotationsopt ?"); }  //-NLS-1
		    consumeWildcard();  
			break;
 
    case 764 : if (DEBUG) { System.out.println("Wildcard ::= TypeAnnotationsopt ? WildcardBounds"); }  //-NLS-1
		    consumeWildcardWithBounds();  
			break;
 
    case 765 : if (DEBUG) { System.out.println("WildcardBounds ::= extends ReferenceType"); }  //-NLS-1
		    consumeWildcardBoundsExtends();  
			break;
 
    case 766 : if (DEBUG) { System.out.println("WildcardBounds ::= super ReferenceType"); }  //-NLS-1
		    consumeWildcardBoundsSuper();  
			break;
 
    case 767 : if (DEBUG) { System.out.println("Wildcard1 ::= TypeAnnotationsopt ? >"); }  //-NLS-1
		    consumeWildcard1();  
			break;
 
    case 768 : if (DEBUG) { System.out.println("Wildcard1 ::= TypeAnnotationsopt ? WildcardBounds1"); }  //-NLS-1
		    consumeWildcard1WithBounds();  
			break;
 
    case 769 : if (DEBUG) { System.out.println("WildcardBounds1 ::= extends ReferenceType1"); }  //-NLS-1
		    consumeWildcardBounds1Extends();  
			break;
 
    case 770 : if (DEBUG) { System.out.println("WildcardBounds1 ::= super ReferenceType1"); }  //-NLS-1
		    consumeWildcardBounds1Super();  
			break;
 
    case 771 : if (DEBUG) { System.out.println("Wildcard2 ::= TypeAnnotationsopt ? >>"); }  //-NLS-1
		    consumeWildcard2();  
			break;
 
    case 772 : if (DEBUG) { System.out.println("Wildcard2 ::= TypeAnnotationsopt ? WildcardBounds2"); }  //-NLS-1
		    consumeWildcard2WithBounds();  
			break;
 
    case 773 : if (DEBUG) { System.out.println("WildcardBounds2 ::= extends ReferenceType2"); }  //-NLS-1
		    consumeWildcardBounds2Extends();  
			break;
 
    case 774 : if (DEBUG) { System.out.println("WildcardBounds2 ::= super ReferenceType2"); }  //-NLS-1
		    consumeWildcardBounds2Super();  
			break;
 
    case 775 : if (DEBUG) { System.out.println("Wildcard3 ::= TypeAnnotationsopt ? >>>"); }  //-NLS-1
		    consumeWildcard3();  
			break;
 
    case 776 : if (DEBUG) { System.out.println("Wildcard3 ::= TypeAnnotationsopt ? WildcardBounds3"); }  //-NLS-1
		    consumeWildcard3WithBounds();  
			break;
 
    case 777 : if (DEBUG) { System.out.println("WildcardBounds3 ::= extends ReferenceType3"); }  //-NLS-1
		    consumeWildcardBounds3Extends();  
			break;
 
    case 778 : if (DEBUG) { System.out.println("WildcardBounds3 ::= super ReferenceType3"); }  //-NLS-1
		    consumeWildcardBounds3Super();  
			break;
 
    case 779 : if (DEBUG) { System.out.println("TypeParameterHeader ::= TypeAnnotationsopt Identifier"); }  //-NLS-1
		    consumeTypeParameterHeader();  
			break;
 
    case 780 : if (DEBUG) { System.out.println("TypeParameters ::= < TypeParameterList1"); }  //-NLS-1
		    consumeTypeParameters();  
			break;
 
    case 782 : if (DEBUG) { System.out.println("TypeParameterList ::= TypeParameterList , TypeParameter"); }  //-NLS-1
		    consumeTypeParameterList();  
			break;
 
    case 784 : if (DEBUG) { System.out.println("TypeParameter ::= TypeParameterHeader extends ReferenceType"); }  //-NLS-1
		    consumeTypeParameterWithExtends();  
			break;
 
    case 785 : if (DEBUG) { System.out.println("TypeParameter ::= TypeParameterHeader extends ReferenceType AdditionalBoundList"); }  //-NLS-1
		    consumeTypeParameterWithExtendsAndBounds();  
			break;
 
    case 787 : if (DEBUG) { System.out.println("AdditionalBoundList ::= AdditionalBoundList AdditionalBound"); }  //-NLS-1
		    consumeAdditionalBoundList();  
			break;
 
    case 788 : if (DEBUG) { System.out.println("AdditionalBound ::= & ReferenceType"); }  //-NLS-1
		    consumeAdditionalBound();  
			break;
 
    case 790 : if (DEBUG) { System.out.println("TypeParameterList1 ::= TypeParameterList , TypeParameter1"); }  //-NLS-1
		    consumeTypeParameterList1();  
			break;
 
    case 791 : if (DEBUG) { System.out.println("TypeParameter1 ::= TypeParameterHeader >"); }  //-NLS-1
		    consumeTypeParameter1();  
			break;
 
    case 792 : if (DEBUG) { System.out.println("TypeParameter1 ::= TypeParameterHeader extends ReferenceType1"); }  //-NLS-1
		    consumeTypeParameter1WithExtends();  
			break;
 
    case 793 : if (DEBUG) { System.out.println("TypeParameter1 ::= TypeParameterHeader extends ReferenceType AdditionalBoundList1"); }  //-NLS-1
		    consumeTypeParameter1WithExtendsAndBounds();  
			break;
 
    case 795 : if (DEBUG) { System.out.println("AdditionalBoundList1 ::= AdditionalBoundList AdditionalBound1"); }  //-NLS-1
		    consumeAdditionalBoundList1();  
			break;
 
    case 796 : if (DEBUG) { System.out.println("AdditionalBound1 ::= & ReferenceType1"); }  //-NLS-1
		    consumeAdditionalBound1();  
			break;
 
    case 802 : if (DEBUG) { System.out.println("UnaryExpression_NotName ::= + PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.PLUS);  
			break;
 
    case 803 : if (DEBUG) { System.out.println("UnaryExpression_NotName ::= - PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.MINUS);  
			break;
 
    case 806 : if (DEBUG) { System.out.println("UnaryExpressionNotPlusMinus_NotName ::= ~ PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.TWIDDLE);  
			break;
 
    case 807 : if (DEBUG) { System.out.println("UnaryExpressionNotPlusMinus_NotName ::= ! PushPosition UnaryExpression"); }  //-NLS-1
		    consumeUnaryExpression(OperatorIds.NOT);  
			break;
 
    case 810 : if (DEBUG) { System.out.println("MultiplicativeExpression_NotName ::= MultiplicativeExpression_NotName * UnaryExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.MULTIPLY);  
			break;
 
    case 811 : if (DEBUG) { System.out.println("MultiplicativeExpression_NotName ::= Name * UnaryExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.MULTIPLY);  
			break;
 
    case 812 : if (DEBUG) { System.out.println("MultiplicativeExpression_NotName ::= MultiplicativeExpression_NotName / UnaryExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.DIVIDE);  
			break;
 
    case 813 : if (DEBUG) { System.out.println("MultiplicativeExpression_NotName ::= Name / UnaryExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.DIVIDE);  
			break;
 
    case 814 : if (DEBUG) { System.out.println("MultiplicativeExpression_NotName ::= MultiplicativeExpression_NotName % UnaryExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.REMAINDER);  
			break;
 
    case 815 : if (DEBUG) { System.out.println("MultiplicativeExpression_NotName ::= Name % UnaryExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.REMAINDER);  
			break;
 
    case 817 : if (DEBUG) { System.out.println("AdditiveExpression_NotName ::= AdditiveExpression_NotName + MultiplicativeExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.PLUS);  
			break;
 
    case 818 : if (DEBUG) { System.out.println("AdditiveExpression_NotName ::= Name + MultiplicativeExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.PLUS);  
			break;
 
    case 819 : if (DEBUG) { System.out.println("AdditiveExpression_NotName ::= AdditiveExpression_NotName - MultiplicativeExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.MINUS);  
			break;
 
    case 820 : if (DEBUG) { System.out.println("AdditiveExpression_NotName ::= Name - MultiplicativeExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.MINUS);  
			break;
 
    case 822 : if (DEBUG) { System.out.println("ShiftExpression_NotName ::= ShiftExpression_NotName << AdditiveExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.LEFT_SHIFT);  
			break;
 
    case 823 : if (DEBUG) { System.out.println("ShiftExpression_NotName ::= Name << AdditiveExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.LEFT_SHIFT);  
			break;
 
    case 824 : if (DEBUG) { System.out.println("ShiftExpression_NotName ::= ShiftExpression_NotName >> AdditiveExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.RIGHT_SHIFT);  
			break;
 
    case 825 : if (DEBUG) { System.out.println("ShiftExpression_NotName ::= Name >> AdditiveExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.RIGHT_SHIFT);  
			break;
 
    case 826 : if (DEBUG) { System.out.println("ShiftExpression_NotName ::= ShiftExpression_NotName >>> AdditiveExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.UNSIGNED_RIGHT_SHIFT);  
			break;
 
    case 827 : if (DEBUG) { System.out.println("ShiftExpression_NotName ::= Name >>> AdditiveExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.UNSIGNED_RIGHT_SHIFT);  
			break;
 
    case 829 : if (DEBUG) { System.out.println("RelationalExpression_NotName ::= ShiftExpression_NotName < ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.LESS);  
			break;
 
    case 830 : if (DEBUG) { System.out.println("RelationalExpression_NotName ::= Name < ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.LESS);  
			break;
 
    case 831 : if (DEBUG) { System.out.println("RelationalExpression_NotName ::= ShiftExpression_NotName > ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.GREATER);  
			break;
 
    case 832 : if (DEBUG) { System.out.println("RelationalExpression_NotName ::= Name > ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.GREATER);  
			break;
 
    case 833 : if (DEBUG) { System.out.println("RelationalExpression_NotName ::= RelationalExpression_NotName <= ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.LESS_EQUAL);  
			break;
 
    case 834 : if (DEBUG) { System.out.println("RelationalExpression_NotName ::= Name <= ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.LESS_EQUAL);  
			break;
 
    case 835 : if (DEBUG) { System.out.println("RelationalExpression_NotName ::= RelationalExpression_NotName >= ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.GREATER_EQUAL);  
			break;
 
    case 836 : if (DEBUG) { System.out.println("RelationalExpression_NotName ::= Name >= ShiftExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.GREATER_EQUAL);  
			break;
 
    case 838 : if (DEBUG) { System.out.println("InstanceofExpression_NotName ::= Name InstanceofRHS"); }  //-NLS-1
		    consumeInstanceOfExpressionWithName();  
			break;
 
    case 839 : if (DEBUG) { System.out.println("InstanceofExpression_NotName ::= InstanceofExpression_NotName InstanceofRHS"); }  //-NLS-1
		    consumeInstanceOfExpression();  
			break;
 
    case 841 : if (DEBUG) { System.out.println("EqualityExpression_NotName ::= EqualityExpression_NotName == InstanceofExpression"); }  //-NLS-1
		    consumeEqualityExpression(OperatorIds.EQUAL_EQUAL);  
			break;
 
    case 842 : if (DEBUG) { System.out.println("EqualityExpression_NotName ::= Name == InstanceofExpression"); }  //-NLS-1
		    consumeEqualityExpressionWithName(OperatorIds.EQUAL_EQUAL);  
			break;
 
    case 843 : if (DEBUG) { System.out.println("EqualityExpression_NotName ::= EqualityExpression_NotName != InstanceofExpression"); }  //-NLS-1
		    consumeEqualityExpression(OperatorIds.NOT_EQUAL);  
			break;
 
    case 844 : if (DEBUG) { System.out.println("EqualityExpression_NotName ::= Name != InstanceofExpression"); }  //-NLS-1
		    consumeEqualityExpressionWithName(OperatorIds.NOT_EQUAL);  
			break;
 
    case 846 : if (DEBUG) { System.out.println("AndExpression_NotName ::= AndExpression_NotName & EqualityExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.AND);  
			break;
 
    case 847 : if (DEBUG) { System.out.println("AndExpression_NotName ::= Name & EqualityExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.AND);  
			break;
 
    case 849 : if (DEBUG) { System.out.println("ExclusiveOrExpression_NotName ::= ExclusiveOrExpression_NotName ^ AndExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.XOR);  
			break;
 
    case 850 : if (DEBUG) { System.out.println("ExclusiveOrExpression_NotName ::= Name ^ AndExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.XOR);  
			break;
 
    case 852 : if (DEBUG) { System.out.println("InclusiveOrExpression_NotName ::= InclusiveOrExpression_NotName | ExclusiveOrExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.OR);  
			break;
 
    case 853 : if (DEBUG) { System.out.println("InclusiveOrExpression_NotName ::= Name | ExclusiveOrExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.OR);  
			break;
 
    case 855 : if (DEBUG) { System.out.println("ConditionalAndExpression_NotName ::= ConditionalAndExpression_NotName && InclusiveOrExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.AND_AND);  
			break;
 
    case 856 : if (DEBUG) { System.out.println("ConditionalAndExpression_NotName ::= Name && InclusiveOrExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.AND_AND);  
			break;
 
    case 858 : if (DEBUG) { System.out.println("ConditionalOrExpression_NotName ::= ConditionalOrExpression_NotName || ConditionalAndExpression"); }  //-NLS-1
		    consumeBinaryExpression(OperatorIds.OR_OR);  
			break;
 
    case 859 : if (DEBUG) { System.out.println("ConditionalOrExpression_NotName ::= Name || ConditionalAndExpression"); }  //-NLS-1
		    consumeBinaryExpressionWithName(OperatorIds.OR_OR);  
			break;
 
    case 861 : if (DEBUG) { System.out.println("ConditionalExpression_NotName ::= ConditionalOrExpression_NotName ? Expression : ConditionalExpression"); }  //-NLS-1
		    consumeConditionalExpression(OperatorIds.QUESTIONCOLON) ;  
			break;
 
    case 862 : if (DEBUG) { System.out.println("ConditionalExpression_NotName ::= Name ? Expression : ConditionalExpression"); }  //-NLS-1
		    consumeConditionalExpressionWithName(OperatorIds.QUESTIONCOLON) ;  
			break;
 
    case 866 : if (DEBUG) { System.out.println("AnnotationTypeDeclarationHeaderName ::= Modifiers @ PushRealModifiers interface Identifier"); }  //-NLS-1
		    consumeAnnotationTypeDeclarationHeaderName() ;  
			break;
 
    case 867 : if (DEBUG) { System.out.println("AnnotationTypeDeclarationHeaderName ::= Modifiers @ PushRealModifiers interface Identifier TypeParameters"); }  //-NLS-1
		    consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters() ;  
			break;
 
    case 868 : if (DEBUG) { System.out.println("AnnotationTypeDeclarationHeaderName ::= @ PushModifiersForHeader interface Identifier TypeParameters"); }  //-NLS-1
		    consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters() ;  
			break;
 
    case 869 : if (DEBUG) { System.out.println("AnnotationTypeDeclarationHeaderName ::= @ PushModifiersForHeader interface Identifier"); }  //-NLS-1
		    consumeAnnotationTypeDeclarationHeaderName() ;  
			break;
 
    case 870 : if (DEBUG) { System.out.println("AnnotationTypeDeclarationHeader ::= AnnotationTypeDeclarationHeaderName ClassHeaderExtendsopt ClassHeaderImplementsopt"); }  //-NLS-1
		    consumeAnnotationTypeDeclarationHeader() ;  
			break;
 
    case 871 : if (DEBUG) { System.out.println("AnnotationTypeDeclaration ::= AnnotationTypeDeclarationHeader AnnotationTypeBody"); }  //-NLS-1
		    consumeAnnotationTypeDeclaration() ;  
			break;
 
    case 873 : if (DEBUG) { System.out.println("AnnotationTypeMemberDeclarationsopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyAnnotationTypeMemberDeclarationsopt() ;  
			break;
 
    case 874 : if (DEBUG) { System.out.println("AnnotationTypeMemberDeclarationsopt ::= NestedType AnnotationTypeMemberDeclarations"); }  //-NLS-1
		    consumeAnnotationTypeMemberDeclarationsopt() ;  
			break;
 
    case 876 : if (DEBUG) { System.out.println("AnnotationTypeMemberDeclarations ::= AnnotationTypeMemberDeclarations AnnotationTypeMemberDeclaration"); }  //-NLS-1
		    consumeAnnotationTypeMemberDeclarations() ;  
			break;
 
    case 877 : if (DEBUG) { System.out.println("AnnotationMethodHeaderName ::= Modifiersopt TypeParameters Type Identifier ("); }  //-NLS-1
		    consumeMethodHeaderNameWithTypeParameters(true);  
			break;
 
    case 878 : if (DEBUG) { System.out.println("AnnotationMethodHeaderName ::= Modifiersopt Type Identifier ("); }  //-NLS-1
		    consumeMethodHeaderName(true);  
			break;
 
    case 879 : if (DEBUG) { System.out.println("AnnotationMethodHeaderDefaultValueopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyMethodHeaderDefaultValue() ;  
			break;
 
    case 880 : if (DEBUG) { System.out.println("AnnotationMethodHeaderDefaultValueopt ::= DefaultValue"); }  //-NLS-1
		    consumeMethodHeaderDefaultValue();  
			break;
 
    case 881 : if (DEBUG) { System.out.println("AnnotationMethodHeader ::= AnnotationMethodHeaderName FormalParameterListopt MethodHeaderRightParen MethodHeaderExtendedDims AnnotationMethodHeaderDefaultValueopt"); }  //-NLS-1
		    consumeMethodHeader();  
			break;
 
    case 882 : if (DEBUG) { System.out.println("AnnotationTypeMemberDeclaration ::= AnnotationMethodHeader ;"); }  //-NLS-1
		    consumeAnnotationTypeMemberDeclaration() ;  
			break;
 
    case 890 : if (DEBUG) { System.out.println("AnnotationName ::= @ UnannotatableName"); }  //-NLS-1
		    consumeAnnotationName() ;  
			break;
 
    case 891 : if (DEBUG) { System.out.println("NormalAnnotation ::= AnnotationName ( MemberValuePairsopt )"); }  //-NLS-1
		    consumeNormalAnnotation(false) ;  
			break;
 
    case 892 : if (DEBUG) { System.out.println("MemberValuePairsopt ::= $Empty"); }  //-NLS-1
		    consumeEmptyMemberValuePairsopt() ;  
			break;
 
    case 895 : if (DEBUG) { System.out.println("MemberValuePairs ::= MemberValuePairs , MemberValuePair"); }  //-NLS-1
		    consumeMemberValuePairs() ;  
			break;
 
    case 896 : if (DEBUG) { System.out.println("MemberValuePair ::= SimpleName = EnterMemberValue MemberValue ExitMemberValue"); }  //-NLS-1
		    consumeMemberValuePair() ;  
			break;
 
    case 897 : if (DEBUG) { System.out.println("EnterMemberValue ::= $Empty"); }  //-NLS-1
		    consumeEnterMemberValue() ;  
			break;
 
    case 898 : if (DEBUG) { System.out.println("ExitMemberValue ::= $Empty"); }  //-NLS-1
		    consumeExitMemberValue() ;  
			break;
 
    case 900 : if (DEBUG) { System.out.println("MemberValue ::= Name"); }  //-NLS-1
		    consumeMemberValueAsName() ;  
			break;
 
    case 903 : if (DEBUG) { System.out.println("MemberValueArrayInitializer ::= EnterMemberValueArrayInitializer { PushLeftBrace MemberValues , }"); }  //-NLS-1
		    consumeMemberValueArrayInitializer() ;  
			break;
 
    case 904 : if (DEBUG) { System.out.println("MemberValueArrayInitializer ::= EnterMemberValueArrayInitializer { PushLeftBrace MemberValues }"); }  //-NLS-1
		    consumeMemberValueArrayInitializer() ;  
			break;
 
    case 905 : if (DEBUG) { System.out.println("MemberValueArrayInitializer ::= EnterMemberValueArrayInitializer { PushLeftBrace , }"); }  //-NLS-1
		    consumeEmptyMemberValueArrayInitializer() ;  
			break;
 
    case 906 : if (DEBUG) { System.out.println("MemberValueArrayInitializer ::= EnterMemberValueArrayInitializer { PushLeftBrace }"); }  //-NLS-1
		    consumeEmptyMemberValueArrayInitializer() ;  
			break;
 
    case 907 : if (DEBUG) { System.out.println("EnterMemberValueArrayInitializer ::= $Empty"); }  //-NLS-1
		    consumeEnterMemberValueArrayInitializer() ;  
			break;
 
    case 909 : if (DEBUG) { System.out.println("MemberValues ::= MemberValues , MemberValue"); }  //-NLS-1
		    consumeMemberValues() ;  
			break;
 
    case 910 : if (DEBUG) { System.out.println("MarkerAnnotation ::= AnnotationName"); }  //-NLS-1
		    consumeMarkerAnnotation(false) ;  
			break;
 
    case 911 : if (DEBUG) { System.out.println("SingleMemberAnnotationMemberValue ::= MemberValue"); }  //-NLS-1
		    consumeSingleMemberAnnotationMemberValue() ;  
			break;
 
    case 912 : if (DEBUG) { System.out.println("SingleMemberAnnotation ::= AnnotationName ( SingleMemberAnnotationMemberValue )"); }  //-NLS-1
		    consumeSingleMemberAnnotation(false) ;  
			break;
 
    case 913 : if (DEBUG) { System.out.println("RecoveryMethodHeaderName ::= Modifiersopt TypeParameters Type Identifier ("); }  //-NLS-1
		    consumeRecoveryMethodHeaderNameWithTypeParameters();  
			break;
 
    case 914 : if (DEBUG) { System.out.println("RecoveryMethodHeaderName ::= Modifiersopt Type Identifier ("); }  //-NLS-1
		    consumeRecoveryMethodHeaderName();  
			break;
 
    case 915 : if (DEBUG) { System.out.println("RecoveryMethodHeaderName ::= ModifiersWithDefault TypeParameters Type Identifier ("); }  //-NLS-1
		    consumeRecoveryMethodHeaderNameWithTypeParameters();  
			break;
 
    case 916 : if (DEBUG) { System.out.println("RecoveryMethodHeaderName ::= ModifiersWithDefault Type Identifier ("); }  //-NLS-1
		    consumeRecoveryMethodHeaderName();  
			break;
 
    case 917 : if (DEBUG) { System.out.println("RecoveryMethodHeader ::= RecoveryMethodHeaderName FormalParameterListopt MethodHeaderRightParen MethodHeaderExtendedDims AnnotationMethodHeaderDefaultValueopt"); }  //-NLS-1
		    consumeMethodHeader();  
			break;
 
    case 918 : if (DEBUG) { System.out.println("RecoveryMethodHeader ::= RecoveryMethodHeaderName FormalParameterListopt MethodHeaderRightParen MethodHeaderExtendedDims MethodHeaderThrowsClause"); }  //-NLS-1
		    consumeMethodHeader();  
			break;
 
	}
}
