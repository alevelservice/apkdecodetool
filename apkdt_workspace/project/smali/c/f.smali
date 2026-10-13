.class public Lc/f;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final i:Ljava/util/concurrent/Executor;

.field private static volatile j:Lc/f$d;

.field private static k:Lc/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f<",
            "*>;"
        }
    .end annotation
.end field

.field private static l:Lc/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Lc/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;

.field private f:Z

.field private g:Lc/h;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lc/b;->a()Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-static {}, Lc/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lc/f;->i:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {}, Lc/a;->b()Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lc/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/f;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc/f;->k:Lc/f;

    .line 5
    new-instance v0, Lc/f;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/f;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc/f;->l:Lc/f;

    .line 6
    new-instance v0, Lc/f;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/f;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc/f;->m:Lc/f;

    .line 7
    new-instance v0, Lc/f;

    invoke-direct {v0, v1}, Lc/f;-><init>(Z)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/f;->h:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/f;->h:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1}, Lc/f;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/f;->h:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lc/f;->f()Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lc/f;->a(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lc/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc/f<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, p1, v0}, Lc/f;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lc/c;)Lc/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lc/c;)Lc/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lc/c;",
            ")",
            "Lc/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lc/g;

    invoke-direct {v0}, Lc/g;-><init>()V

    .line 12
    :try_start_0
    new-instance v1, Lc/f$c;

    invoke-direct {v1, p2, v0, p0}, Lc/f$c;-><init>(Lc/c;Lc/g;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lc/e;

    invoke-direct {p1, p0}, Lc/e;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, p1}, Lc/g;->a(Ljava/lang/Exception;)V

    .line 14
    :goto_0
    invoke-virtual {v0}, Lc/g;->a()Lc/f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lc/g;Lc/d;Lc/f;Ljava/util/concurrent/Executor;Lc/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lc/f;->b(Lc/g;Lc/d;Lc/f;Ljava/util/concurrent/Executor;Lc/c;)V

    return-void
.end method

.method public static b(Ljava/lang/Exception;)Lc/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lc/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 10
    new-instance v0, Lc/g;

    invoke-direct {v0}, Lc/g;-><init>()V

    .line 11
    invoke-virtual {v0, p0}, Lc/g;->a(Ljava/lang/Exception;)V

    .line 12
    invoke-virtual {v0}, Lc/g;->a()Lc/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Lc/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lc/f<",
            "TTResult;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lc/f;->k:Lc/f;

    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lc/f;->l:Lc/f;

    goto :goto_0

    :cond_1
    sget-object p0, Lc/f;->m:Lc/f;

    :goto_0
    return-object p0

    .line 7
    :cond_2
    new-instance v0, Lc/g;

    invoke-direct {v0}, Lc/g;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, Lc/g;->a(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lc/g;->a()Lc/f;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lc/g;Lc/d;Lc/f;Ljava/util/concurrent/Executor;Lc/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/g<",
            "TTContinuationResult;>;",
            "Lc/d<",
            "TTResult;TTContinuationResult;>;",
            "Lc/f<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lc/c;",
            ")V"
        }
    .end annotation

    .line 13
    :try_start_0
    new-instance v0, Lc/f$b;

    invoke-direct {v0, p4, p0, p1, p2}, Lc/f$b;-><init>(Lc/c;Lc/g;Lc/d;Lc/f;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Lc/e;

    invoke-direct {p2, p1}, Lc/e;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lc/g;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static g()Lc/f$d;
    .locals 1

    .line 1
    sget-object v0, Lc/f;->j:Lc/f$d;

    return-object v0
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-interface {v2, p0}, Lc/d;->a(Lc/f;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 5
    throw v1

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lc/f;->h:Ljava/util/List;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a(Lc/d;)Lc/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d<",
            "TTResult;TTContinuationResult;>;)",
            "Lc/f<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 23
    sget-object v0, Lc/f;->i:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc/f;->a(Lc/d;Ljava/util/concurrent/Executor;Lc/c;)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/d;Ljava/util/concurrent/Executor;Lc/c;)Lc/f;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lc/c;",
            ")",
            "Lc/f<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 15
    new-instance v6, Lc/g;

    invoke-direct {v6}, Lc/g;-><init>()V

    .line 16
    iget-object v7, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lc/f;->d()Z

    move-result v8

    if-nez v8, :cond_0

    .line 18
    iget-object v9, p0, Lc/f;->h:Ljava/util/List;

    new-instance v10, Lc/f$a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc/f$a;-><init>(Lc/f;Lc/g;Lc/d;Ljava/util/concurrent/Executor;Lc/c;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 20
    invoke-static {v6, p1, p0, p2, p3}, Lc/f;->b(Lc/g;Lc/d;Lc/f;Ljava/util/concurrent/Executor;Lc/c;)V

    .line 21
    :cond_1
    invoke-virtual {v6}, Lc/g;->a()Lc/f;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()Ljava/lang/Exception;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/f;->e:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lc/f;->f:Z

    .line 5
    iget-object v1, p0, Lc/f;->g:Lc/h;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lc/f;->g:Lc/h;

    invoke-virtual {v1}, Lc/h;->a()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lc/f;->g:Lc/h;

    .line 8
    :cond_0
    iget-object v1, p0, Lc/f;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(Ljava/lang/Exception;)Z
    .locals 3

    .line 33
    iget-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-boolean v1, p0, Lc/f;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 35
    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lc/f;->b:Z

    .line 37
    iput-object p1, p0, Lc/f;->e:Ljava/lang/Exception;

    .line 38
    iput-boolean v2, p0, Lc/f;->f:Z

    .line 39
    iget-object p1, p0, Lc/f;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 40
    invoke-direct {p0}, Lc/f;->h()V

    .line 41
    iget-boolean p1, p0, Lc/f;->f:Z

    if-nez p1, :cond_1

    invoke-static {}, Lc/f;->g()Lc/f$d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    new-instance p1, Lc/h;

    invoke-direct {p1, p0}, Lc/h;-><init>(Lc/f;)V

    iput-object p1, p0, Lc/f;->g:Lc/h;

    .line 43
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-boolean v1, p0, Lc/f;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 26
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lc/f;->b:Z

    .line 28
    iput-object p1, p0, Lc/f;->d:Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lc/f;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 30
    invoke-direct {p0}, Lc/f;->h()V

    .line 31
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/f;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lc/f;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lc/f;->b:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc/f;->a()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lc/f;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lc/f;->b:Z

    .line 5
    iput-boolean v1, p0, Lc/f;->c:Z

    .line 6
    iget-object v2, p0, Lc/f;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    invoke-direct {p0}, Lc/f;->h()V

    .line 8
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
