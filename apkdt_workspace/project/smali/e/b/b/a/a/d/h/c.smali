.class public Le/b/b/a/a/d/h/c;
.super Ljava/lang/Object;
.source "LogThreadPool.java"


# static fields
.field public static final a:I

.field private static final b:I

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Le/b/b/a/a/d/h/c;->a:I

    .line 2
    sget v0, Le/b/b/a/a/d/h/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Le/b/b/a/a/d/h/c;->b:I

    .line 3
    sget v0, Le/b/b/a/a/d/h/c;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Le/b/b/a/a/d/h/c;->c:I

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 10

    .line 1
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x3c

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 2
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Le/b/b/a/a/d/h/c;->b:I

    sget v2, Le/b/b/a/a/d/h/c;->c:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Le/b/b/a/a/d/h/d;

    invoke-direct {v7}, Le/b/b/a/a/d/h/d;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const-wide/16 v3, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method
