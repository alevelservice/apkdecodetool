package lombok.javac.handlers;

import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.util.Context;
import com.sun.tools.javac.util.List;
import com.sun.tools.javac.util.ListBuffer;
import com.sun.tools.javac.util.Name;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.ConfigurationKeys;
import lombok.Singular;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.HandlerPriority;
import lombok.core.configuration.CheckerFrameworkVersion;
import lombok.core.handlers.HandlerUtil;
import lombok.javac.Javac;
import lombok.javac.JavacAnnotationHandler;
import lombok.javac.JavacNode;
import lombok.javac.JavacTreeMaker;
import lombok.javac.handlers.JavacHandlerUtil;
import lombok.javac.handlers.JavacSingularsRecipes;

@HandlerPriority(-1024)
/* loaded from: mmessage.apk:lombok/javac/handlers/HandleBuilder.SCL.lombok */
public class HandleBuilder extends JavacAnnotationHandler<Builder> {
    private HandleConstructor handleConstructor = new HandleConstructor();
    static final String CLEAN_FIELD_NAME = "$lombokUnclean";
    static final String CLEAN_METHOD_NAME = "$lombokClean";
    static final String TO_BUILDER_METHOD_NAME = "toBuilder";
    static final String DEFAULT_PREFIX = "$default$";
    static final String SET_PREFIX = "$set";
    static final String VALUE_PREFIX = "$value";
    static final String BUILDER_TEMP_VAR = "builder";
    static final String TO_BUILDER_NOT_SUPPORTED = "@Builder(toBuilder=true) is only supported if you return your own type.";
    private static /* synthetic */ int[] $SWITCH_TABLE$lombok$javac$handlers$JavacHandlerUtil$MemberExistsResult;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: mmessage.apk:lombok/javac/handlers/HandleBuilder$BuilderFieldData.SCL.lombok */
    public static class BuilderFieldData {
        List<JCTree.JCAnnotation> annotations;
        JCTree.JCExpression type;
        Name rawName;
        Name name;
        Name builderFieldName;
        Name nameOfDefaultProvider;
        Name nameOfSetFlag;
        JavacSingularsRecipes.SingularData singularData;
        Builder.ObtainVia obtainVia;
        JavacNode obtainViaNode;
        JavacNode originalFieldNode;
        java.util.List<JavacNode> createdFields = new ArrayList();
    }

    static /* synthetic */ int[] $SWITCH_TABLE$lombok$javac$handlers$JavacHandlerUtil$MemberExistsResult() {
        int[] iArr = $SWITCH_TABLE$lombok$javac$handlers$JavacHandlerUtil$MemberExistsResult;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[JavacHandlerUtil.MemberExistsResult.valuesCustom().length];
        try {
            iArr2[JavacHandlerUtil.MemberExistsResult.EXISTS_BY_LOMBOK.ordinal()] = 2;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[JavacHandlerUtil.MemberExistsResult.EXISTS_BY_USER.ordinal()] = 3;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[JavacHandlerUtil.MemberExistsResult.NOT_EXISTS.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        $SWITCH_TABLE$lombok$javac$handlers$JavacHandlerUtil$MemberExistsResult = iArr2;
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean toBoolean(Object expr, boolean defaultValue) {
        if (expr == null) {
            return defaultValue;
        }
        if (expr instanceof JCTree.JCLiteral) {
            return ((Integer) ((JCTree.JCLiteral) expr).value).intValue() != 0;
        }
        return ((Boolean) expr).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: mmessage.apk:lombok/javac/handlers/HandleBuilder$BuilderJob.SCL.lombok */
    public static class BuilderJob {
        CheckerFrameworkVersion checkerFramework;
        JavacNode parentType;
        String builderMethodName;
        String buildMethodName;
        boolean isStatic;
        List<JCTree.JCTypeParameter> typeParams;
        List<JCTree.JCTypeParameter> builderTypeParams;
        JavacNode sourceNode;
        java.util.List<BuilderFieldData> builderFields;
        AccessLevel accessInners;
        AccessLevel accessOuters;
        boolean oldFluent;
        boolean oldChain;
        boolean toBuilder;
        JavacNode builderType;
        String builderClassName;

        void init(AnnotationValues<Builder> annValues, Builder ann, JavacNode node) {
            this.accessOuters = ann.access();
            if (this.accessOuters == null) {
                this.accessOuters = AccessLevel.PUBLIC;
            }
            if (this.accessOuters == AccessLevel.NONE) {
                this.sourceNode.addError("AccessLevel.NONE is not valid here");
                this.accessOuters = AccessLevel.PUBLIC;
            }
            this.accessInners = this.accessOuters == AccessLevel.PROTECTED ? AccessLevel.PUBLIC : this.accessOuters;
            this.oldFluent = HandleBuilder.toBoolean(annValues.getActualExpression("fluent"), true);
            this.oldChain = HandleBuilder.toBoolean(annValues.getActualExpression("chain"), true);
            this.builderMethodName = ann.builderMethodName();
            this.buildMethodName = ann.buildMethodName();
            this.builderClassName = getBuilderClassNameTemplate(node, ann.builderClassName());
            this.toBuilder = ann.toBuilder();
            if (this.builderMethodName == null) {
                this.builderMethodName = HandleBuilder.BUILDER_TEMP_VAR;
            }
            if (this.buildMethodName == null) {
                this.buildMethodName = "build";
            }
            if (this.builderClassName == null) {
                this.builderClassName = "";
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static String getBuilderClassNameTemplate(JavacNode node, String override) {
            if (override != null && !override.isEmpty()) {
                return override;
            }
            String override2 = (String) node.getAst().readConfiguration(ConfigurationKeys.BUILDER_CLASS_NAME);
            return (override2 == null || override2.isEmpty()) ? "*Builder" : override2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String replaceBuilderClassName(Name name) {
            return replaceBuilderClassName(name.toString(), this.builderClassName);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String replaceBuilderClassName(String name, String template) {
            return template.indexOf(42) == -1 ? template : template.replace("*", name);
        }

        JCTree.JCExpression createBuilderParentTypeReference() {
            return JavacHandlerUtil.namePlusTypeParamsToTypeReference(this.parentType.getTreeMaker(), this.parentType, this.typeParams);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Name getBuilderClassName() {
            return this.parentType.toName(this.builderClassName);
        }

        List<JCTree.JCTypeParameter> copyTypeParams() {
            return JavacHandlerUtil.copyTypeParams(this.sourceNode, this.typeParams);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Name toName(String name) {
            return this.parentType.toName(name);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Context getContext() {
            return this.parentType.getContext();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public JavacTreeMaker getTreeMaker() {
            return this.parentType.getTreeMaker();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x087c, code lost:
    
        generateBuilderFields(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0884, code lost:
    
        if (r23 == false) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0887, code lost:
    
        r0 = r0.getTreeMaker();
        r0 = r0.VarDef(r0.Modifiers(2), r0.builderType.toName(lombok.javac.handlers.HandleBuilder.CLEAN_FIELD_NAME), r0.TypeIdent(lombok.javac.Javac.CTC_BOOLEAN), null);
        lombok.javac.handlers.JavacHandlerUtil.injectFieldAndMarkGenerated(r0.builderType, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x08cd, code lost:
    
        if (lombok.javac.handlers.JavacHandlerUtil.constructorExists(r0.builderType) != lombok.javac.handlers.JavacHandlerUtil.MemberExistsResult.NOT_EXISTS) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x08d0, code lost:
    
        r0 = lombok.javac.handlers.HandleConstructor.createConstructor(lombok.AccessLevel.PACKAGE, com.sun.tools.javac.util.List.nil(), r0.builderType, com.sun.tools.javac.util.List.nil(), false, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x08e7, code lost:
    
        if (r0 == null) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x08ea, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r0.builderType, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x08f4, code lost:
    
        r0 = r0.builderFields.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0925, code lost:
    
        if (r0.hasNext() != false) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0903, code lost:
    
        makePrefixedSetterMethodsForBuilder(r0, r0.next(), r0.setterPrefix());
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0928, code lost:
    
        r25 = lombok.javac.handlers.JavacHandlerUtil.methodExists(r0.buildMethodName, r0.builderType, -1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x093d, code lost:
    
        if (r25 != lombok.javac.handlers.JavacHandlerUtil.MemberExistsResult.EXISTS_BY_LOMBOK) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0940, code lost:
    
        r25 = lombok.javac.handlers.JavacHandlerUtil.methodExists(r0.buildMethodName, r0.builderType, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0955, code lost:
    
        if (r25 != lombok.javac.handlers.JavacHandlerUtil.MemberExistsResult.NOT_EXISTS) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0958, code lost:
    
        r0 = generateBuildMethod(r0, r21, r19, r20, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x096a, code lost:
    
        if (r0 == null) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x096d, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r13);
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r0.builderType, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x098d, code lost:
    
        if (lombok.javac.handlers.JavacHandlerUtil.methodExists("toString", r0.builderType, 0) != lombok.javac.handlers.JavacHandlerUtil.MemberExistsResult.NOT_EXISTS) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0990, code lost:
    
        r0 = new java.util.ArrayList<>();
        r0 = r0.builderFields.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x09f4, code lost:
    
        if (r0.hasNext() != false) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x09a8, code lost:
    
        r0 = r0.next().createdFields.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x09ea, code lost:
    
        if (r0.hasNext() != false) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x09c3, code lost:
    
        r0 = r0.next();
        r0.add(new lombok.core.handlers.InclusionExclusionUtils.Included<>(r0, null, true, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x09f7, code lost:
    
        r0 = lombok.javac.handlers.HandleToString.createToString(r0.builderType, r0, true, false, lombok.core.handlers.HandlerUtil.FieldAccess.ALWAYS_FIELD, r0.sourceNode);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0a0f, code lost:
    
        if (r0 == null) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0a12, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r0.builderType, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0a1e, code lost:
    
        if (r23 == false) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0a21, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r0.builderType, generateCleanMethod(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0a31, code lost:
    
        if (r17 == false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0a45, code lost:
    
        if (lombok.javac.handlers.JavacHandlerUtil.methodExists(r0.builderMethodName, r0.parentType, -1) == lombok.javac.handlers.JavacHandlerUtil.MemberExistsResult.NOT_EXISTS) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0a48, code lost:
    
        r17 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0a4d, code lost:
    
        if (r17 == false) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0a50, code lost:
    
        r0 = generateBuilderMethod(r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0a61, code lost:
    
        if (r0 == null) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0a64, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r0.parentType, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0a73, code lost:
    
        if (r0.toBuilder == false) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0a88, code lost:
    
        switch($SWITCH_TABLE$lombok$javac$handlers$JavacHandlerUtil$MemberExistsResult()[lombok.javac.handlers.JavacHandlerUtil.methodExists(lombok.javac.handlers.HandleBuilder.TO_BUILDER_METHOD_NAME, r0.parentType, 0).ordinal()]) {
            case 1: goto L269;
            case 2: goto L279;
            case 3: goto L267;
            default: goto L279;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0aa4, code lost:
    
        r13.addWarning("Not generating toBuilder() as it already exists.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0aab, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0aac, code lost:
    
        r25 = r0.typeParams;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0ab5, code lost:
    
        if (r16 == null) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0ab8, code lost:
    
        r0 = new com.sun.tools.javac.util.ListBuffer<>();
        r0 = r0.getTreeMaker();
        r0 = r16.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0af7, code lost:
    
        if (r0.hasNext() != false) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0ad4, code lost:
    
        r0 = r0.next();
        r0.append(r0.TypeParameter(r0, com.sun.tools.javac.util.List.nil()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0afa, code lost:
    
        r25 = r0.toList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0b01, code lost:
    
        r0 = generateToBuilderMethod(r0, r25, r0.setterPrefix());
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0b14, code lost:
    
        if (r0 == null) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0b17, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r13);
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r0.parentType, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0b2a, code lost:
    
        if (r24 == null) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0b2f, code lost:
    
        if (r17 == false) goto L334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0b32, code lost:
    
        r0 = r24.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0b57, code lost:
    
        if (r0.hasNext() != false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0b3c, code lost:
    
        r0.next().addWarning("@Builder will ignore the initializing expression entirely. If you want the initializing expression to serve as default, add @Builder.Default. If it is not supposed to be settable during building, make the field final.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0b5a, code lost:
    
        return;
     */
    @Override // lombok.javac.JavacAnnotationHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(lombok.core.AnnotationValues<lombok.Builder> r11, com.sun.tools.javac.tree.JCTree.JCAnnotation r12, lombok.javac.JavacNode r13) {
        /*
            Method dump skipped, instructions count: 2907
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: lombok.javac.handlers.HandleBuilder.handle(lombok.core.AnnotationValues, com.sun.tools.javac.tree.JCTree$JCAnnotation, lombok.javac.JavacNode):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String returnTypeToBuilderClassName(JavacNode annotationNode, JCTree.JCClassDecl td, JCTree.JCExpression returnType, List<JCTree.JCTypeParameter> typeParams) {
        String replStr = null;
        if (returnType instanceof JCTree.JCFieldAccess) {
            replStr = ((JCTree.JCFieldAccess) returnType).name.toString();
        } else if (returnType instanceof JCTree.JCIdent) {
            Name n = ((JCTree.JCIdent) returnType).name;
            Iterator it = typeParams.iterator();
            while (it.hasNext()) {
                JCTree.JCTypeParameter tp = (JCTree.JCTypeParameter) it.next();
                if (tp.name.equals(n)) {
                    annotationNode.addError("@Builder requires specifying 'builderClassName' if used on methods with a type parameter as return type.");
                    return null;
                }
            }
            replStr = n.toString();
        } else if (returnType instanceof JCTree.JCPrimitiveTypeTree) {
            replStr = returnType.toString();
            if (Character.isLowerCase(replStr.charAt(0))) {
                replStr = String.valueOf(Character.toTitleCase(replStr.charAt(0))) + replStr.substring(1);
            }
        } else if (returnType instanceof JCTree.JCTypeApply) {
            JCTree.JCFieldAccess jCFieldAccess = ((JCTree.JCTypeApply) returnType).clazz;
            if (jCFieldAccess instanceof JCTree.JCFieldAccess) {
                replStr = jCFieldAccess.name.toString();
            } else if (jCFieldAccess instanceof JCTree.JCIdent) {
                replStr = ((JCTree.JCIdent) jCFieldAccess).name.toString();
            }
        }
        if (replStr == null || replStr.isEmpty()) {
            System.err.println("Lombok bug ID#20140614-1651: javac HandleBuilder: return type to name conversion failed: " + returnType.getClass());
            replStr = td.name.toString();
        }
        return replStr;
    }

    private static String unpack(JCTree.JCExpression expr) {
        StringBuilder sb = new StringBuilder();
        unpack(sb, expr);
        return sb.toString();
    }

    private static void unpack(StringBuilder sb, JCTree.JCExpression expr) {
        if (expr instanceof JCTree.JCIdent) {
            sb.append(((JCTree.JCIdent) expr).name.toString());
            return;
        }
        if (expr instanceof JCTree.JCFieldAccess) {
            JCTree.JCFieldAccess jcfa = (JCTree.JCFieldAccess) expr;
            unpack(sb, jcfa.selected);
            sb.append(".").append(jcfa.name.toString());
        } else {
            if (expr instanceof JCTree.JCTypeApply) {
                sb.setLength(0);
                sb.append("ERR:");
                sb.append("@Builder(toBuilder=true) is not supported if returning a type with generics applied to an intermediate.");
                sb.append("__ERR__");
                return;
            }
            sb.setLength(0);
            sb.append("ERR:");
            sb.append("Expected a type of some sort, not a " + expr.getClass().getName());
            sb.append("__ERR__");
        }
    }

    private JCTree.JCMethodDecl generateToBuilderMethod(BuilderJob job, List<JCTree.JCTypeParameter> typeParameters, String prefix) {
        JCTree.JCMethodInvocation inv;
        JavacTreeMaker maker = job.getTreeMaker();
        JCTree.JCMethodInvocation NewClass = maker.NewClass(null, List.nil(), JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, job.parentType, job.toName(job.builderClassName), !job.isStatic, job.builderTypeParams), List.nil(), null);
        ListBuffer<JCTree.JCStatement> preStatements = null;
        ListBuffer<JCTree.JCStatement> statements = new ListBuffer<>();
        for (BuilderFieldData bfd : job.builderFields) {
            String setterPrefix = !prefix.isEmpty() ? prefix : job.oldFluent ? "" : "set";
            String prefixedSetterName = bfd.name.toString();
            if (!setterPrefix.isEmpty()) {
                prefixedSetterName = HandlerUtil.buildAccessorName(job.sourceNode, setterPrefix, prefixedSetterName);
            }
            Name setterName = job.toName(prefixedSetterName);
            JCTree.JCExpression[] tgt = new JCTree.JCExpression[bfd.singularData == null ? 1 : 2];
            if (bfd.obtainVia == null || !bfd.obtainVia.field().isEmpty()) {
                for (int i = 0; i < tgt.length; i++) {
                    tgt[i] = maker.Select(maker.Ident(job.toName("this")), bfd.obtainVia == null ? bfd.rawName : job.toName(bfd.obtainVia.field()));
                }
            } else {
                String name = bfd.obtainVia.method();
                if (bfd.obtainVia.isStatic()) {
                    inv = maker.Apply(JavacHandlerUtil.typeParameterNames(maker, typeParameters), maker.Select(maker.Ident(job.toName(job.parentType.getName())), job.toName(name)), List.of(maker.Ident(job.toName("this"))));
                } else {
                    inv = maker.Apply(List.nil(), maker.Select(maker.Ident(job.toName("this")), job.toName(name)), List.nil());
                }
                for (int i2 = 0; i2 < tgt.length; i2++) {
                    tgt[i2] = maker.Ident(bfd.name);
                }
                JCTree.JCExpression varType = JavacHandlerUtil.cloneType(maker, bfd.type, job.sourceNode);
                if (preStatements == null) {
                    preStatements = new ListBuffer<>();
                }
                preStatements.append(maker.VarDef(maker.Modifiers(16L), bfd.name, varType, inv));
            }
            if (bfd.singularData == null) {
                JCTree.JCExpression arg = tgt[0];
                NewClass = maker.Apply(List.nil(), maker.Select(NewClass, setterName), List.of(arg));
            } else {
                statements.append(maker.If(maker.Binary(Javac.CTC_NOT_EQUAL, tgt[0], maker.Literal(Javac.CTC_BOT, null)), maker.Exec(maker.Apply(List.nil(), maker.Select(maker.Ident(job.toName(BUILDER_TEMP_VAR)), setterName), List.of(tgt[1]))), null));
            }
        }
        if (!statements.isEmpty()) {
            JCTree.JCExpression tempVarType = JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, job.parentType, job.getBuilderClassName(), !job.isStatic, typeParameters);
            statements.prepend(maker.VarDef(maker.Modifiers(16L), job.toName(BUILDER_TEMP_VAR), tempVarType, NewClass));
            statements.append(maker.Return(maker.Ident(job.toName(BUILDER_TEMP_VAR))));
        } else {
            statements.append(maker.Return(NewClass));
        }
        if (preStatements != null) {
            preStatements.appendList(statements);
            statements = preStatements;
        }
        JCTree.JCBlock body = maker.Block(0L, statements.toList());
        List<JCTree.JCAnnotation> annsOnParamType = List.nil();
        if (job.checkerFramework.generateUnique()) {
            annsOnParamType = List.of(maker.Annotation(JavacHandlerUtil.genTypeRef(job.parentType, CheckerFrameworkVersion.NAME__UNIQUE), List.nil()));
        }
        JCTree.JCMethodDecl methodDef = maker.MethodDef(maker.Modifiers(JavacHandlerUtil.toJavacModifier(job.accessOuters)), job.toName(TO_BUILDER_METHOD_NAME), JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, job.parentType, job.getBuilderClassName(), !job.isStatic, typeParameters, annsOnParamType), List.nil(), List.nil(), List.nil(), body, null);
        JavacHandlerUtil.createRelevantNonNullAnnotation(job.parentType, methodDef);
        return methodDef;
    }

    private JCTree.JCMethodDecl generateCleanMethod(BuilderJob job) {
        JavacTreeMaker maker = job.getTreeMaker();
        ListBuffer<JCTree.JCStatement> statements = new ListBuffer<>();
        for (BuilderFieldData bfd : job.builderFields) {
            if (bfd.singularData != null && bfd.singularData.getSingularizer() != null) {
                bfd.singularData.getSingularizer().appendCleaningCode(bfd.singularData, job.builderType, job.sourceNode, statements);
            }
        }
        statements.append(maker.Exec(maker.Assign(maker.Select(maker.Ident(job.toName("this")), job.toName(CLEAN_FIELD_NAME)), maker.Literal(Javac.CTC_BOOLEAN, 0))));
        JCTree.JCBlock body = maker.Block(0L, statements.toList());
        JCTree.JCMethodDecl method = maker.MethodDef(maker.Modifiers(JavacHandlerUtil.toJavacModifier(AccessLevel.PRIVATE)), job.toName(CLEAN_METHOD_NAME), maker.Type(Javac.createVoidType(job.builderType.getSymbolTable(), Javac.CTC_VOID)), List.nil(), List.nil(), List.nil(), body, null);
        JavacHandlerUtil.recursiveSetGeneratedBy(method, job.sourceNode);
        return method;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JCTree.JCVariableDecl generateReceiver(BuilderJob job) {
        JCTree.JCLiteral NewArray;
        if (!job.checkerFramework.generateCalledMethods()) {
            return null;
        }
        ArrayList<String> mandatories = new ArrayList<>();
        for (BuilderFieldData bfd : job.builderFields) {
            if (bfd.singularData == null && bfd.nameOfSetFlag == null) {
                mandatories.add(bfd.name.toString());
            }
        }
        JavacTreeMaker maker = job.getTreeMaker();
        if (mandatories.size() == 0) {
            return null;
        }
        if (mandatories.size() == 1) {
            NewArray = maker.Literal(mandatories.get(0));
        } else {
            List<JCTree.JCExpression> elems = List.nil();
            for (int i = mandatories.size() - 1; i >= 0; i--) {
                elems = elems.prepend(maker.Literal(mandatories.get(i)));
            }
            NewArray = maker.NewArray(null, List.nil(), elems);
        }
        JCTree.JCAnnotation recvAnno = maker.Annotation(JavacHandlerUtil.genTypeRef(job.builderType, CheckerFrameworkVersion.NAME__CALLED), List.of(NewArray));
        JCTree.JCClassDecl builderTypeNode = job.builderType.get();
        JCTree.JCVariableDecl recv = maker.VarDef(maker.Modifiers(8589934592L, List.nil()), job.toName("this"), JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, job.builderType, builderTypeNode.typarams, List.of(recvAnno)), null);
        return recv;
    }

    private JCTree.JCMethodDecl generateBuildMethod(BuilderJob job, Name staticName, JCTree.JCExpression returnType, List<JCTree.JCExpression> thrownExceptions, boolean addCleaning) {
        JCTree.JCMethodDecl methodDef;
        JavacTreeMaker maker = job.getTreeMaker();
        ListBuffer<JCTree.JCStatement> statements = new ListBuffer<>();
        if (addCleaning) {
            JCTree.JCIf ifUnclean = maker.If(maker.Unary(Javac.CTC_NOT, maker.Select(maker.Ident(job.toName("this")), job.toName(CLEAN_FIELD_NAME))), maker.Exec(maker.Apply(List.nil(), maker.Ident(job.toName(CLEAN_METHOD_NAME)), List.nil())), null);
            statements.append(ifUnclean);
        }
        for (BuilderFieldData bfd : job.builderFields) {
            if (bfd.singularData != null && bfd.singularData.getSingularizer() != null) {
                bfd.singularData.getSingularizer().appendBuildCode(bfd.singularData, job.builderType, job.sourceNode, statements, bfd.builderFieldName, "this");
            }
        }
        ListBuffer<JCTree.JCExpression> args = new ListBuffer<>();
        Name thisName = job.toName("this");
        for (BuilderFieldData bfd2 : job.builderFields) {
            if (bfd2.nameOfSetFlag != null) {
                statements.append(maker.VarDef(maker.Modifiers(0L), bfd2.builderFieldName, JavacHandlerUtil.cloneType(maker, bfd2.type, job.sourceNode), maker.Select(maker.Ident(thisName), bfd2.builderFieldName)));
                statements.append(maker.If(maker.Unary(Javac.CTC_NOT, maker.Select(maker.Ident(thisName), bfd2.nameOfSetFlag)), maker.Exec(maker.Assign(maker.Ident(bfd2.builderFieldName), maker.Apply(JavacHandlerUtil.typeParameterNames(maker, job.parentType.get().typarams), maker.Select(maker.Ident(job.parentType.get().name), bfd2.nameOfDefaultProvider), List.nil()))), null));
            }
            if (bfd2.nameOfSetFlag != null || (bfd2.singularData != null && bfd2.singularData.getSingularizer().shadowedDuringBuild())) {
                args.append(maker.Ident(bfd2.builderFieldName));
            } else {
                args.append(maker.Select(maker.Ident(thisName), bfd2.builderFieldName));
            }
        }
        if (addCleaning) {
            statements.append(maker.Exec(maker.Assign(maker.Select(maker.Ident(job.toName("this")), job.toName(CLEAN_FIELD_NAME)), maker.Literal(Javac.CTC_BOOLEAN, 1))));
        }
        if (staticName == null) {
            statements.append(maker.Return(maker.NewClass(null, List.nil(), returnType, args.toList(), null)));
        } else {
            ListBuffer<JCTree.JCExpression> typeParams = new ListBuffer<>();
            Iterator it = job.builderType.get().typarams.iterator();
            while (it.hasNext()) {
                JCTree.JCTypeParameter tp = (JCTree.JCTypeParameter) it.next();
                typeParams.append(maker.Ident(tp.name));
            }
            JCTree.JCExpression callee = maker.Ident(job.parentType.get().name);
            if (!job.isStatic) {
                callee = maker.Select(callee, job.toName("this"));
            }
            JCTree.JCMethodInvocation Apply = maker.Apply(typeParams.toList(), maker.Select(callee, staticName), args.toList());
            if ((returnType instanceof JCTree.JCPrimitiveTypeTree) && Javac.CTC_VOID.equals(JavacTreeMaker.TypeTag.typeTag((JCTree) returnType))) {
                statements.append(maker.Exec(Apply));
            } else {
                statements.append(maker.Return(Apply));
            }
        }
        JCTree.JCBlock body = maker.Block(0L, statements.toList());
        List<JCTree.JCAnnotation> annsOnMethod = job.checkerFramework.generateSideEffectFree() ? List.of(maker.Annotation(JavacHandlerUtil.genTypeRef(job.builderType, CheckerFrameworkVersion.NAME__SIDE_EFFECT_FREE), List.nil())) : List.nil();
        JCTree.JCVariableDecl recv = generateReceiver(job);
        JCTree.JCExpression returnTypeCopy = JavacHandlerUtil.cloneType(maker, returnType, job.sourceNode);
        if (recv != null && maker.hasMethodDefWithRecvParam()) {
            methodDef = maker.MethodDefWithRecvParam(maker.Modifiers(JavacHandlerUtil.toJavacModifier(job.accessInners), annsOnMethod), job.toName(job.buildMethodName), returnTypeCopy, List.nil(), recv, List.nil(), thrownExceptions, body, null);
        } else {
            methodDef = maker.MethodDef(maker.Modifiers(JavacHandlerUtil.toJavacModifier(job.accessInners), annsOnMethod), job.toName(job.buildMethodName), returnTypeCopy, List.nil(), List.nil(), thrownExceptions, body, null);
        }
        if (staticName == null) {
            JavacHandlerUtil.createRelevantNonNullAnnotation(job.builderType, methodDef);
        }
        return methodDef;
    }

    public static JCTree.JCMethodDecl generateDefaultProvider(Name methodName, JavacNode fieldNode, List<JCTree.JCTypeParameter> params, BuilderJob job) {
        JavacTreeMaker maker = fieldNode.getTreeMaker();
        JCTree.JCVariableDecl field = fieldNode.get();
        JCTree.JCNewArray jCNewArray = field.init;
        field.init = null;
        JCTree.JCReturn statement = maker.Return(null);
        JCTree.JCBlock body = maker.Block(0L, List.of(statement));
        JCTree.JCMethodDecl defaultProvider = maker.MethodDef(maker.Modifiers(10), methodName, JavacHandlerUtil.cloneType(maker, field.vartype, fieldNode), JavacHandlerUtil.copyTypeParams(fieldNode, params), List.nil(), List.nil(), body, null);
        if ((jCNewArray instanceof JCTree.JCNewArray) && (field.vartype instanceof JCTree.JCArrayTypeTree)) {
            JCTree.JCNewArray arrayInitializer = jCNewArray;
            JCTree.JCArrayTypeTree fieldType = field.vartype;
            if (arrayInitializer.elemtype == null) {
                arrayInitializer.elemtype = JavacHandlerUtil.cloneType(maker, fieldType.elemtype, fieldNode);
            }
        }
        JavacHandlerUtil.recursiveSetGeneratedBy(defaultProvider, job.sourceNode);
        statement.expr = jCNewArray;
        return defaultProvider;
    }

    public JCTree.JCMethodDecl generateBuilderMethod(BuilderJob job) {
        JCTree.JCNewClass NewClass;
        JavacTreeMaker maker = job.getTreeMaker();
        if (job.isStatic) {
            NewClass = maker.NewClass(null, List.nil(), JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, job.parentType, job.toName(job.builderClassName), false, job.typeParams), List.nil(), null);
        } else {
            NewClass = maker.NewClass(null, List.nil(), JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, null, job.toName(job.builderClassName), false, job.typeParams), List.nil(), null);
            NewClass.encl = maker.Ident(job.toName("this"));
        }
        JCTree.JCBlock body = maker.Block(0L, List.of(maker.Return(NewClass)));
        int modifiers = JavacHandlerUtil.toJavacModifier(job.accessOuters);
        if (job.isStatic) {
            modifiers |= 8;
        }
        List<JCTree.JCAnnotation> annsOnMethod = List.nil();
        if (job.checkerFramework.generateSideEffectFree()) {
            annsOnMethod = List.of(maker.Annotation(JavacHandlerUtil.genTypeRef(job.parentType, CheckerFrameworkVersion.NAME__SIDE_EFFECT_FREE), List.nil()));
        }
        List<JCTree.JCAnnotation> annsOnParamType = List.nil();
        if (job.checkerFramework.generateUnique()) {
            annsOnParamType = List.of(maker.Annotation(JavacHandlerUtil.genTypeRef(job.parentType, CheckerFrameworkVersion.NAME__UNIQUE), List.nil()));
        }
        JCTree.JCExpression returnType = JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, job.parentType, job.getBuilderClassName(), !job.isStatic, job.builderTypeParams, annsOnParamType);
        JCTree.JCMethodDecl methodDef = maker.MethodDef(maker.Modifiers(modifiers, annsOnMethod), job.toName(job.builderMethodName), returnType, job.copyTypeParams(), List.nil(), List.nil(), body, null);
        JavacHandlerUtil.createRelevantNonNullAnnotation(job.parentType, methodDef);
        return methodDef;
    }

    public void generateBuilderFields(BuilderJob job) {
        int len = job.builderFields.size();
        java.util.List<JavacNode> existing = new ArrayList<>();
        Iterator<JavacNode> it = job.builderType.down().iterator();
        while (it.hasNext()) {
            JavacNode child = it.next();
            if (child.getKind() == AST.Kind.FIELD) {
                existing.add(child);
            }
        }
        java.util.List<JCTree.JCVariableDecl> generated = new ArrayList<>();
        for (int i = len - 1; i >= 0; i--) {
            BuilderFieldData bfd = job.builderFields.get(i);
            if (bfd.singularData != null && bfd.singularData.getSingularizer() != null) {
                java.util.List<JavacNode> generateSingularFields = bfd.singularData.getSingularizer().generateFields(bfd.singularData, job.builderType, job.sourceNode);
                for (JavacNode field : generateSingularFields) {
                    generated.add(field.get());
                }
                bfd.createdFields.addAll(generateSingularFields);
            } else {
                JavacNode field2 = null;
                JavacNode setFlag = null;
                for (JavacNode exists : existing) {
                    Name n = exists.get().name;
                    if (n.equals(bfd.builderFieldName)) {
                        field2 = exists;
                    }
                    if (n.equals(bfd.nameOfSetFlag)) {
                        setFlag = exists;
                    }
                }
                JavacTreeMaker maker = job.getTreeMaker();
                if (field2 == null) {
                    JCTree.JCModifiers mods = maker.Modifiers(2L);
                    JCTree.JCVariableDecl newField = maker.VarDef(mods, bfd.builderFieldName, JavacHandlerUtil.cloneType(maker, bfd.type, job.sourceNode), null);
                    field2 = JavacHandlerUtil.injectFieldAndMarkGenerated(job.builderType, newField);
                    generated.add(newField);
                }
                if (setFlag == null && bfd.nameOfSetFlag != null) {
                    JCTree.JCModifiers mods2 = maker.Modifiers(2L);
                    JCTree.JCVariableDecl newField2 = maker.VarDef(mods2, bfd.nameOfSetFlag, maker.TypeIdent(Javac.CTC_BOOLEAN), null);
                    JavacHandlerUtil.injectFieldAndMarkGenerated(job.builderType, newField2);
                    generated.add(newField2);
                }
                bfd.createdFields.add(field2);
            }
        }
        for (JCTree.JCVariableDecl gen : generated) {
            JavacHandlerUtil.recursiveSetGeneratedBy(gen, job.sourceNode);
        }
    }

    public void makePrefixedSetterMethodsForBuilder(BuilderJob job, BuilderFieldData bfd, String prefix) {
        boolean deprecate = JavacHandlerUtil.isFieldDeprecated(bfd.originalFieldNode);
        if (bfd.singularData == null || bfd.singularData.getSingularizer() == null) {
            makePrefixedSetterMethodForBuilder(job, bfd, deprecate, prefix);
        } else {
            bfd.singularData.getSingularizer().generateMethods(job, bfd.singularData, deprecate);
        }
    }

    private void makePrefixedSetterMethodForBuilder(BuilderJob job, BuilderFieldData bfd, boolean deprecate, String prefix) {
        JavacNode fieldNode = bfd.createdFields.get(0);
        String setterPrefix = !prefix.isEmpty() ? prefix : job.oldFluent ? "" : "set";
        String setterName = HandlerUtil.buildAccessorName(job.sourceNode, setterPrefix, bfd.name.toString());
        Name setterName_ = job.builderType.toName(setterName);
        Iterator<JavacNode> it = job.builderType.down().iterator();
        while (it.hasNext()) {
            JavacNode child = it.next();
            if (child.getKind() == AST.Kind.METHOD) {
                JCTree.JCMethodDecl methodDecl = child.get();
                Name existingName = methodDecl.name;
                if (existingName.equals(setterName_) && !JavacHandlerUtil.isTolerate(fieldNode, methodDecl)) {
                    return;
                }
            }
        }
        JavacTreeMaker maker = fieldNode.getTreeMaker();
        List<JCTree.JCAnnotation> methodAnns = JavacHandlerUtil.findCopyableToSetterAnnotations(bfd.originalFieldNode);
        JCTree.JCMethodDecl newMethod = HandleSetter.createSetter(JavacHandlerUtil.toJavacModifier(job.accessInners), deprecate, fieldNode, maker, setterName, bfd.name, bfd.nameOfSetFlag, job.oldChain, job.sourceNode, methodAnns, bfd.annotations);
        JavacHandlerUtil.recursiveSetGeneratedBy(newMethod, job.sourceNode);
        if (job.sourceNode.up().getKind() == AST.Kind.METHOD) {
            copyJavadocFromParam(bfd.originalFieldNode.up(), newMethod, bfd.name.toString());
        } else {
            JavacHandlerUtil.copyJavadoc(bfd.originalFieldNode, newMethod, JavacHandlerUtil.CopyJavadoc.SETTER, true);
        }
        JavacHandlerUtil.injectMethod(job.builderType, newMethod);
    }

    private void copyJavadocFromParam(JavacNode from, JCTree.JCMethodDecl to, String param) {
        try {
            JCTree.JCCompilationUnit cu = from.top().get();
            String methodComment = Javac.getDocComment(cu, from.get());
            String newJavadoc = HandlerUtil.addReturnsThisIfNeeded(HandlerUtil.getParamJavadoc(methodComment, param));
            Javac.setDocComment(cu, to, newJavadoc);
        } catch (Exception unused) {
        }
    }

    public JavacNode makeBuilderClass(BuilderJob job) {
        JavacTreeMaker maker = job.getTreeMaker();
        int modifiers = JavacHandlerUtil.toJavacModifier(job.accessOuters);
        if (job.isStatic) {
            modifiers |= 8;
        }
        JCTree.JCModifiers mods = maker.Modifiers(modifiers);
        JCTree.JCClassDecl builder = maker.ClassDef(mods, job.getBuilderClassName(), job.copyTypeParams(), null, List.nil(), List.nil());
        JavacHandlerUtil.recursiveSetGeneratedBy(builder, job.sourceNode);
        return JavacHandlerUtil.injectType(job.parentType, builder);
    }

    private void addObtainVia(BuilderFieldData bfd, JavacNode node) {
        Iterator<JavacNode> it = node.down().iterator();
        while (it.hasNext()) {
            JavacNode child = it.next();
            if (JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) Builder.ObtainVia.class, child)) {
                AnnotationValues<Builder.ObtainVia> ann = JavacHandlerUtil.createAnnotation(Builder.ObtainVia.class, child);
                bfd.obtainVia = ann.getInstance();
                bfd.obtainViaNode = child;
                JavacHandlerUtil.deleteAnnotationIfNeccessary(child, (Class<? extends Annotation>) Builder.ObtainVia.class);
                return;
            }
        }
    }

    private JavacSingularsRecipes.SingularData getSingularData(JavacNode node, String setterPrefix) {
        Iterator<JavacNode> it = node.down().iterator();
        while (it.hasNext()) {
            JavacNode child = it.next();
            if (JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) Singular.class, child)) {
                Name pluralName = node.getKind() == AST.Kind.FIELD ? JavacHandlerUtil.removePrefixFromField(node) : node.get().name;
                AnnotationValues<Singular> ann = JavacHandlerUtil.createAnnotation(Singular.class, child);
                Singular singularInstance = ann.getInstance();
                JavacHandlerUtil.deleteAnnotationIfNeccessary(child, (Class<? extends Annotation>) Singular.class);
                String explicitSingular = singularInstance.value();
                if (explicitSingular.isEmpty()) {
                    if (Boolean.FALSE.equals(node.getAst().readConfiguration(ConfigurationKeys.SINGULAR_AUTO))) {
                        node.addError("The singular must be specified explicitly (e.g. @Singular(\"task\")) because auto singularization is disabled.");
                        explicitSingular = pluralName.toString();
                    } else {
                        explicitSingular = HandlerUtil.autoSingularize(pluralName.toString());
                        if (explicitSingular == null) {
                            node.addError("Can't singularize this name; please specify the singular explicitly (i.e. @Singular(\"sheep\"))");
                            explicitSingular = pluralName.toString();
                        }
                    }
                }
                Name singularName = node.toName(explicitSingular);
                JCTree.JCExpression type = null;
                if (node.get() instanceof JCTree.JCVariableDecl) {
                    type = node.get().vartype;
                }
                List<JCTree.JCExpression> typeArgs = List.nil();
                if (type instanceof JCTree.JCTypeApply) {
                    typeArgs = ((JCTree.JCTypeApply) type).arguments;
                    type = ((JCTree.JCTypeApply) type).clazz;
                }
                String name = type.toString();
                String targetFqn = JavacSingularsRecipes.get().toQualified(name);
                JavacSingularsRecipes.JavacSingularizer singularizer = JavacSingularsRecipes.get().getSingularizer(targetFqn, node);
                if (singularizer == null) {
                    node.addError("Lombok does not know how to create the singular-form builder methods for type '" + name + "'; they won't be generated.");
                    return null;
                }
                return new JavacSingularsRecipes.SingularData(child, singularName, pluralName, typeArgs, targetFqn, singularizer, singularInstance.ignoreNullCollections(), setterPrefix);
            }
        }
        return null;
    }
}
