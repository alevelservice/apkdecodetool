.class public final Llombok/launch/PatchFixesHider$Transform;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transform"
.end annotation


# static fields
.field private static TRANSFORM:Ljava/lang/reflect/Method;

.field private static TRANSFORM_SWAPPED:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findJdtCoreClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 6

    .line 228
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBundle"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Llombok/permit/Permit;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 229
    invoke-static {v0, p0, v1}, Llombok/permit/Permit;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBundleContext"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Llombok/permit/Permit;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 232
    invoke-static {v0, p0, v1}, Llombok/permit/Permit;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBundles"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Llombok/permit/Permit;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 235
    invoke-static {v0, p0, v1}, Llombok/permit/Permit;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 237
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p0, v1

    .line 238
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "org.eclipse.jdt.core_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getModuleClassLoader"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-static {p0, v0, v4}, Llombok/permit/Permit;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    .line 240
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p0, v3, v0}, Llombok/permit/Permit;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized init(Ljava/lang/ClassLoader;)V
    .locals 3

    const-class v0, Llombok/launch/PatchFixesHider$Transform;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Llombok/launch/PatchFixesHider$Transform;->TRANSFORM:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 204
    :cond_0
    :try_start_1
    invoke-static {p0}, Llombok/launch/PatchFixesHider$Transform;->prependClassLoader(Ljava/lang/ClassLoader;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    invoke-static {p0}, Llombok/launch/PatchFixesHider$Transform;->findJdtCoreClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p0

    .line 207
    invoke-static {p0}, Llombok/launch/PatchFixesHider$Transform;->prependClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    const-string p0, "lombok.eclipse.TransformEclipseAST"

    .line 209
    invoke-static {p0}, Llombok/launch/PatchFixesHider$Util;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "transform"

    .line 210
    invoke-static {p0, v1}, Llombok/launch/PatchFixesHider$Util;->findMethodAnyArgs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Llombok/launch/PatchFixesHider$Transform;->TRANSFORM:Ljava/lang/reflect/Method;

    const-string v1, "transform_swapped"

    .line 211
    invoke-static {p0, v1}, Llombok/launch/PatchFixesHider$Util;->findMethodAnyArgs(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Llombok/launch/PatchFixesHider$Transform;->TRANSFORM_SWAPPED:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static prependClassLoader(Ljava/lang/ClassLoader;)V
    .locals 7

    .line 215
    invoke-static {p0}, Llombok/launch/Main;->prependClassLoader(Ljava/lang/ClassLoader;)V

    .line 217
    :try_start_0
    const-class v0, Llombok/launch/PatchFixesHider$Transform;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "prependParent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/ClassLoader;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Llombok/permit/Permit;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    .line 220
    invoke-static {v1, v0, v2}, Llombok/permit/Permit;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static transform(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Llombok/launch/PatchFixesHider$Transform;->init(Ljava/lang/ClassLoader;)V

    .line 251
    sget-object v0, Llombok/launch/PatchFixesHider$Transform;->TRANSFORM:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static transform_swapped(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Llombok/launch/PatchFixesHider$Transform;->init(Ljava/lang/ClassLoader;)V

    .line 256
    sget-object v0, Llombok/launch/PatchFixesHider$Transform;->TRANSFORM_SWAPPED:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
