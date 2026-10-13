.class public final Llombok/launch/PatchFixesHider$Javadoc;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Javadoc"
.end annotation


# static fields
.field private static final GET_HTML:Ljava/lang/reflect/Method;

.field private static final PRINT_METHOD:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "lombok.eclipse.agent.PatchJavadoc"

    .line 422
    invoke-static {v0}, Llombok/launch/PatchFixesHider$Util;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 423
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "getHTMLContentFromSource"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$Javadoc;->GET_HTML:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    .line 424
    const-class v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/StringBuffer;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-class v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aput-object v3, v2, v1

    const-string v1, "printMethod"

    invoke-static {v0, v1, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Llombok/launch/PatchFixesHider$Javadoc;->PRINT_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHTMLContentFromSource(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;
    .locals 3

    .line 428
    sget-object v0, Llombok/launch/PatchFixesHider$Javadoc;->GET_HTML:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static printMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ILjava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Ljava/lang/StringBuffer;
    .locals 3

    .line 432
    sget-object v0, Llombok/launch/PatchFixesHider$Javadoc;->PRINT_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuffer;

    return-object p0
.end method
