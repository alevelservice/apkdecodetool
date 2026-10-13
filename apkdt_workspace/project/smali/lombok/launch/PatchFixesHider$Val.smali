.class public final Llombok/launch/PatchFixesHider$Val;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Val"
.end annotation


# static fields
.field private static final BLOCK_SCOPE_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.lookup.BlockScope"

.field private static final FOREACH_STATEMENT_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.ast.ForeachStatement"

.field private static final HANDLE_VAL_FOR_FOR_EACH:Ljava/lang/reflect/Method;

.field private static final HANDLE_VAL_FOR_LOCAL_DECLARATION:Ljava/lang/reflect/Method;

.field private static final LOCAL_DECLARATION_SIG:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.ast.LocalDeclaration"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "lombok.eclipse.agent.PatchVal"

    .line 322
    invoke-static {v0}, Llombok/launch/PatchFixesHider$Util;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.internal.compiler.ast.LocalDeclaration"

    const-string v2, "org.eclipse.jdt.internal.compiler.lookup.BlockScope"

    .line 323
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "handleValForLocalDeclaration"

    invoke-static {v0, v3, v1}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Llombok/launch/PatchFixesHider$Val;->HANDLE_VAL_FOR_LOCAL_DECLARATION:Ljava/lang/reflect/Method;

    const-string v1, "org.eclipse.jdt.internal.compiler.ast.ForeachStatement"

    .line 324
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleValForForEach"

    invoke-static {v0, v2, v1}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Llombok/launch/PatchFixesHider$Val;->HANDLE_VAL_FOR_FOR_EACH:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleValForForEach(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 332
    sget-object v0, Llombok/launch/PatchFixesHider$Val;->HANDLE_VAL_FOR_FOR_EACH:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static handleValForLocalDeclaration(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 328
    sget-object v0, Llombok/launch/PatchFixesHider$Val;->HANDLE_VAL_FOR_LOCAL_DECLARATION:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static skipResolveInitializerIfAlreadyCalled(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 342
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static skipResolveInitializerIfAlreadyCalled2(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    if-eqz p2, :cond_0

    .line 352
    const-class v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0

    :cond_0
    const/4 p2, 0x0

    .line 354
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method
