.class public final Lkotlinx/coroutines/internal/n;
.super Ljava/lang/Object;
.source "MainDispatchers.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/r1;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/n;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/n;-><init>()V

    .line 2
    invoke-direct {v0}, Lkotlinx/coroutines/internal/n;->a()Lkotlinx/coroutines/r1;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/n;->a:Lkotlinx/coroutines/r1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lkotlinx/coroutines/r1;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    const-class v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 2
    sget-object v3, Lkotlinx/coroutines/internal/h;->b:Lkotlinx/coroutines/internal/h;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "clz.classLoader"

    invoke-static {v4, v5}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 8
    invoke-interface {v5}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v5

    .line 9
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 10
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 11
    invoke-interface {v7}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v7

    if-ge v5, v7, :cond_3

    move-object v4, v6

    move v5, v7

    .line 12
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 13
    :goto_0
    check-cast v4, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v4, :cond_4

    .line 14
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/o;->a(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lkotlinx/coroutines/r1;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    new-instance v2, Lkotlinx/coroutines/internal/p;

    invoke-direct {v2, v1, v1, v0, v1}, Lkotlinx/coroutines/internal/p;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/d/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 16
    new-instance v3, Lkotlinx/coroutines/internal/p;

    invoke-direct {v3, v2, v1, v0, v1}, Lkotlinx/coroutines/internal/p;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/d/e;)V

    move-object v2, v3

    :goto_1
    return-object v2
.end method
