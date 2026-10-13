.class public final Llombok/launch/PatchFixesHider$Delegate;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delegate"
.end annotation


# static fields
.field private static final ADD_GENERATED_DELEGATE_METHODS:Ljava/lang/reflect/Method;

.field private static final HANDLE_DELEGATE_FOR_TYPE:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "lombok.eclipse.agent.PatchDelegatePortal"

    .line 266
    invoke-static {v0}, Llombok/launch/PatchFixesHider$Util;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 267
    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "handleDelegateForType"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$Delegate;->HANDLE_DELEGATE_FOR_TYPE:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 268
    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, "addGeneratedDelegateMethods"

    invoke-static {v0, v1, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Llombok/launch/PatchFixesHider$Delegate;->ADD_GENERATED_DELEGATE_METHODS:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGeneratedDelegateMethods(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 276
    sget-object v0, Llombok/launch/PatchFixesHider$Delegate;->ADD_GENERATED_DELEGATE_METHODS:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static handleDelegateForType(Ljava/lang/Object;)Z
    .locals 3

    .line 272
    sget-object v0, Llombok/launch/PatchFixesHider$Delegate;->HANDLE_DELEGATE_FOR_TYPE:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
