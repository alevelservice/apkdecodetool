package lombok.launch;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.Keyframe;
import android.graphics.drawable.Drawable;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.CodeSource;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import kotlin.text.Typography;
import lombok.eclipse.EcjAugments;
import lombok.permit.Permit;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.adaptor.EclipseStarter;
import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.rewrite.ListRewrite;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.SourceField;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.TokenScanner;
import org.eclipse.jdt.internal.corext.refactoring.SearchResultGroup;
import org.eclipse.jdt.internal.corext.refactoring.structure.MemberVisibilityAdjustor;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.osgi.framework.Bundle;

/* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
/* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider.SCL.lombok */
final class PatchFixesHider {
    PatchFixesHider() {
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$Util.SCL.lombok */
    public static final class Util {
        private static ClassLoader shadowLoader;

        public static ClassLoader getShadowLoader() {
            if (shadowLoader == null) {
                try {
                    Class.forName("lombok.core.LombokNode");
                    shadowLoader = Util.class.getClassLoader();
                } catch (ClassNotFoundException unused) {
                    shadowLoader = Main.getShadowClassLoader();
                }
            }
            return shadowLoader;
        }

        public static Class<?> shadowLoadClass(String name) {
            try {
                return Class.forName(name, true, getShadowLoader());
            } catch (ClassNotFoundException e) {
                throw sneakyThrow(e);
            }
        }

        public static Method findMethod(Class<?> type, String name, Class<?>... clsArr) {
            try {
                return type.getDeclaredMethod(name, clsArr);
            } catch (NoSuchMethodException e) {
                throw sneakyThrow(e);
            }
        }

        public static Method findMethod(Class<?> type, String name, String... parameterTypes) {
            for (Method m : type.getDeclaredMethods()) {
                if (name.equals(m.getName()) && sameTypes(m.getParameterTypes(), parameterTypes)) {
                    return m;
                }
            }
            throw sneakyThrow(new NoSuchMethodException(String.valueOf(type.getName()) + "::" + name));
        }

        public static Method findMethodAnyArgs(Class<?> type, String name) {
            for (Method m : type.getDeclaredMethods()) {
                if (name.equals(m.getName())) {
                    return m;
                }
            }
            throw sneakyThrow(new NoSuchMethodException(String.valueOf(type.getName()) + "::" + name));
        }

        public static Object invokeMethod(Method method, Object... args) {
            try {
                return method.invoke(null, args);
            } catch (IllegalAccessException e) {
                throw sneakyThrow(e);
            } catch (InvocationTargetException e2) {
                throw sneakyThrow(e2.getCause());
            }
        }

        private static RuntimeException sneakyThrow(Throwable t) {
            if (t == null) {
                throw new NullPointerException("t");
            }
            sneakyThrow0(t);
            return null;
        }

        private static <T extends Throwable> void sneakyThrow0(Throwable t) throws Throwable {
            throw t;
        }

        private static boolean sameTypes(Class<?>[] clsArr, String[] typeNames) {
            if (clsArr.length != typeNames.length) {
                return false;
            }
            for (int i = 0; i < clsArr.length; i++) {
                if (!clsArr[i].getName().equals(typeNames[i])) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$LombokDeps.SCL.lombok */
    public static final class LombokDeps {
        public static final Method ADD_LOMBOK_NOTES;
        public static final Method POST_COMPILER_BYTES_STRING;
        public static final Method POST_COMPILER_OUTPUTSTREAM;
        public static final Method POST_COMPILER_BUFFEREDOUTPUTSTREAM_STRING_STRING;

        static {
            Class<?> shadowed = Util.shadowLoadClass("lombok.eclipse.agent.PatchFixesShadowLoaded");
            ADD_LOMBOK_NOTES = Util.findMethod(shadowed, "addLombokNotesToEclipseAboutDialog", (Class<?>[]) new Class[]{String.class, String.class});
            POST_COMPILER_BYTES_STRING = Util.findMethod(shadowed, "runPostCompiler", (Class<?>[]) new Class[]{byte[].class, String.class});
            POST_COMPILER_OUTPUTSTREAM = Util.findMethod(shadowed, "runPostCompiler", (Class<?>[]) new Class[]{OutputStream.class});
            POST_COMPILER_BUFFEREDOUTPUTSTREAM_STRING_STRING = Util.findMethod(shadowed, "runPostCompiler", (Class<?>[]) new Class[]{BufferedOutputStream.class, String.class, String.class});
        }

        public static String addLombokNotesToEclipseAboutDialog(String origReturnValue, String key) {
            try {
                return (String) Util.invokeMethod(ADD_LOMBOK_NOTES, origReturnValue, key);
            } catch (Throwable unused) {
                return origReturnValue;
            }
        }

        public static byte[] runPostCompiler(byte[] bytes, String fileName) {
            return (byte[]) Util.invokeMethod(POST_COMPILER_BYTES_STRING, bytes, fileName);
        }

        public static OutputStream runPostCompiler(OutputStream out) throws IOException {
            return (OutputStream) Util.invokeMethod(POST_COMPILER_OUTPUTSTREAM, out);
        }

        public static BufferedOutputStream runPostCompiler(BufferedOutputStream out, String path, String name) throws IOException {
            return (BufferedOutputStream) Util.invokeMethod(POST_COMPILER_BUFFEREDOUTPUTSTREAM_STRING_STRING, out, path, name);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$Transform.SCL.lombok */
    public static final class Transform {
        private static Method TRANSFORM;
        private static Method TRANSFORM_SWAPPED;

        private static synchronized void init(ClassLoader prepend) {
            if (TRANSFORM != null) {
                return;
            }
            prependClassLoader(prepend);
            if (!prepend.toString().contains("org.eclipse.jdt.core:")) {
                ClassLoader jdtCoreClassLoader = findJdtCoreClassLoader(prepend);
                prependClassLoader(jdtCoreClassLoader);
            }
            Class<?> shadowed = Util.shadowLoadClass("lombok.eclipse.TransformEclipseAST");
            TRANSFORM = Util.findMethodAnyArgs(shadowed, "transform");
            TRANSFORM_SWAPPED = Util.findMethodAnyArgs(shadowed, "transform_swapped");
        }

        private static void prependClassLoader(ClassLoader classLoader) {
            Main.prependClassLoader(classLoader);
            try {
                ClassLoader currentClassLoader = Transform.class.getClassLoader();
                Method prependParentMethod = Permit.getMethod(currentClassLoader.getClass(), "prependParent", ClassLoader.class);
                Permit.invoke(prependParentMethod, currentClassLoader, classLoader);
            } catch (Throwable unused) {
            }
        }

        private static ClassLoader findJdtCoreClassLoader(ClassLoader classLoader) {
            try {
                Method getBundleMethod = Permit.getMethod(classLoader.getClass(), "getBundle", new Class[0]);
                Object bundle = Permit.invoke(getBundleMethod, classLoader, new Object[0]);
                Method getBundleContextMethod = Permit.getMethod(bundle.getClass(), "getBundleContext", new Class[0]);
                Object bundleContext = Permit.invoke(getBundleContextMethod, bundle, new Object[0]);
                Method getBundlesMethod = Permit.getMethod(bundleContext.getClass(), "getBundles", new Class[0]);
                Object[] bundles = (Object[]) Permit.invoke(getBundlesMethod, bundleContext, new Object[0]);
                for (Object searchBundle : bundles) {
                    if (searchBundle.toString().startsWith("org.eclipse.jdt.core_")) {
                        Method getModuleClassLoaderMethod = Permit.getMethod(searchBundle.getClass(), "getModuleClassLoader", Boolean.TYPE);
                        return (ClassLoader) Permit.invoke(getModuleClassLoaderMethod, searchBundle, false);
                    }
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }

        public static void transform(Object parser, Object ast) throws IOException {
            init(parser.getClass().getClassLoader());
            Util.invokeMethod(TRANSFORM, parser, ast);
        }

        public static void transform_swapped(Object ast, Object parser) throws IOException {
            init(parser.getClass().getClassLoader());
            Util.invokeMethod(TRANSFORM_SWAPPED, ast, parser);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$Delegate.SCL.lombok */
    public static final class Delegate {
        private static final Method HANDLE_DELEGATE_FOR_TYPE = null;
        private static final Method ADD_GENERATED_DELEGATE_METHODS = null;

        /*  JADX ERROR: ArrayIndexOutOfBoundsException in pass: SSATransform
            java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
            	at jadx.core.dex.visitors.ssa.RenameState.startVar(RenameState.java:58)
            	at jadx.core.dex.visitors.ssa.RenameState.init(RenameState.java:28)
            	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:129)
            	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:63)
            	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:44)
            */
        public Delegate(boolean r3) {
            /*
                r2 = this;
                r0 = r2
                super/*android.animation.AnimatorSet*/.start()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: lombok.launch.PatchFixesHider.Delegate.setCheckedIconEnabled(boolean):void");
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [void, android.animation.Animator] */
        /* JADX WARN: Type inference failed for: r0v3, types: [void, java.lang.reflect.Method] */
        /* JADX WARN: Type inference failed for: r0v5, types: [void, java.lang.reflect.Method] */
        static void setCheckedIcon(Drawable drawable) {
            ?? resume = Animator.resume();
            new Class[1][0] = Object.class;
            HANDLE_DELEGATE_FOR_TYPE = AnimatorListenerAdapter.onAnimationRepeat(resume);
            Class[] clsArr = {Object.class, Object.class};
            ADD_GENERATED_DELEGATE_METHODS = AnimatorListenerAdapter.onAnimationRepeat(resume);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [android.animation.Keyframe, java.lang.Boolean, float] */
        /* JADX WARN: Type inference failed for: r0v3, types: [void, android.animation.Keyframe] */
        public static void setCheckedIconEnabledResource(int i) {
            Method method = HANDLE_DELEGATE_FOR_TYPE;
            new Object[1][0] = i;
            ?? r0 = (Boolean) Keyframe.getType();
        }

        /*  JADX ERROR: Types fix failed
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:56)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:183)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:242)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:221)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:91)
            */
        /* JADX WARN: Failed to apply debug info
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnoreUnknown(TypeUpdate.java:74)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:137)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:133)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:75)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
         */
        /* JADX WARN: Not initialized variable reg: 7, insn: 0x000d: MOVE (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r7 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('javaElement' java.lang.Object)]), block:B:1:0x0000 */
        public static void setCheckedIconResource(int r6) {
            /*
                java.lang.reflect.Method r0 = lombok.launch.PatchFixesHider.Delegate.ADD_GENERATED_DELEGATE_METHODS
                r1 = 2
                java.lang.Object[] r1 = new java.lang.Object[r1]
                r2 = r1
                r3 = 0
                r4 = r6
                r2[r3] = r4
                r2 = r1
                r3 = 1
                r4 = r7
                r2[r3] = r4
                java.lang.Class r0 = android.animation.Keyframe.getType()
                java.lang.Object[] r0 = (java.lang.Object[]) r0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: lombok.launch.PatchFixesHider.Delegate.setCheckedIconResource(int):void");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$ValPortal.SCL.lombok */
    public static final class ValPortal {
        private static final Method COPY_INITIALIZATION_OF_FOR_EACH_ITERABLE;
        private static final Method COPY_INITIALIZATION_OF_LOCAL_DECLARATION;
        private static final Method ADD_FINAL_AND_VAL_ANNOTATION_TO_VARIABLE_DECLARATION_STATEMENT;
        private static final Method ADD_FINAL_AND_VAL_ANNOTATION_TO_SINGLE_VARIABLE_DECLARATION;

        static {
            Class<?> shadowed = Util.shadowLoadClass("lombok.eclipse.agent.PatchValEclipsePortal");
            COPY_INITIALIZATION_OF_FOR_EACH_ITERABLE = Util.findMethod(shadowed, "copyInitializationOfForEachIterable", (Class<?>[]) new Class[]{Object.class});
            COPY_INITIALIZATION_OF_LOCAL_DECLARATION = Util.findMethod(shadowed, "copyInitializationOfLocalDeclaration", (Class<?>[]) new Class[]{Object.class});
            ADD_FINAL_AND_VAL_ANNOTATION_TO_VARIABLE_DECLARATION_STATEMENT = Util.findMethod(shadowed, "addFinalAndValAnnotationToVariableDeclarationStatement", (Class<?>[]) new Class[]{Object.class, Object.class, Object.class});
            ADD_FINAL_AND_VAL_ANNOTATION_TO_SINGLE_VARIABLE_DECLARATION = Util.findMethod(shadowed, "addFinalAndValAnnotationToSingleVariableDeclaration", (Class<?>[]) new Class[]{Object.class, Object.class, Object.class});
        }

        public static void copyInitializationOfForEachIterable(Object parser) {
            Util.invokeMethod(COPY_INITIALIZATION_OF_FOR_EACH_ITERABLE, parser);
        }

        public static void copyInitializationOfLocalDeclaration(Object parser) {
            Util.invokeMethod(COPY_INITIALIZATION_OF_LOCAL_DECLARATION, parser);
        }

        public static void addFinalAndValAnnotationToVariableDeclarationStatement(Object converter, Object out, Object in) {
            Util.invokeMethod(ADD_FINAL_AND_VAL_ANNOTATION_TO_VARIABLE_DECLARATION_STATEMENT, converter, out, in);
        }

        public static void addFinalAndValAnnotationToSingleVariableDeclaration(Object converter, Object out, Object in) {
            Util.invokeMethod(ADD_FINAL_AND_VAL_ANNOTATION_TO_SINGLE_VARIABLE_DECLARATION, converter, out, in);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$Val.SCL.lombok */
    public static final class Val {
        private static final String BLOCK_SCOPE_SIG = "org.eclipse.jdt.internal.compiler.lookup.BlockScope";
        private static final String LOCAL_DECLARATION_SIG = "org.eclipse.jdt.internal.compiler.ast.LocalDeclaration";
        private static final String FOREACH_STATEMENT_SIG = "org.eclipse.jdt.internal.compiler.ast.ForeachStatement";
        private static final Method HANDLE_VAL_FOR_LOCAL_DECLARATION;
        private static final Method HANDLE_VAL_FOR_FOR_EACH;

        static {
            Class<?> shadowed = Util.shadowLoadClass("lombok.eclipse.agent.PatchVal");
            HANDLE_VAL_FOR_LOCAL_DECLARATION = Util.findMethod(shadowed, "handleValForLocalDeclaration", LOCAL_DECLARATION_SIG, BLOCK_SCOPE_SIG);
            HANDLE_VAL_FOR_FOR_EACH = Util.findMethod(shadowed, "handleValForForEach", FOREACH_STATEMENT_SIG, BLOCK_SCOPE_SIG);
        }

        public static boolean handleValForLocalDeclaration(Object local, Object scope) {
            return ((Boolean) Util.invokeMethod(HANDLE_VAL_FOR_LOCAL_DECLARATION, local, scope)).booleanValue();
        }

        public static boolean handleValForForEach(Object forEach, Object scope) {
            return ((Boolean) Util.invokeMethod(HANDLE_VAL_FOR_FOR_EACH, forEach, scope)).booleanValue();
        }

        public static TypeBinding skipResolveInitializerIfAlreadyCalled(Expression expr, BlockScope scope) {
            if (expr.resolvedType != null) {
                return expr.resolvedType;
            }
            try {
                return expr.resolveType(scope);
            } catch (ArrayIndexOutOfBoundsException unused) {
                return null;
            } catch (NullPointerException unused2) {
                return null;
            }
        }

        public static TypeBinding skipResolveInitializerIfAlreadyCalled2(Expression expr, BlockScope scope, LocalDeclaration decl) {
            if (decl != null && LocalDeclaration.class.equals(decl.getClass()) && expr.resolvedType != null) {
                return expr.resolvedType;
            }
            try {
                return expr.resolveType(scope);
            } catch (ArrayIndexOutOfBoundsException unused) {
                return null;
            } catch (NullPointerException unused2) {
                return null;
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$ExtensionMethod.SCL.lombok */
    public static final class ExtensionMethod {
        private static final String MESSAGE_SEND_SIG = "org.eclipse.jdt.internal.compiler.ast.MessageSend";
        private static final String TYPE_BINDING_SIG = "org.eclipse.jdt.internal.compiler.lookup.TypeBinding";
        private static final String SCOPE_SIG = "org.eclipse.jdt.internal.compiler.lookup.Scope";
        private static final String BLOCK_SCOPE_SIG = "org.eclipse.jdt.internal.compiler.lookup.BlockScope";
        private static final String TYPE_BINDINGS_SIG = "[Lorg.eclipse.jdt.internal.compiler.lookup.TypeBinding;";
        private static final String PROBLEM_REPORTER_SIG = "org.eclipse.jdt.internal.compiler.problem.ProblemReporter";
        private static final String METHOD_BINDING_SIG = "org.eclipse.jdt.internal.compiler.lookup.MethodBinding";
        private static final String AST_NODE_SIG = "org.eclipse.jdt.internal.compiler.ast.ASTNode";
        private static final Method RESOLVE_TYPE;
        private static final Method ERROR_NO_METHOD_FOR;
        private static final Method INVALID_METHOD;
        private static final Method INVALID_METHOD2;
        private static final Method NON_STATIC_ACCESS_TO_STATIC_METHOD;
        private static final Method MODIFY_METHOD_PATTERN;

        static {
            Class<?> shadowed = Util.shadowLoadClass("lombok.eclipse.agent.PatchExtensionMethod");
            RESOLVE_TYPE = Util.findMethod(shadowed, "resolveType", TYPE_BINDING_SIG, MESSAGE_SEND_SIG, BLOCK_SCOPE_SIG);
            ERROR_NO_METHOD_FOR = Util.findMethod(shadowed, "errorNoMethodFor", PROBLEM_REPORTER_SIG, MESSAGE_SEND_SIG, TYPE_BINDING_SIG, TYPE_BINDINGS_SIG);
            INVALID_METHOD = Util.findMethod(shadowed, "invalidMethod", PROBLEM_REPORTER_SIG, MESSAGE_SEND_SIG, METHOD_BINDING_SIG);
            INVALID_METHOD2 = Util.findMethod(shadowed, "invalidMethod", PROBLEM_REPORTER_SIG, MESSAGE_SEND_SIG, METHOD_BINDING_SIG, SCOPE_SIG);
            NON_STATIC_ACCESS_TO_STATIC_METHOD = Util.findMethod(shadowed, "nonStaticAccessToStaticMethod", PROBLEM_REPORTER_SIG, AST_NODE_SIG, METHOD_BINDING_SIG, MESSAGE_SEND_SIG);
            MODIFY_METHOD_PATTERN = Util.findMethod(shadowed, "modifyMethodPattern", (Class<?>[]) new Class[]{Object.class});
        }

        public static Object resolveType(Object resolvedType, Object methodCall, Object scope) {
            return Util.invokeMethod(RESOLVE_TYPE, resolvedType, methodCall, scope);
        }

        public static void errorNoMethodFor(Object problemReporter, Object messageSend, Object recType, Object params) {
            Util.invokeMethod(ERROR_NO_METHOD_FOR, problemReporter, messageSend, recType, params);
        }

        public static void invalidMethod(Object problemReporter, Object messageSend, Object method) {
            Util.invokeMethod(INVALID_METHOD, problemReporter, messageSend, method);
        }

        public static void invalidMethod(Object problemReporter, Object messageSend, Object method, Object scope) {
            Util.invokeMethod(INVALID_METHOD2, problemReporter, messageSend, method, scope);
        }

        public static void nonStaticAccessToStaticMethod(Object problemReporter, Object location, Object method, Object messageSend) {
            Util.invokeMethod(NON_STATIC_ACCESS_TO_STATIC_METHOD, problemReporter, location, method, messageSend);
        }

        public static Object modifyMethodPattern(Object original) {
            return Util.invokeMethod(MODIFY_METHOD_PATTERN, original);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$Javadoc.SCL.lombok */
    public static final class Javadoc {
        private static final Method GET_HTML;
        private static final Method PRINT_METHOD;

        static {
            Class<?> shadowed = Util.shadowLoadClass("lombok.eclipse.agent.PatchJavadoc");
            GET_HTML = Util.findMethod(shadowed, "getHTMLContentFromSource", (Class<?>[]) new Class[]{String.class, Object.class});
            PRINT_METHOD = Util.findMethod(shadowed, "printMethod", (Class<?>[]) new Class[]{AbstractMethodDeclaration.class, Integer.class, StringBuffer.class, TypeDeclaration.class});
        }

        public static String getHTMLContentFromSource(String original, IJavaElement member) {
            return (String) Util.invokeMethod(GET_HTML, original, member);
        }

        public static StringBuffer printMethod(AbstractMethodDeclaration methodDeclaration, int tab, StringBuffer output, TypeDeclaration type) {
            return (StringBuffer) Util.invokeMethod(PRINT_METHOD, methodDeclaration, Integer.valueOf(tab), output, type);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$PatchFixes.SCL.lombok */
    public static final class PatchFixes {
        public static final int ALREADY_PROCESSED_FLAG = 8388608;

        public static boolean isGenerated(ASTNode node) {
            boolean result = false;
            try {
                result = ((Boolean) node.getClass().getField("$isGenerated").get(node)).booleanValue();
                if (!result && node.getParent() != null && (node.getParent() instanceof QualifiedName)) {
                    result = isGenerated(node.getParent());
                }
            } catch (Exception unused) {
            }
            return result;
        }

        public static boolean isGenerated(org.eclipse.jdt.internal.compiler.ast.ASTNode node) {
            boolean result = false;
            try {
                result = node.getClass().getField("$generatedBy").get(node) != null;
            } catch (Exception unused) {
            }
            return result;
        }

        public static boolean isGenerated(IMember member) {
            boolean z;
            boolean result = false;
            if (member.getNameRange().getLength() > 0) {
                if (!member.getNameRange().equals(member.getSourceRange())) {
                    z = false;
                    result = z;
                    return result;
                }
            }
            z = true;
            result = z;
            return result;
        }

        public static boolean isBlockedVisitorAndGenerated(ASTNode node, ASTVisitor visitor) {
            if (visitor == null) {
                return false;
            }
            String className = visitor.getClass().getName();
            if ((className.startsWith("org.eclipse.jdt.internal.corext.fix") || className.startsWith("org.eclipse.jdt.internal.ui.fix") || className.startsWith("org.eclipse.jdt.ls.core.internal.semantictokens.SemanticTokensVisitor")) && !className.equals("org.eclipse.jdt.internal.corext.fix.VariableDeclarationFixCore$WrittenNamesFinder")) {
                return isGenerated(node);
            }
            return false;
        }

        public static boolean isListRewriteOnGeneratedNode(ListRewrite rewrite) {
            return isGenerated(rewrite.getParent());
        }

        public static boolean returnFalse(Object object) {
            return false;
        }

        public static boolean returnTrue(Object object) {
            return true;
        }

        public static List removeGeneratedNodes(List list) {
            try {
                List realNodes = new ArrayList(list.size());
                for (Object node : list) {
                    if (!isGenerated((ASTNode) node)) {
                        realNodes.add(node);
                    }
                }
                return realNodes;
            } catch (Exception unused) {
                return list;
            }
        }

        public static String getRealMethodDeclarationSource(String original, Object processor, MethodDeclaration declaration) throws Exception {
            if (!isGenerated((ASTNode) declaration)) {
                return original;
            }
            List<Annotation> annotations = new ArrayList<>();
            for (Object modifier : declaration.modifiers()) {
                if (modifier instanceof Annotation) {
                    Annotation annotation = (Annotation) modifier;
                    String qualifiedAnnotationName = annotation.resolveTypeBinding().getQualifiedName();
                    if (!"java.lang.Override".equals(qualifiedAnnotationName) && !"java.lang.SuppressWarnings".equals(qualifiedAnnotationName)) {
                        annotations.add(annotation);
                    }
                }
            }
            StringBuilder signature = new StringBuilder();
            addAnnotations(annotations, signature);
            try {
                if (((Boolean) processor.getClass().getDeclaredField("fPublic").get(processor)).booleanValue()) {
                    signature.append("public ");
                }
                if (((Boolean) processor.getClass().getDeclaredField("fAbstract").get(processor)).booleanValue()) {
                    signature.append("abstract ");
                }
            } catch (Throwable unused) {
            }
            signature.append(declaration.getReturnType2().toString()).append(" ").append(declaration.getName().getFullyQualifiedName()).append("(");
            boolean first = true;
            for (Object parameter : declaration.parameters()) {
                if (!first) {
                    signature.append(", ");
                }
                first = false;
                signature.append(parameter);
            }
            signature.append(");");
            return signature.toString();
        }

        public static void addAnnotations(List<Annotation> annotations, StringBuilder signature) {
            Iterator<Annotation> it = annotations.iterator();
            while (it.hasNext()) {
                SingleMemberAnnotation singleMemberAnnotation = (Annotation) it.next();
                List<String> values = new ArrayList<>();
                if (singleMemberAnnotation.isSingleMemberAnnotation()) {
                    SingleMemberAnnotation smAnn = singleMemberAnnotation;
                    values.add(smAnn.getValue().toString());
                } else if (singleMemberAnnotation.isNormalAnnotation()) {
                    NormalAnnotation normalAnn = (NormalAnnotation) singleMemberAnnotation;
                    for (Object value : normalAnn.values()) {
                        values.add(value.toString());
                    }
                }
                signature.append("@").append(singleMemberAnnotation.getTypeName().getFullyQualifiedName());
                if (!values.isEmpty()) {
                    signature.append("(");
                    boolean first = true;
                    for (String string : values) {
                        if (!first) {
                            signature.append(", ");
                        }
                        first = false;
                        signature.append(Typography.quote).append(string).append(Typography.quote);
                    }
                    signature.append(")");
                }
                signature.append(" ");
            }
        }

        public static MethodDeclaration getRealMethodDeclarationNode(MethodDeclaration original, IMethod sourceMethod, CompilationUnit cuUnit) throws JavaModelException {
            AbstractTypeDeclaration typeDeclaration;
            if (!isGenerated((ASTNode) original)) {
                return original;
            }
            Stack<IType> typeStack = new Stack<>();
            for (IType declaringType = sourceMethod.getDeclaringType(); declaringType != null; declaringType = declaringType.getDeclaringType()) {
                typeStack.push(declaringType);
            }
            IType rootType = typeStack.pop();
            AbstractTypeDeclaration findTypeDeclaration = findTypeDeclaration(rootType, cuUnit.types());
            while (true) {
                typeDeclaration = findTypeDeclaration;
                if (typeStack.isEmpty() || typeDeclaration == null) {
                    break;
                }
                findTypeDeclaration = findTypeDeclaration(typeStack.pop(), typeDeclaration.bodyDeclarations());
            }
            String targetMethodName = sourceMethod.getElementName();
            List<String> targetMethodParameterTypes = new ArrayList<>();
            for (String parameterType : sourceMethod.getParameterTypes()) {
                targetMethodParameterTypes.add(Signature.toString(parameterType));
            }
            if (typeStack.isEmpty() && typeDeclaration != null) {
                for (Object declaration : typeDeclaration.bodyDeclarations()) {
                    if (declaration instanceof MethodDeclaration) {
                        MethodDeclaration methodDeclaration = (MethodDeclaration) declaration;
                        if (methodDeclaration.getName().toString().equals(targetMethodName) && methodDeclaration.parameters().size() == targetMethodParameterTypes.size() && isGenerated((ASTNode) methodDeclaration)) {
                            boolean parameterTypesEquals = true;
                            int i = 0;
                            while (true) {
                                if (i >= methodDeclaration.parameters().size()) {
                                    break;
                                }
                                SingleVariableDeclaration variableDeclaration = (SingleVariableDeclaration) methodDeclaration.parameters().get(i);
                                if (variableDeclaration.getType().toString().equals(targetMethodParameterTypes.get(i))) {
                                    i++;
                                } else {
                                    parameterTypesEquals = false;
                                    break;
                                }
                            }
                            if (parameterTypesEquals) {
                                return methodDeclaration;
                            }
                        }
                    }
                }
            }
            return original;
        }

        public static AbstractTypeDeclaration findTypeDeclaration(IType searchType, List<?> nodes) {
            for (Object object : nodes) {
                if (object instanceof AbstractTypeDeclaration) {
                    AbstractTypeDeclaration typeDeclaration = (AbstractTypeDeclaration) object;
                    if (typeDeclaration.getName().toString().equals(searchType.getElementName())) {
                        return typeDeclaration;
                    }
                }
            }
            return null;
        }

        public static int getSourceEndFixed(int sourceEnd, org.eclipse.jdt.internal.compiler.ast.ASTNode node) throws Exception {
            org.eclipse.jdt.internal.compiler.ast.ASTNode object;
            if (sourceEnd == -1 && (object = (org.eclipse.jdt.internal.compiler.ast.ASTNode) node.getClass().getField("$generatedBy").get(node)) != null) {
                return object.sourceEnd;
            }
            return sourceEnd;
        }

        public static int fixRetrieveStartingCatchPosition(int original, int start) {
            return original == -1 ? start : original;
        }

        public static int fixRetrieveIdentifierEndPosition(int original, int start, int end) {
            if (original != -1 && original >= start) {
                return original;
            }
            return end;
        }

        public static int fixRetrieveEllipsisStartPosition(int original, int end) {
            return original == -1 ? end : original;
        }

        public static int fixRetrieveStartBlockPosition(int original, int start) {
            return original == -1 ? start : original;
        }

        public static int fixRetrieveRightBraceOrSemiColonPosition(int original, int end) {
            return original == -1 ? end : original;
        }

        public static int fixRetrieveRightBraceOrSemiColonPosition(int retVal, AbstractMethodDeclaration amd) {
            if (retVal != -1 || amd == null) {
                return retVal;
            }
            boolean isGenerated = EcjAugments.ASTNode_generatedBy.get(amd) != null;
            if (isGenerated) {
                return amd.declarationSourceEnd;
            }
            return -1;
        }

        public static int fixRetrieveRightBraceOrSemiColonPosition(int retVal, FieldDeclaration fd) {
            if (retVal != -1 || fd == null) {
                return retVal;
            }
            boolean isGenerated = EcjAugments.ASTNode_generatedBy.get(fd) != null;
            if (isGenerated) {
                return fd.declarationSourceEnd;
            }
            return -1;
        }

        public static int fixRetrieveProperRightBracketPosition(int retVal, Type type) {
            if (retVal != -1 || type == null) {
                return retVal;
            }
            if (isGenerated((ASTNode) type)) {
                return (type.getStartPosition() + type.getLength()) - 1;
            }
            return -1;
        }

        public static boolean checkBit24(Object node) throws Exception {
            int bits = ((Integer) node.getClass().getField("bits").get(node)).intValue();
            return (bits & 8388608) != 0;
        }

        public static boolean skipRewritingGeneratedNodes(ASTNode node) throws Exception {
            return ((Boolean) node.getClass().getField("$isGenerated").get(node)).booleanValue();
        }

        public static void setIsGeneratedFlag(ASTNode domNode, org.eclipse.jdt.internal.compiler.ast.ASTNode internalNode) throws Exception {
            if (internalNode == null || domNode == null) {
                return;
            }
            boolean isGenerated = EcjAugments.ASTNode_generatedBy.get(internalNode) != null;
            if (isGenerated) {
                domNode.getClass().getField("$isGenerated").set(domNode, true);
            }
        }

        public static void setIsGeneratedFlagForName(Name name, Object internalNode) throws Exception {
            if (internalNode instanceof org.eclipse.jdt.internal.compiler.ast.ASTNode) {
                boolean isGenerated = EcjAugments.ASTNode_generatedBy.get((org.eclipse.jdt.internal.compiler.ast.ASTNode) internalNode) != null;
                if (isGenerated) {
                    name.getClass().getField("$isGenerated").set(name, true);
                }
            }
        }

        public static RewriteEvent[] listRewriteHandleGeneratedMethods(RewriteEvent parent) {
            RewriteEvent[] children = parent.getChildren();
            List<RewriteEvent> newChildren = new ArrayList<>();
            List<RewriteEvent> modifiedChildren = new ArrayList<>();
            for (RewriteEvent child : children) {
                boolean isGenerated = isGenerated((ASTNode) child.getOriginalValue());
                if (isGenerated) {
                    boolean isReplacedOrRemoved = child.getChangeKind() == 4 || child.getChangeKind() == 2;
                    boolean convertingFromMethod = child.getOriginalValue() instanceof MethodDeclaration;
                    if (isReplacedOrRemoved && convertingFromMethod && child.getNewValue() != null) {
                        modifiedChildren.add(new NodeRewriteEvent((Object) null, child.getNewValue()));
                    }
                } else {
                    newChildren.add(child);
                }
            }
            newChildren.addAll(modifiedChildren);
            return (RewriteEvent[]) newChildren.toArray(new RewriteEvent[0]);
        }

        public static int getTokenEndOffsetFixed(TokenScanner scanner, int token, int startOffset, Object domNode) throws CoreException {
            boolean isGenerated = false;
            try {
                isGenerated = ((Boolean) domNode.getClass().getField("$isGenerated").get(domNode)).booleanValue();
            } catch (Exception unused) {
            }
            if (isGenerated) {
                return -1;
            }
            return scanner.getTokenEndOffset(token, startOffset);
        }

        public static IMethod[] removeGeneratedMethods(IMethod[] methods) throws Exception {
            List<IMethod> result = new ArrayList<>();
            for (IMethod m : methods) {
                if (!isGenerated((IMember) m)) {
                    result.add(m);
                }
            }
            return result.size() == methods.length ? methods : (IMethod[]) result.toArray(new IMethod[0]);
        }

        public static SearchMatch[] removeGenerated(SearchMatch[] returnValue) {
            int j;
            List<SearchMatch> result = new ArrayList<>();
            for (SearchMatch searchResult : returnValue) {
                if (searchResult.getElement() instanceof IField) {
                    IField field = (IField) searchResult.getElement();
                    IAnnotation annotation = field.getAnnotation("Generated");
                    j = annotation != null ? j + 1 : 0;
                }
                result.add(searchResult);
            }
            return (SearchMatch[]) result.toArray(new SearchMatch[0]);
        }

        public static SearchResultGroup[] createFakeSearchResult(SearchResultGroup[] returnValue, Object processor) throws Exception {
            Field declaredField;
            if ((returnValue == null || returnValue.length == 0) && (declaredField = processor.getClass().getDeclaredField("fField")) != null) {
                declaredField.setAccessible(true);
                SourceField fField = (SourceField) declaredField.get(processor);
                IAnnotation dataAnnotation = fField.getDeclaringType().getAnnotation("Data");
                if (dataAnnotation != null) {
                    return new SearchResultGroup[]{new SearchResultGroup((IResource) null, new SearchMatch[1])};
                }
            }
            return returnValue;
        }

        public static SimpleName[] removeGeneratedSimpleNames(SimpleName[] in) throws Exception {
            Field f = SimpleName.class.getField("$isGenerated");
            int count = 0;
            for (int i = 0; i < in.length; i++) {
                if (in[i] == null || !((Boolean) f.get(in[i])).booleanValue()) {
                    count++;
                }
            }
            if (count == in.length) {
                return in;
            }
            SimpleName[] newSimpleNames = new SimpleName[count];
            int count2 = 0;
            for (int i2 = 0; i2 < in.length; i2++) {
                if (in[i2] == null || !((Boolean) f.get(in[i2])).booleanValue()) {
                    int i3 = count2;
                    count2++;
                    newSimpleNames[i3] = in[i2];
                }
            }
            return newSimpleNames;
        }

        public static Name[] removeGeneratedNames(Name[] in) throws Exception {
            Field f = Name.class.getField("$isGenerated");
            int count = 0;
            for (int i = 0; i < in.length; i++) {
                if (in[i] == null || !((Boolean) f.get(in[i])).booleanValue()) {
                    count++;
                }
            }
            if (count == in.length) {
                return in;
            }
            Name[] newNames = new Name[count];
            int count2 = 0;
            for (int i2 = 0; i2 < in.length; i2++) {
                if (in[i2] == null || !((Boolean) f.get(in[i2])).booleanValue()) {
                    int i3 = count2;
                    count2++;
                    newNames[i3] = in[i2];
                }
            }
            return newNames;
        }

        public static org.eclipse.jdt.internal.compiler.ast.Annotation[] convertAnnotations(org.eclipse.jdt.internal.compiler.ast.Annotation[] out, IAnnotatable annotatable) {
            try {
                IAnnotation[] in = annotatable.getAnnotations();
                if (out == null) {
                    return null;
                }
                int toWrite = 0;
                for (int idx = 0; idx < out.length; idx++) {
                    String oName = new String(out[idx].type.getLastToken());
                    boolean found = false;
                    int length = in.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        IAnnotation i2 = in[i];
                        String name = i2.getElementName();
                        int li = name.lastIndexOf(46);
                        if (li > -1) {
                            name = name.substring(li + 1);
                        }
                        if (!name.equals(oName)) {
                            i++;
                        } else {
                            found = true;
                            break;
                        }
                    }
                    if (found) {
                        toWrite++;
                    } else {
                        out[idx] = null;
                    }
                }
                org.eclipse.jdt.internal.compiler.ast.Annotation[] replace = out;
                if (toWrite < out.length) {
                    replace = new org.eclipse.jdt.internal.compiler.ast.Annotation[toWrite];
                    int idx2 = 0;
                    for (int i3 = 0; i3 < out.length; i3++) {
                        if (out[i3] != null) {
                            int i4 = idx2;
                            idx2++;
                            replace[i4] = out[i3];
                        }
                    }
                }
                return replace;
            } catch (Exception unused) {
                return out;
            }
        }

        public static String getRealNodeSource(String original, org.eclipse.jdt.internal.compiler.ast.ASTNode node) {
            return !isGenerated(node) ? original : node.toString();
        }

        public static String getRealNodeSource(String original, ASTNode node) throws Exception {
            return !isGenerated(node) ? original : node.toString();
        }

        public static boolean skipRewriteVisibility(MemberVisibilityAdjustor.IncomingMemberVisibilityAdjustment adjustment) {
            return isGenerated(adjustment.getMember());
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
    /* loaded from: mmessage.apk:Class50/lombok/launch/PatchFixesHider$Tests.SCL.lombok */
    public static class Tests {
        public static Object getBundle(Object original, Class<?> c) {
            if (original != null) {
                return original;
            }
            CodeSource codeSource = c.getProtectionDomain().getCodeSource();
            if (codeSource == null) {
                return null;
            }
            String jar = codeSource.getLocation().getFile();
            String bundleName = jar.substring(jar.lastIndexOf(MqttTopic.TOPIC_LEVEL_SEPARATOR) + 1, jar.indexOf("_"));
            Bundle[] bundles = EclipseStarter.getSystemBundleContext().getBundles();
            for (Bundle bundle : bundles) {
                if (bundleName.equals(bundle.getSymbolicName())) {
                    return bundle;
                }
            }
            return null;
        }
    }
}
