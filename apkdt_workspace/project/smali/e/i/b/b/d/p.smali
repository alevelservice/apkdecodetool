.class final Le/i/b/b/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Le/i/b/b/d/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/i/b/b/d/z<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Le/i/b/b/d/b;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Le/i/b/b/d/b;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le/i/b/b/d/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/i/b/b/d/p;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/i/b/b/d/p;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Le/i/b/b/d/p;->c:Le/i/b/b/d/b;

    return-void
.end method

.method static synthetic a(Le/i/b/b/d/p;)Ljava/lang/Object;
    .locals 0

    .line 8
    iget-object p0, p0, Le/i/b/b/d/p;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Le/i/b/b/d/p;)Le/i/b/b/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Le/i/b/b/d/p;->c:Le/i/b/b/d/b;

    return-object p0
.end method


# virtual methods
.method public final a(Le/i/b/b/d/h;)V
    .locals 1
    .param p1    # Le/i/b/b/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Le/i/b/b/d/h;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Le/i/b/b/d/p;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Le/i/b/b/d/p;->c:Le/i/b/b/d/b;

    if-nez v0, :cond_0

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Le/i/b/b/d/p;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Le/i/b/b/d/q;

    invoke-direct {v0, p0}, Le/i/b/b/d/q;-><init>(Le/i/b/b/d/p;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/b/d/p;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Le/i/b/b/d/p;->c:Le/i/b/b/d/b;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
