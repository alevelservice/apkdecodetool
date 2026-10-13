.class Le/f/i/c/e$a;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/c/e;->b(Le/f/b/a/d;Ljava/util/concurrent/atomic/AtomicBoolean;)Lc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/f/i/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic f:Le/f/b/a/d;

.field final synthetic g:Le/f/i/c/e;


# direct methods
.method constructor <init>(Le/f/i/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;Le/f/b/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/i/c/e$a;->g:Le/f/i/c/e;

    iput-object p2, p0, Le/f/i/c/e$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Le/f/i/c/e$a;->f:Le/f/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Le/f/i/g/e;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#getAsync"

    .line 3
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/f/i/c/e$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5
    iget-object v0, p0, Le/f/i/c/e$a;->g:Le/f/i/c/e;

    invoke-static {v0}, Le/f/i/c/e;->a(Le/f/i/c/e;)Le/f/i/c/u;

    move-result-object v0

    iget-object v1, p0, Le/f/i/c/e$a;->f:Le/f/b/a/d;

    invoke-virtual {v0, v1}, Le/f/i/c/u;->a(Le/f/b/a/d;)Le/f/i/g/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Le/f/i/c/e;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    iget-object v3, p0, Le/f/i/c/e$a;->f:Le/f/b/a/d;

    invoke-interface {v3}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Le/f/i/c/e$a;->g:Le/f/i/c/e;

    invoke-static {v1}, Le/f/i/c/e;->b(Le/f/i/c/e;)Le/f/i/c/n;

    move-result-object v1

    iget-object v2, p0, Le/f/i/c/e$a;->f:Le/f/b/a/d;

    invoke-interface {v1, v2}, Le/f/i/c/n;->d(Le/f/b/a/d;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Le/f/i/c/e;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Did not find image for %s in staging area"

    iget-object v2, p0, Le/f/i/c/e$a;->f:Le/f/b/a/d;

    invoke-interface {v2}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Le/f/i/c/e$a;->g:Le/f/i/c/e;

    invoke-static {v0}, Le/f/i/c/e;->b(Le/f/i/c/e;)Le/f/i/c/n;

    move-result-object v0

    invoke-interface {v0}, Le/f/i/c/n;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v0, p0, Le/f/i/c/e$a;->g:Le/f/i/c/e;

    iget-object v1, p0, Le/f/i/c/e$a;->f:Le/f/b/a/d;

    invoke-static {v0, v1}, Le/f/i/c/e;->a(Le/f/i/c/e;Le/f/b/a/d;)Le/f/c/f/g;

    move-result-object v0

    .line 11
    invoke-static {v0}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    new-instance v1, Le/f/i/g/e;

    invoke-direct {v1, v0}, Le/f/i/g/e;-><init>(Le/f/c/g/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 14
    :goto_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Le/f/i/c/e;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v2}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Le/f/i/g/e;->close()V

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 18
    :cond_3
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v1

    .line 20
    :try_start_5
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 21
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    nop

    const/4 v0, 0x0

    .line 22
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_5
    return-object v0

    .line 24
    :cond_6
    :try_start_6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 25
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 27
    :cond_7
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/i/c/e$a;->call()Le/f/i/g/e;

    move-result-object v0

    return-object v0
.end method
