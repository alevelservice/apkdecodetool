.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;
.super Ljava/lang/Object;
.source "Uploader.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/datatransport/runtime/backends/e;

.field private final c:Le/i/b/a/i/w/j/c;

.field private final d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Le/i/b/a/i/x/b;

.field private final g:Lcom/google/android/datatransport/runtime/time/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/e;Le/i/b/a/i/w/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;Ljava/util/concurrent/Executor;Le/i/b/a/i/x/b;Lcom/google/android/datatransport/runtime/time/a;)V
    .locals 0
    .param p7    # Lcom/google/android/datatransport/runtime/time/a;
        .annotation build Lcom/google/android/datatransport/runtime/time/WallTime;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->b:Lcom/google/android/datatransport/runtime/backends/e;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->c:Le/i/b/a/i/w/j/c;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    .line 6
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->f:Le/i/b/a/i/x/b;

    .line 8
    iput-object p7, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->g:Lcom/google/android/datatransport/runtime/time/a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Le/i/b/a/i/m;)Ljava/lang/Iterable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->c:Le/i/b/a/i/w/j/c;

    invoke-interface {p0, p1}, Le/i/b/a/i/w/j/c;->a(Le/i/b/a/i/m;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Lcom/google/android/datatransport/runtime/backends/h;Ljava/lang/Iterable;Le/i/b/a/i/m;I)Ljava/lang/Object;
    .locals 5

    .line 30
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/h;->b()Lcom/google/android/datatransport/runtime/backends/h$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/datatransport/runtime/backends/h$a;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/h$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->c:Le/i/b/a/i/w/j/c;

    invoke-interface {p1, p2}, Le/i/b/a/i/w/j/c;->b(Ljava/lang/Iterable;)V

    .line 32
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    add-int/2addr p4, v2

    invoke-interface {p0, p3, p4}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->a(Le/i/b/a/i/m;I)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->c:Le/i/b/a/i/w/j/c;

    invoke-interface {p4, p2}, Le/i/b/a/i/w/j/c;->a(Ljava/lang/Iterable;)V

    .line 34
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/h;->b()Lcom/google/android/datatransport/runtime/backends/h$a;

    move-result-object p2

    sget-object p4, Lcom/google/android/datatransport/runtime/backends/h$a;->OK:Lcom/google/android/datatransport/runtime/backends/h$a;

    if-ne p2, p4, :cond_1

    .line 35
    iget-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->c:Le/i/b/a/i/w/j/c;

    iget-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->g:Lcom/google/android/datatransport/runtime/time/a;

    .line 36
    invoke-interface {p4}, Lcom/google/android/datatransport/runtime/time/a;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/h;->a()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 37
    invoke-interface {p2, p3, v0, v1}, Le/i/b/a/i/w/j/c;->a(Le/i/b/a/i/m;J)V

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->c:Le/i/b/a/i/w/j/c;

    invoke-interface {p1, p3}, Le/i/b/a/i/w/j/c;->c(Le/i/b/a/i/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    invoke-interface {p0, p3, v2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->a(Le/i/b/a/i/m;I)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Le/i/b/a/i/m;I)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->a(Le/i/b/a/i/m;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Le/i/b/a/i/m;ILjava/lang/Runnable;)V
    .locals 2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->f:Le/i/b/a/i/x/b;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->c:Le/i/b/a/i/w/j/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;->a(Le/i/b/a/i/w/j/c;)Le/i/b/a/i/x/b$a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/i/b/a/i/x/b;->a(Le/i/b/a/i/x/b$a;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->f:Le/i/b/a/i/x/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Le/i/b/a/i/m;I)Le/i/b/a/i/x/b$a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/i/b/a/i/x/b;->a(Le/i/b/a/i/x/b$a;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->a(Le/i/b/a/i/m;I)V
    :try_end_0
    .catch Le/i/b/a/i/x/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10
    :catch_0
    :try_start_1
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->a(Le/i/b/a/i/m;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 12
    throw p0
.end method


# virtual methods
.method a(Le/i/b/a/i/m;I)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->b:Lcom/google/android/datatransport/runtime/backends/e;

    invoke-virtual {p1}, Le/i/b/a/i/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/backends/e;->a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/n;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->f:Le/i/b/a/i/x/b;

    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Le/i/b/a/i/m;)Le/i/b/a/i/x/b$a;

    move-result-object v2

    .line 16
    invoke-interface {v1, v2}, Le/i/b/a/i/x/b;->a(Le/i/b/a/i/x/b$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Uploader"

    const-string v2, "Unknown backend for %s, deleting event batch for it..."

    .line 18
    invoke-static {v0, v2, p1}, Le/i/b/a/i/u/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/h;->c()Lcom/google/android/datatransport/runtime/backends/h;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/i/b/a/i/w/j/i;

    .line 22
    invoke-virtual {v4}, Le/i/b/a/i/w/j/i;->a()Le/i/b/a/i/h;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/g;->c()Lcom/google/android/datatransport/runtime/backends/g$a;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v2}, Lcom/google/android/datatransport/runtime/backends/g$a;->a(Ljava/lang/Iterable;)Lcom/google/android/datatransport/runtime/backends/g$a;

    .line 25
    invoke-virtual {p1}, Le/i/b/a/i/m;->b()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/datatransport/runtime/backends/g$a;->a([B)Lcom/google/android/datatransport/runtime/backends/g$a;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/g$a;->a()Lcom/google/android/datatransport/runtime/backends/g;

    move-result-object v2

    .line 27
    invoke-interface {v0, v2}, Lcom/google/android/datatransport/runtime/backends/n;->a(Lcom/google/android/datatransport/runtime/backends/g;)Lcom/google/android/datatransport/runtime/backends/h;

    move-result-object v0

    .line 28
    :goto_1
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->f:Le/i/b/a/i/x/b;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/j;->a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Lcom/google/android/datatransport/runtime/backends/h;Ljava/lang/Iterable;Le/i/b/a/i/m;I)Le/i/b/a/i/x/b$a;

    move-result-object p1

    invoke-interface {v2, p1}, Le/i/b/a/i/x/b;->a(Le/i/b/a/i/x/b$a;)Ljava/lang/Object;

    return-void
.end method

.method public a(Le/i/b/a/i/m;ILjava/lang/Runnable;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->e:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/h;->a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Le/i/b/a/i/m;ILjava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
