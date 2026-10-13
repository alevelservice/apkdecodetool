.class public Le/f/i/c/e;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"


# static fields
.field private static final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/cache/disk/h;

.field private final b:Le/f/c/f/h;

.field private final c:Le/f/c/f/k;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Le/f/i/c/u;

.field private final g:Le/f/i/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/f/i/c/e;

    sput-object v0, Le/f/i/c/e;->h:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/h;Le/f/c/f/h;Le/f/c/f/k;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Le/f/i/c/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/i/c/e;->a:Lcom/facebook/cache/disk/h;

    .line 3
    iput-object p2, p0, Le/f/i/c/e;->b:Le/f/c/f/h;

    .line 4
    iput-object p3, p0, Le/f/i/c/e;->c:Le/f/c/f/k;

    .line 5
    iput-object p4, p0, Le/f/i/c/e;->d:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p5, p0, Le/f/i/c/e;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Le/f/i/c/e;->g:Le/f/i/c/n;

    .line 8
    invoke-static {}, Le/f/i/c/u;->a()Le/f/i/c/u;

    move-result-object p1

    iput-object p1, p0, Le/f/i/c/e;->f:Le/f/i/c/u;

    return-void
.end method

.method static synthetic a(Le/f/i/c/e;Le/f/b/a/d;)Le/f/c/f/g;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Le/f/i/c/e;->b(Le/f/b/a/d;)Le/f/c/f/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Le/f/i/c/e;)Le/f/i/c/u;
    .locals 0

    .line 1
    iget-object p0, p0, Le/f/i/c/e;->f:Le/f/i/c/u;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .line 2
    sget-object v0, Le/f/i/c/e;->h:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Le/f/i/c/e;Le/f/b/a/d;Le/f/i/g/e;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Le/f/i/c/e;->c(Le/f/b/a/d;Le/f/i/g/e;)V

    return-void
.end method

.method private b(Le/f/b/a/d;Le/f/i/g/e;)Lc/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/b/a/d;",
            "Le/f/i/g/e;",
            ")",
            "Lc/f<",
            "Le/f/i/g/e;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Le/f/i/c/e;->h:Ljava/lang/Class;

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    invoke-static {v0, v2, v1}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Le/f/i/c/e;->g:Le/f/i/c/n;

    invoke-interface {v0, p1}, Le/f/i/c/n;->d(Le/f/b/a/d;)V

    .line 9
    invoke-static {p2}, Lc/f;->b(Ljava/lang/Object;)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method private b(Le/f/b/a/d;Ljava/util/concurrent/atomic/AtomicBoolean;)Lc/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/b/a/d;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lc/f<",
            "Le/f/i/g/e;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Le/f/i/c/e$a;

    invoke-direct {v0, p0, p2, p1}, Le/f/i/c/e$a;-><init>(Le/f/i/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;Le/f/b/a/d;)V

    iget-object p2, p0, Le/f/i/c/e;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, p2}, Lc/f;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lc/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 3
    sget-object v0, Le/f/i/c/e;->h:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to schedule disk-cache read for %s"

    .line 5
    invoke-static {v0, p2, p1, v1}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {p2}, Lc/f;->b(Ljava/lang/Exception;)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method private b(Le/f/b/a/d;)Le/f/c/f/g;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 10
    :try_start_0
    sget-object v0, Le/f/i/c/e;->h:Ljava/lang/Class;

    const-string v1, "Disk cache read for %s"

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Le/f/i/c/e;->a:Lcom/facebook/cache/disk/h;

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/h;->a(Le/f/b/a/d;)Le/f/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    sget-object v0, Le/f/i/c/e;->h:Ljava/lang/Class;

    const-string v1, "Disk cache miss for %s"

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Le/f/i/c/e;->g:Le/f/i/c/n;

    invoke-interface {v0}, Le/f/i/c/n;->c()V

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_0
    sget-object v1, Le/f/i/c/e;->h:Ljava/lang/Class;

    const-string v2, "Found entry in disk cache for %s"

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v1, p0, Le/f/i/c/e;->g:Le/f/i/c/n;

    invoke-interface {v1, p1}, Le/f/i/c/n;->b(Le/f/b/a/d;)V

    .line 16
    invoke-interface {v0}, Le/f/a/a;->a()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object v2, p0, Le/f/i/c/e;->b:Le/f/c/f/h;

    invoke-interface {v0}, Le/f/a/a;->size()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v2, v1, v0}, Le/f/c/f/h;->a(Ljava/io/InputStream;I)Le/f/c/f/g;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 19
    sget-object v1, Le/f/i/c/e;->h:Ljava/lang/Class;

    const-string v2, "Successful read from disk cache for %s"

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 21
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 22
    sget-object v1, Le/f/i/c/e;->h:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Exception reading from cache for %s"

    invoke-static {v1, v0, p1, v2}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Le/f/i/c/e;->g:Le/f/i/c/n;

    invoke-interface {p1}, Le/f/i/c/n;->b()V

    .line 24
    throw v0
.end method

.method static synthetic b(Le/f/i/c/e;)Le/f/i/c/n;
    .locals 0

    .line 1
    iget-object p0, p0, Le/f/i/c/e;->g:Le/f/i/c/n;

    return-object p0
.end method

.method static synthetic c(Le/f/i/c/e;)Lcom/facebook/cache/disk/h;
    .locals 0

    .line 1
    iget-object p0, p0, Le/f/i/c/e;->a:Lcom/facebook/cache/disk/h;

    return-object p0
.end method

.method private c(Le/f/b/a/d;Le/f/i/g/e;)V
    .locals 3

    .line 2
    sget-object v0, Le/f/i/c/e;->h:Ljava/lang/Class;

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "About to write to disk-cache for key %s"

    invoke-static {v0, v2, v1}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/f/i/c/e;->a:Lcom/facebook/cache/disk/h;

    new-instance v1, Le/f/i/c/e$d;

    invoke-direct {v1, p0, p2}, Le/f/i/c/e$d;-><init>(Le/f/i/c/e;Le/f/i/g/e;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/cache/disk/h;->a(Le/f/b/a/d;Le/f/b/a/j;)Le/f/a/a;

    .line 4
    sget-object p2, Le/f/i/c/e;->h:Ljava/lang/Class;

    const-string v0, "Successful disk-cache write for key %s"

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    sget-object v0, Le/f/i/c/e;->h:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to write to disk-cache for key %s"

    invoke-static {v0, p2, p1, v1}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Le/f/i/c/e;)Le/f/c/f/k;
    .locals 0

    .line 1
    iget-object p0, p0, Le/f/i/c/e;->c:Le/f/c/f/k;

    return-object p0
.end method


# virtual methods
.method public a(Le/f/b/a/d;)Lc/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/b/a/d;",
            ")",
            "Lc/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Le/f/i/c/e;->f:Le/f/i/c/u;

    invoke-virtual {v0, p1}, Le/f/i/c/u;->b(Le/f/b/a/d;)Z

    .line 34
    :try_start_0
    new-instance v0, Le/f/i/c/e$c;

    invoke-direct {v0, p0, p1}, Le/f/i/c/e$c;-><init>(Le/f/i/c/e;Le/f/b/a/d;)V

    iget-object v1, p0, Le/f/i/c/e;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lc/f;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lc/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 35
    sget-object v1, Le/f/i/c/e;->h:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Failed to schedule disk-cache remove for %s"

    invoke-static {v1, v0, p1, v2}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-static {v0}, Lc/f;->b(Ljava/lang/Exception;)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/f/b/a/d;Ljava/util/concurrent/atomic/AtomicBoolean;)Lc/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/b/a/d;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lc/f<",
            "Le/f/i/g/e;",
            ">;"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#get"

    .line 6
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Le/f/i/c/e;->f:Le/f/i/c/u;

    invoke-virtual {v0, p1}, Le/f/i/c/u;->a(Le/f/b/a/d;)Le/f/i/g/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, p1, v0}, Le/f/i/c/e;->b(Le/f/b/a/d;Le/f/i/g/e;)Lc/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-object p1

    .line 11
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Le/f/i/c/e;->b(Le/f/b/a/d;Ljava/util/concurrent/atomic/AtomicBoolean;)Lc/f;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 16
    :cond_4
    throw p1
.end method

.method public a(Le/f/b/a/d;Le/f/i/g/e;)V
    .locals 7

    .line 17
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#put"

    .line 18
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p2}, Le/f/i/g/e;->e(Le/f/i/g/e;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->a(Z)V

    .line 21
    iget-object v0, p0, Le/f/i/c/e;->f:Le/f/i/c/u;

    invoke-virtual {v0, p1, p2}, Le/f/i/c/u;->a(Le/f/b/a/d;Le/f/i/g/e;)V

    .line 22
    invoke-static {p2}, Le/f/i/g/e;->b(Le/f/i/g/e;)Le/f/i/g/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    iget-object v1, p0, Le/f/i/c/e;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Le/f/i/c/e$b;

    invoke-direct {v2, p0, p1, v0}, Le/f/i/c/e$b;-><init>(Le/f/i/c/e;Le/f/b/a/d;Le/f/i/g/e;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 24
    :try_start_2
    sget-object v2, Le/f/i/c/e;->h:Ljava/lang/Class;

    const-string v3, "Failed to schedule disk-cache write for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Le/f/b/a/d;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v1, v3, v4}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Le/f/i/c/e;->f:Le/f/i/c/u;

    invoke-virtual {v1, p1, p2}, Le/f/i/c/u;->b(Le/f/b/a/d;Le/f/i/g/e;)Z

    .line 26
    invoke-static {v0}, Le/f/i/g/e;->c(Le/f/i/g/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :goto_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 29
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 30
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 31
    :cond_2
    throw p1
.end method
