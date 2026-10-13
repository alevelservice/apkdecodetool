.class public final Llombok/launch/PatchFixesHider$ExtensionMethod;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionMethod"
.end annotation


# static fields
.field private static final AST_NODE_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.ast.ASTNode"

.field private static final BLOCK_SCOPE_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.lookup.BlockScope"

.field private static final ERROR_NO_METHOD_FOR:Ljava/lang/reflect/Method;

.field private static final INVALID_METHOD:Ljava/lang/reflect/Method;

.field private static final INVALID_METHOD2:Ljava/lang/reflect/Method;

.field private static final MESSAGE_SEND_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.ast.MessageSend"

.field private static final METHOD_BINDING_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.lookup.MethodBinding"

.field private static final MODIFY_METHOD_PATTERN:Ljava/lang/reflect/Method;

.field private static final NON_STATIC_ACCESS_TO_STATIC_METHOD:Ljava/lang/reflect/Method;

.field private static final PROBLEM_REPORTER_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.problem.ProblemReporter"

.field private static final RESOLVE_TYPE:Ljava/lang/reflect/Method;

.field private static final SCOPE_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.lookup.Scope"

.field private static final TYPE_BINDINGS_SIG:Ljava/lang/String; = "[Lorg.eclipse.jdt.internal.compiler.lookup.TypeBinding;"

.field private static final TYPE_BINDING_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.lookup.TypeBinding"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "lombok.eclipse.agent.PatchExtensionMethod"

    .line 382
    invoke-static {v0}, Llombok/launch/PatchFixesHider$Util;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.internal.compiler.lookup.BlockScope"

    const-string v2, "org.eclipse.jdt.internal.compiler.lookup.TypeBinding"

    const-string v3, "org.eclipse.jdt.internal.compiler.ast.MessageSend"

    .line 383
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "resolveType"

    invoke-static {v0, v4, v1}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Llombok/launch/PatchFixesHider$ExtensionMethod;->RESOLVE_TYPE:Ljava/lang/reflect/Method;

    const-string v1, "[Lorg.eclipse.jdt.internal.compiler.lookup.TypeBinding;"

    const-string v4, "org.eclipse.jdt.internal.compiler.problem.ProblemReporter"

    .line 384
    filled-new-array {v4, v3, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorNoMethodFor"

    invoke-static {v0, v2, v1}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Llombok/launch/PatchFixesHider$ExtensionMethod;->ERROR_NO_METHOD_FOR:Ljava/lang/reflect/Method;

    const-string v1, "org.eclipse.jdt.internal.compiler.lookup.MethodBinding"

    .line 385
    filled-new-array {v4, v3, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v5, "invalidMethod"

    invoke-static {v0, v5, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$ExtensionMethod;->INVALID_METHOD:Ljava/lang/reflect/Method;

    const-string v2, "org.eclipse.jdt.internal.compiler.lookup.Scope"

    .line 386
    filled-new-array {v4, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$ExtensionMethod;->INVALID_METHOD2:Ljava/lang/reflect/Method;

    const-string v2, "org.eclipse.jdt.internal.compiler.ast.ASTNode"

    .line 387
    filled-new-array {v4, v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "nonStaticAccessToStaticMethod"

    invoke-static {v0, v2, v1}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Llombok/launch/PatchFixesHider$ExtensionMethod;->NON_STATIC_ACCESS_TO_STATIC_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 388
    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "modifyMethodPattern"

    invoke-static {v0, v2, v1}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->MODIFY_METHOD_PATTERN:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorNoMethodFor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 396
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->ERROR_NO_METHOD_FOR:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static invalidMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 400
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->INVALID_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static invalidMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 404
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->INVALID_METHOD2:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static modifyMethodPattern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 412
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->MODIFY_METHOD_PATTERN:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nonStaticAccessToStaticMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 408
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->NON_STATIC_ACCESS_TO_STATIC_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static resolveType(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 392
    sget-object v0, Llombok/launch/PatchFixesHider$ExtensionMethod;->RESOLVE_TYPE:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
