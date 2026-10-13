package lombok.eclipse.handlers;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import lombok.ConfigurationKeys;
import lombok.NonNull;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.HandlerPriority;
import lombok.core.handlers.HandlerUtil;
import lombok.eclipse.EcjAugments;
import lombok.eclipse.Eclipse;
import lombok.eclipse.EclipseAnnotationHandler;
import lombok.eclipse.EclipseNode;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.AssertStatement;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

@HandlerPriority(512)
/* loaded from: mmessage.apk:lombok/eclipse/handlers/HandleNonNull.SCL.lombok */
public class HandleNonNull extends EclipseAnnotationHandler<NonNull> {
    private static final char[] REQUIRE_NON_NULL = "requireNonNull".toCharArray();
    private static final char[] CHECK_NOT_NULL = "checkNotNull".toCharArray();
    public static final HandleNonNull INSTANCE = new HandleNonNull();

    public void fix(EclipseNode method) {
        Iterator<EclipseNode> it = method.down().iterator();
        while (it.hasNext()) {
            EclipseNode m = it.next();
            if (m.getKind() == AST.Kind.ARGUMENT) {
                Iterator<EclipseNode> it2 = m.down().iterator();
                while (it2.hasNext()) {
                    EclipseNode c = it2.next();
                    if (c.getKind() == AST.Kind.ANNOTATION && EclipseHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) NonNull.class, c)) {
                        handle0((org.eclipse.jdt.internal.compiler.ast.Annotation) c.get(), c, true);
                    }
                }
            }
        }
    }

    private List<FieldDeclaration> getRecordComponents(EclipseNode typeNode) {
        List<FieldDeclaration> list = new ArrayList<>();
        Iterator<EclipseNode> it = typeNode.down().iterator();
        while (it.hasNext()) {
            EclipseNode child = it.next();
            if (child.getKind() == AST.Kind.FIELD) {
                FieldDeclaration fd = child.get();
                if ((fd.modifiers & 16777216) != 0) {
                    list.add(fd);
                }
            }
        }
        return list;
    }

    private EclipseNode addCompactConstructorIfNeeded(EclipseNode typeNode, EclipseNode annotationNode) {
        EclipseNode toRemove = null;
        EclipseNode existingCompactConstructor = null;
        List<FieldDeclaration> recordComponents = null;
        Iterator<EclipseNode> it = typeNode.down().iterator();
        while (it.hasNext()) {
            EclipseNode child = it.next();
            if (child.get() instanceof ConstructorDeclaration) {
                ConstructorDeclaration cd = child.get();
                if ((cd.bits & 512) != 0) {
                    if ((cd.bits & 1024) != 0) {
                        toRemove = child;
                    } else {
                        existingCompactConstructor = child;
                    }
                } else {
                    if (recordComponents == null) {
                        recordComponents = getRecordComponents(typeNode);
                    }
                    int argLength = cd.arguments == null ? 0 : cd.arguments.length;
                    int compLength = recordComponents.size();
                    boolean isCanonical = argLength == compLength;
                    if (isCanonical) {
                        int i = 0;
                        while (true) {
                            if (i >= argLength) {
                                break;
                            }
                            TypeReference a = recordComponents.get(i).type;
                            TypeReference b = cd.arguments[i] == null ? null : cd.arguments[i].type;
                            char[][] ta = getRawTypeName(a);
                            char[][] tb = getRawTypeName(b);
                            if (ta == null || tb == null || ta.length != tb.length) {
                                break;
                            }
                            for (int j = 0; j < ta.length; j++) {
                                if (!Arrays.equals(ta[j], tb[j])) {
                                    isCanonical = false;
                                    break;
                                }
                            }
                            i++;
                        }
                        isCanonical = false;
                    }
                    if (isCanonical) {
                        return null;
                    }
                }
            }
        }
        if (existingCompactConstructor != null) {
            return existingCompactConstructor;
        }
        int posToInsert = -1;
        TypeDeclaration td = typeNode.get();
        if (toRemove != null) {
            int idxToRemove = -1;
            for (int i2 = 0; i2 < td.methods.length; i2++) {
                if (td.methods[i2] == toRemove.get()) {
                    idxToRemove = i2;
                }
            }
            if (idxToRemove != -1) {
                System.arraycopy(td.methods, idxToRemove + 1, td.methods, idxToRemove, (td.methods.length - idxToRemove) - 1);
                posToInsert = td.methods.length - 1;
                typeNode.removeChild(toRemove);
            }
        }
        if (posToInsert == -1) {
            AbstractMethodDeclaration[] na = new AbstractMethodDeclaration[td.methods.length + 1];
            posToInsert = td.methods.length;
            System.arraycopy(td.methods, 0, na, 0, posToInsert);
            td.methods = na;
        }
        AbstractMethodDeclaration constructorDeclaration = new ConstructorDeclaration(typeNode.top().get().compilationResult);
        ((ConstructorDeclaration) constructorDeclaration).modifiers = 1;
        ((ConstructorDeclaration) constructorDeclaration).bits = -2139094528;
        ((ConstructorDeclaration) constructorDeclaration).selector = td.name;
        ((ConstructorDeclaration) constructorDeclaration).constructorCall = new ExplicitConstructorCall(1);
        if (recordComponents == null) {
            recordComponents = getRecordComponents(typeNode);
        }
        ((ConstructorDeclaration) constructorDeclaration).arguments = new Argument[recordComponents.size()];
        ((ConstructorDeclaration) constructorDeclaration).statements = new Statement[recordComponents.size()];
        ((ConstructorDeclaration) constructorDeclaration).bits = 512;
        for (int i3 = 0; i3 < ((ConstructorDeclaration) constructorDeclaration).arguments.length; i3++) {
            FieldDeclaration cmp = recordComponents.get(i3);
            ((ConstructorDeclaration) constructorDeclaration).arguments[i3] = new Argument(cmp.name, cmp.sourceStart, cmp.type, 0);
            ((ConstructorDeclaration) constructorDeclaration).arguments[i3].bits = -1073741820;
            FieldReference lhs = new FieldReference(cmp.name, 0L);
            lhs.receiver = new ThisReference(0, 0);
            SingleNameReference rhs = new SingleNameReference(cmp.name, 0L);
            ((ConstructorDeclaration) constructorDeclaration).statements[i3] = new Assignment(lhs, rhs, cmp.sourceEnd);
        }
        EclipseHandlerUtil.setGeneratedBy(constructorDeclaration, annotationNode.get());
        for (int i4 = 0; i4 < ((ConstructorDeclaration) constructorDeclaration).arguments.length; i4++) {
            FieldDeclaration cmp2 = recordComponents.get(i4);
            ((ConstructorDeclaration) constructorDeclaration).arguments[i4].sourceStart = cmp2.sourceStart;
            ((ConstructorDeclaration) constructorDeclaration).arguments[i4].sourceEnd = cmp2.sourceStart;
            ((ConstructorDeclaration) constructorDeclaration).arguments[i4].declarationSourceEnd = cmp2.sourceStart;
            ((ConstructorDeclaration) constructorDeclaration).arguments[i4].declarationEnd = cmp2.sourceStart;
        }
        td.methods[posToInsert] = constructorDeclaration;
        ((ConstructorDeclaration) constructorDeclaration).annotations = EclipseHandlerUtil.addSuppressWarningsAll(typeNode, constructorDeclaration, ((ConstructorDeclaration) constructorDeclaration).annotations);
        ((ConstructorDeclaration) constructorDeclaration).annotations = EclipseHandlerUtil.addGenerated(typeNode, constructorDeclaration, ((ConstructorDeclaration) constructorDeclaration).annotations);
        return typeNode.add(constructorDeclaration, AST.Kind.METHOD);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [char[], char[][]] */
    private static char[][] getRawTypeName(TypeReference a) {
        if (a instanceof QualifiedTypeReference) {
            return ((QualifiedTypeReference) a).tokens;
        }
        if (a instanceof SingleTypeReference) {
            return new char[]{((SingleTypeReference) a).token};
        }
        return null;
    }

    @Override // lombok.eclipse.EclipseAnnotationHandler
    public void handle(AnnotationValues<NonNull> annotation, org.eclipse.jdt.internal.compiler.ast.Annotation ast, EclipseNode annotationNode) {
        EclipseNode node;
        if (!annotationNode.isCompleteParse()) {
            if (annotationNode.up().getKind() == AST.Kind.TYPE_USE) {
                node = annotationNode.directUp().directUp();
            } else {
                node = annotationNode.up();
            }
            if (node.getKind() == AST.Kind.FIELD) {
                EclipseNode typeNode = node.up();
                if (typeNode.getKind() == AST.Kind.TYPE && EclipseHandlerUtil.isRecord(typeNode)) {
                    addCompactConstructorIfNeeded(typeNode, annotationNode);
                }
            }
            EcjAugments.ASTNode_handled.clear(ast);
            return;
        }
        handle0(ast, annotationNode, false);
    }

    private EclipseNode findCompactConstructor(EclipseNode typeNode) {
        Iterator<EclipseNode> it = typeNode.down().iterator();
        while (it.hasNext()) {
            EclipseNode child = it.next();
            if (child.get() instanceof ConstructorDeclaration) {
                ConstructorDeclaration cd = child.get();
                if ((cd.bits & 512) != 0 && (cd.bits & 1024) == 0) {
                    return child;
                }
            }
        }
        return null;
    }

    private void handle0(org.eclipse.jdt.internal.compiler.ast.Annotation ast, EclipseNode annotationNode, boolean force) {
        EclipseNode node;
        EclipseNode compactConstructor;
        HandlerUtil.handleFlagUsage(annotationNode, ConfigurationKeys.NON_NULL_FLAG_USAGE, "@NonNull");
        if (annotationNode.up().getKind() == AST.Kind.TYPE_USE) {
            node = annotationNode.directUp().directUp();
        } else {
            node = annotationNode.up();
        }
        if (node.getKind() == AST.Kind.FIELD) {
            EclipseNode fieldNode = node;
            EclipseNode typeNode = fieldNode.up();
            try {
                if (Eclipse.isPrimitive(node.get().type)) {
                    annotationNode.addWarning("@NonNull is meaningless on a primitive.");
                    return;
                }
            } catch (Exception unused) {
            }
            if (EclipseHandlerUtil.isRecord(typeNode) && (compactConstructor = findCompactConstructor(typeNode)) != null) {
                addNullCheckIfNeeded((AbstractMethodDeclaration) compactConstructor.get(), (AbstractVariableDeclaration) fieldNode.get(), annotationNode);
                return;
            }
            return;
        }
        if (node.getKind() != AST.Kind.ARGUMENT) {
            return;
        }
        try {
            Argument param = node.get();
            AbstractMethodDeclaration declaration = (AbstractMethodDeclaration) node.up().get();
            if ((!force && EclipseHandlerUtil.isGenerated(declaration)) || declaration.isAbstract()) {
                return;
            }
            addNullCheckIfNeeded(declaration, param, annotationNode);
            node.up().rebuild();
        } catch (Exception unused2) {
        }
    }

    private void addNullCheckIfNeeded(AbstractMethodDeclaration declaration, AbstractVariableDeclaration param, EclipseNode annotationNode) {
        Statement nullCheck = EclipseHandlerUtil.generateNullCheck(param, annotationNode, null);
        if (nullCheck == null) {
            annotationNode.addWarning("@NonNull is meaningless on a primitive.");
            return;
        }
        if (declaration.statements == null) {
            declaration.statements = new Statement[]{nullCheck};
            return;
        }
        char[] expectedName = param.name;
        Statement[] stats = declaration.statements;
        int idx = 0;
        while (stats != null && stats.length > idx) {
            int i = idx;
            idx++;
            Statement stat = stats[i];
            if (stat instanceof TryStatement) {
                stats = ((TryStatement) stat).tryBlock.statements;
                idx = 0;
            } else if (stat instanceof SynchronizedStatement) {
                stats = ((SynchronizedStatement) stat).block.statements;
                idx = 0;
            } else {
                char[] varNameOfNullCheck = returnVarNameIfNullCheck(stat);
                if (varNameOfNullCheck == null) {
                    break;
                } else if (Arrays.equals(varNameOfNullCheck, expectedName)) {
                    return;
                }
            }
        }
        Statement[] newStatements = new Statement[declaration.statements.length + 1];
        int skipOver = 0;
        for (ASTNode aSTNode : declaration.statements) {
            if (!EclipseHandlerUtil.isGenerated(aSTNode) || !isNullCheck(aSTNode)) {
                break;
            }
            skipOver++;
        }
        System.arraycopy(declaration.statements, 0, newStatements, 0, skipOver);
        System.arraycopy(declaration.statements, skipOver, newStatements, skipOver + 1, declaration.statements.length - skipOver);
        newStatements[skipOver] = nullCheck;
        declaration.statements = newStatements;
    }

    public boolean isNullCheck(Statement stat) {
        return returnVarNameIfNullCheck(stat) != null;
    }

    public char[] returnVarNameIfNullCheck(Statement stat) {
        boolean isIf = stat instanceof IfStatement;
        boolean isExpression = stat instanceof Expression;
        if (!isIf && !(stat instanceof AssertStatement) && !isExpression) {
            return null;
        }
        if (isExpression) {
            Expression expression = (Expression) stat;
            if (expression instanceof Assignment) {
                expression = ((Assignment) expression).expression;
            }
            if (!(expression instanceof MessageSend)) {
                return null;
            }
            MessageSend invocation = (MessageSend) expression;
            if ((!Arrays.equals(invocation.selector, CHECK_NOT_NULL) && !Arrays.equals(invocation.selector, REQUIRE_NON_NULL)) || invocation.arguments == null || invocation.arguments.length == 0) {
                return null;
            }
            SingleNameReference singleNameReference = invocation.arguments[0];
            if (singleNameReference instanceof SingleNameReference) {
                return singleNameReference.token;
            }
            return null;
        }
        if (isIf) {
            Statement then = ((IfStatement) stat).thenStatement;
            if (then instanceof Block) {
                Statement[] blockStatements = ((Block) then).statements;
                if (blockStatements == null || blockStatements.length == 0) {
                    return null;
                }
                then = blockStatements[0];
            }
            if (!(then instanceof ThrowStatement)) {
                return null;
            }
        }
        Expression cond = isIf ? ((IfStatement) stat).condition : ((AssertStatement) stat).assertExpression;
        if (!(cond instanceof EqualExpression)) {
            return null;
        }
        EqualExpression bin = (EqualExpression) cond;
        String op = bin.operatorToString();
        if (isIf) {
            if (!"==".equals(op)) {
                return null;
            }
        } else if (!"!=".equals(op)) {
            return null;
        }
        if ((bin.left instanceof SingleNameReference) && (bin.right instanceof NullLiteral)) {
            return bin.left.token;
        }
        return null;
    }
}
