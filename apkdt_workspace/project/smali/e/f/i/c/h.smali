.class public Le/f/i/c/h;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Le/f/i/c/p;
.implements Le/f/c/f/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/i/c/h$d;,
        Le/f/i/c/h$e;,
        Le/f/i/c/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/i/c/p<",
        "TK;TV;>;",
        "Le/f/c/f/b;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field static final g:J
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final a:Le/f/i/c/g;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/g<",
            "TK;",
            "Le/f/i/c/h$d<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final b:Le/f/i/c/g;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/g<",
            "TK;",
            "Le/f/i/c/h$d<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final c:Le/f/i/c/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/v<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Le/f/i/c/q;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Le/f/i/c/q;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/f/i/c/h;->g:J

    return-void
.end method

.method public constructor <init>(Le/f/i/c/v;Le/f/i/c/h$c;Lcom/facebook/common/internal/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/v<",
            "TV;>;",
            "Le/f/i/c/h$c;",
            "Lcom/facebook/common/internal/j<",
            "Le/f/i/c/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    iput-object p1, p0, Le/f/i/c/h;->c:Le/f/i/c/v;

    .line 4
    new-instance p2, Le/f/i/c/g;

    invoke-direct {p0, p1}, Le/f/i/c/h;->a(Le/f/i/c/v;)Le/f/i/c/v;

    move-result-object v0

    invoke-direct {p2, v0}, Le/f/i/c/g;-><init>(Le/f/i/c/v;)V

    iput-object p2, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    .line 5
    new-instance p2, Le/f/i/c/g;

    invoke-direct {p0, p1}, Le/f/i/c/h;->a(Le/f/i/c/v;)Le/f/i/c/v;

    move-result-object p1

    invoke-direct {p2, p1}, Le/f/i/c/g;-><init>(Le/f/i/c/v;)V

    iput-object p2, p0, Le/f/i/c/h;->b:Le/f/i/c/g;

    .line 6
    iput-object p3, p0, Le/f/i/c/h;->d:Lcom/facebook/common/internal/j;

    .line 7
    iget-object p1, p0, Le/f/i/c/h;->d:Lcom/facebook/common/internal/j;

    invoke-interface {p1}, Lcom/facebook/common/internal/j;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/i/c/q;

    iput-object p1, p0, Le/f/i/c/h;->e:Le/f/i/c/q;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Le/f/i/c/h;->f:J

    return-void
.end method

.method private a(Le/f/i/c/v;)Le/f/i/c/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/v<",
            "TV;>;)",
            "Le/f/i/c/v<",
            "Le/f/i/c/h$d<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Le/f/i/c/h$a;

    invoke-direct {v0, p0, p1}, Le/f/i/c/h$a;-><init>(Le/f/i/c/h;Le/f/i/c/v;)V

    return-object v0
.end method

.method private declared-synchronized a(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Le/f/i/c/h$d<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 22
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 23
    iget-object v0, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v0}, Le/f/i/c/g;->a()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v0}, Le/f/i/c/g;->c()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x0

    .line 24
    monitor-exit p0

    return-object p1

    .line 25
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    :goto_0
    iget-object v1, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v1}, Le/f/i/c/g;->a()I

    move-result v1

    if-gt v1, p1, :cond_2

    iget-object v1, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v1}, Le/f/i/c/g;->c()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v1, p2, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    monitor-exit p0

    return-object v0

    .line 28
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v1}, Le/f/i/c/g;->b()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget-object v2, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v2, v1}, Le/f/i/c/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v2, p0, Le/f/i/c/h;->b:Le/f/i/c/g;

    invoke-virtual {v2, v1}, Le/f/i/c/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized a(Le/f/i/c/h$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget v0, p1, Le/f/i/c/h$d;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 36
    iget v0, p1, Le/f/i/c/h$d;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Le/f/i/c/h$d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Le/f/i/c/h;Le/f/i/c/h$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/f/i/c/h;->i(Le/f/i/c/h$d;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Le/f/i/c/h$d<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/c/h$d;

    .line 32
    invoke-direct {p0, v0}, Le/f/i/c/h;->c(Le/f/i/c/h$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 33
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Le/f/i/c/h$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v0, p1, Le/f/i/c/h$d;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 6
    iget v0, p1, Le/f/i/c/h$d;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Le/f/i/c/h$d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Le/f/i/c/h$d<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/c/h$d;

    .line 3
    invoke-direct {p0, v0}, Le/f/i/c/h;->h(Le/f/i/c/h$d;)Le/f/c/g/a;

    move-result-object v0

    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Le/f/i/c/h;->e:Le/f/i/c/q;

    iget v0, v0, Le/f/i/c/q;->d:I

    iget-object v1, p0, Le/f/i/c/h;->e:Le/f/i/c/q;

    iget v1, v1, Le/f/i/c/q;->b:I

    .line 13
    invoke-virtual {p0}, Le/f/i/c/h;->a()I

    move-result v2

    sub-int/2addr v1, v2

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    iget-object v1, p0, Le/f/i/c/h;->e:Le/f/i/c/q;

    iget v1, v1, Le/f/i/c/q;->c:I

    iget-object v2, p0, Le/f/i/c/h;->e:Le/f/i/c/q;

    iget v2, v2, Le/f/i/c/q;->a:I

    .line 16
    invoke-virtual {p0}, Le/f/i/c/h;->b()I

    move-result v3

    sub-int/2addr v2, v3

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 18
    invoke-direct {p0, v0, v1}, Le/f/i/c/h;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Le/f/i/c/h;->a(Ljava/util/ArrayList;)V

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-direct {p0, v0}, Le/f/i/c/h;->b(Ljava/util/ArrayList;)V

    .line 22
    invoke-direct {p0, v0}, Le/f/i/c/h;->c(Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized c(Le/f/i/c/h$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-boolean v0, p1, Le/f/i/c/h$d;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 28
    iput-boolean v1, p1, Le/f/i/c/h$d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Le/f/i/c/h$d<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/c/h$d;

    .line 25
    invoke-static {v0}, Le/f/i/c/h;->f(Le/f/i/c/h$d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized d()V
    .locals 5

    monitor-enter p0

    .line 10
    :try_start_0
    iget-wide v0, p0, Le/f/i/c/h;->f:J

    sget-wide v2, Le/f/i/c/h;->g:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/f/i/c/h;->f:J

    .line 13
    iget-object v0, p0, Le/f/i/c/h;->d:Lcom/facebook/common/internal/j;

    invoke-interface {v0}, Lcom/facebook/common/internal/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/c/q;

    iput-object v0, p0, Le/f/i/c/h;->e:Le/f/i/c/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Le/f/i/c/h$d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p1, Le/f/i/c/h$d;->d:Z

    if-nez v0, :cond_0

    iget v0, p1, Le/f/i/c/h$d;->c:I

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    iget-object v1, p1, Le/f/i/c/h$d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Le/f/i/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 8
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 9
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/i/c/h;->c:Le/f/i/c/v;

    invoke-interface {v0, p1}, Le/f/i/c/v;->a(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Le/f/i/c/h;->e:Le/f/i/c/q;

    iget v0, v0, Le/f/i/c/q;->e:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/f/i/c/h;->a()I

    move-result v0

    iget-object v2, p0, Le/f/i/c/h;->e:Le/f/i/c/q;

    iget v2, v2, Le/f/i/c/q;->b:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Le/f/i/c/h;->b()I

    move-result v0

    iget-object v2, p0, Le/f/i/c/h;->e:Le/f/i/c/q;

    iget v2, v2, Le/f/i/c/q;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static e(Le/f/i/c/h$d;)V
    .locals 2
    .param p0    # Le/f/i/c/h$d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Le/f/i/c/h$d;->e:Le/f/i/c/h$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Le/f/i/c/h$d;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Le/f/i/c/h$e;->a(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private static f(Le/f/i/c/h$d;)V
    .locals 2
    .param p0    # Le/f/i/c/h$d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Le/f/i/c/h$d;->e:Le/f/i/c/h$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Le/f/i/c/h$d;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Le/f/i/c/h$e;->a(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private declared-synchronized g(Le/f/i/c/h$d;)Le/f/c/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)",
            "Le/f/c/g/a<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Le/f/i/c/h;->b(Le/f/i/c/h$d;)V

    .line 2
    iget-object v0, p1, Le/f/i/c/h$d;->b:Le/f/c/g/a;

    .line 3
    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Le/f/i/c/h$b;

    invoke-direct {v1, p0, p1}, Le/f/i/c/h$b;-><init>(Le/f/i/c/h;Le/f/i/c/h$d;)V

    .line 4
    invoke-static {v0, v1}, Le/f/c/g/a;->a(Ljava/lang/Object;Le/f/c/g/c;)Le/f/c/g/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized h(Le/f/i/c/h$d;)Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)",
            "Le/f/c/g/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Le/f/i/c/h$d;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Le/f/i/c/h$d;->c:I

    if-nez v0, :cond_0

    iget-object p1, p1, Le/f/i/c/h$d;->b:Le/f/c/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private i(Le/f/i/c/h$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Le/f/i/c/h;->a(Le/f/i/c/h$d;)V

    .line 4
    invoke-direct {p0, p1}, Le/f/i/c/h;->d(Le/f/i/c/h$d;)Z

    move-result v0

    .line 5
    invoke-direct {p0, p1}, Le/f/i/c/h;->h(Le/f/i/c/h$d;)Le/f/c/g/a;

    move-result-object v1

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Le/f/i/c/h;->e(Le/f/i/c/h$d;)V

    .line 9
    invoke-direct {p0}, Le/f/i/c/h;->d()V

    .line 10
    invoke-direct {p0}, Le/f/i/c/h;->c()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 2

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Le/f/i/c/h;->b:Le/f/i/c/g;

    invoke-virtual {v0}, Le/f/i/c/g;->a()I

    move-result v0

    iget-object v1, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v1}, Le/f/i/c/g;->a()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;Le/f/c/g/a;)Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Le/f/c/g/a<",
            "TV;>;)",
            "Le/f/c/g/a<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Le/f/i/c/h;->a(Ljava/lang/Object;Le/f/c/g/a;Le/f/i/c/h$e;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Le/f/c/g/a;Le/f/i/c/h$e;)Le/f/c/g/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Le/f/c/g/a<",
            "TV;>;",
            "Le/f/i/c/h$e<",
            "TK;>;)",
            "Le/f/c/g/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Le/f/i/c/h;->d()V

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v0, p1}, Le/f/i/c/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/c/h$d;

    .line 9
    iget-object v1, p0, Le/f/i/c/h;->b:Le/f/i/c/g;

    invoke-virtual {v1, p1}, Le/f/i/c/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/i/c/h$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 10
    invoke-direct {p0, v1}, Le/f/i/c/h;->c(Le/f/i/c/h$d;)V

    .line 11
    invoke-direct {p0, v1}, Le/f/i/c/h;->h(Le/f/i/c/h$d;)Le/f/c/g/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 12
    :goto_0
    invoke-virtual {p2}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Le/f/i/c/h;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-static {p1, p2, p3}, Le/f/i/c/h$d;->a(Ljava/lang/Object;Le/f/c/g/a;Le/f/i/c/h$e;)Le/f/i/c/h$d;

    move-result-object p2

    .line 14
    iget-object p3, p0, Le/f/i/c/h;->b:Le/f/i/c/g;

    invoke-virtual {p3, p1, p2}, Le/f/i/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-direct {p0, p2}, Le/f/i/c/h;->g(Le/f/i/c/h$d;)Le/f/c/g/a;

    move-result-object v2

    .line 16
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 18
    invoke-static {v0}, Le/f/i/c/h;->f(Le/f/i/c/h$d;)V

    .line 19
    invoke-direct {p0}, Le/f/i/c/h;->c()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 2

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Le/f/i/c/h;->b:Le/f/i/c/g;

    invoke-virtual {v0}, Le/f/i/c/g;->c()I

    move-result v0

    iget-object v1, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v1}, Le/f/i/c/g;->c()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/i/c/h;->b:Le/f/i/c/g;

    invoke-virtual {v0, p1}, Le/f/i/c/g;->a(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/Object;)Le/f/c/g/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Le/f/c/g/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v0, p1}, Le/f/i/c/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/c/h$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v3, p0, Le/f/i/c/h;->b:Le/f/i/c/g;

    invoke-virtual {v3, p1}, Le/f/i/c/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/i/c/h$d;

    .line 5
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v3, p1, Le/f/i/c/h$d;->c:I

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 7
    iget-object p1, p1, Le/f/i/c/h$d;->b:Le/f/c/g/a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    invoke-static {v0}, Le/f/i/c/h;->f(Le/f/i/c/h$d;)V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Le/f/c/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Le/f/c/g/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Le/f/i/c/h;->a:Le/f/i/c/g;

    invoke-virtual {v0, p1}, Le/f/i/c/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/c/h$d;

    .line 4
    iget-object v1, p0, Le/f/i/c/h;->b:Le/f/i/c/g;

    invoke-virtual {v1, p1}, Le/f/i/c/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/i/c/h$d;

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0, p1}, Le/f/i/c/h;->g(Le/f/i/c/h$d;)Le/f/c/g/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Le/f/i/c/h;->f(Le/f/i/c/h$d;)V

    .line 8
    invoke-direct {p0}, Le/f/i/c/h;->d()V

    .line 9
    invoke-direct {p0}, Le/f/i/c/h;->c()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
