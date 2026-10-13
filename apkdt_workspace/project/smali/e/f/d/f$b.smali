.class Le/f/d/f$b;
.super Le/f/d/a;
.source "FirstAvailableDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/d/f$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/d/a<",
        "TT;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private g:I

.field private h:Le/f/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/d/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private i:Le/f/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/d/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic j:Le/f/d/f;


# direct methods
.method public constructor <init>(Le/f/d/f;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/f/d/f$b;->j:Le/f/d/f;

    invoke-direct {p0}, Le/f/d/a;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/f/d/f$b;->g:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/f/d/f$b;->h:Le/f/d/c;

    .line 4
    iput-object p1, p0, Le/f/d/f$b;->i:Le/f/d/c;

    .line 5
    invoke-direct {p0}, Le/f/d/f$b;->k()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No data source supplier or supplier returned null."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/f/d/a;->a(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method private a(Le/f/d/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Le/f/d/f$b;->h:Le/f/d/c;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Le/f/d/f$b;->i:Le/f/d/c;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Le/f/d/f$b;->i:Le/f/d/c;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-object p2, p0, Le/f/d/f$b;->i:Le/f/d/c;

    .line 12
    iput-object p1, p0, Le/f/d/f$b;->i:Le/f/d/c;

    move-object p1, p2

    .line 13
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-direct {p0, p1}, Le/f/d/f$b;->b(Le/f/d/c;)V

    return-void

    .line 15
    :cond_3
    :goto_2
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Le/f/d/f$b;Le/f/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/f/d/f$b;->c(Le/f/d/c;)V

    return-void
.end method

.method private declared-synchronized a(Le/f/d/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Le/f/d/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/f/d/f$b;->h:Le/f/d/c;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/f/d/f$b;->h:Le/f/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 6
    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Le/f/d/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Le/f/d/c;->close()Z

    :cond_0
    return-void
.end method

.method static synthetic b(Le/f/d/f$b;Le/f/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/f/d/f$b;->d(Le/f/d/c;)V

    return-void
.end method

.method private c(Le/f/d/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/f/d/f$b;->a(Le/f/d/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Le/f/d/f$b;->i()Le/f/d/c;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Le/f/d/f$b;->b(Le/f/d/c;)V

    .line 4
    :cond_1
    invoke-direct {p0}, Le/f/d/f$b;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-interface {p1}, Le/f/d/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/f/d/a;->a(Ljava/lang/Throwable;)Z

    :cond_2
    return-void
.end method

.method private d(Le/f/d/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Le/f/d/c;->b()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Le/f/d/f$b;->a(Le/f/d/c;Z)V

    .line 2
    invoke-direct {p0}, Le/f/d/f$b;->i()Le/f/d/c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1}, Le/f/d/c;->b()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Le/f/d/a;->a(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized e(Le/f/d/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/f/d/a;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    .line 5
    :cond_0
    :try_start_1
    iput-object p1, p0, Le/f/d/f$b;->h:Le/f/d/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized i()Le/f/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/d/c<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/d/f$b;->i:Le/f/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()Lcom/facebook/common/internal/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/f/d/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Le/f/d/f$b;->g:I

    iget-object v1, p0, Le/f/d/f$b;->j:Le/f/d/f;

    invoke-static {v1}, Le/f/d/f;->a(Le/f/d/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/f/d/f$b;->j:Le/f/d/f;

    invoke-static {v0}, Le/f/d/f;->a(Le/f/d/f;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Le/f/d/f$b;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/f/d/f$b;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/internal/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Le/f/d/f$b;->j()Lcom/facebook/common/internal/j;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/common/internal/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/d/c;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Le/f/d/f$b;->e(Le/f/d/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    new-instance v2, Le/f/d/f$b$a;

    invoke-direct {v2, p0, v1}, Le/f/d/f$b$a;-><init>(Le/f/d/f$b;Le/f/d/f$a;)V

    invoke-static {}, Le/f/c/b/a;->a()Le/f/c/b/a;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Le/f/d/c;->a(Le/f/d/e;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Le/f/d/f$b;->b(Le/f/d/c;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Le/f/d/f$b;->i()Le/f/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/f/d/c;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Le/f/d/a;->close()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Le/f/d/f$b;->h:Le/f/d/c;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Le/f/d/f$b;->h:Le/f/d/c;

    .line 6
    iget-object v2, p0, Le/f/d/f$b;->i:Le/f/d/c;

    .line 7
    iput-object v1, p0, Le/f/d/f$b;->i:Le/f/d/c;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-direct {p0, v2}, Le/f/d/f$b;->b(Le/f/d/c;)V

    .line 10
    invoke-direct {p0, v0}, Le/f/d/f$b;->b(Le/f/d/c;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Le/f/d/f$b;->i()Le/f/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/f/d/c;->e()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
