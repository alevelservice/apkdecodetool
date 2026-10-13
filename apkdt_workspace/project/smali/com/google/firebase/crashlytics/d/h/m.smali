.class public Lcom/google/firebase/crashlytics/d/h/m;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/c;

.field private final c:Lcom/google/firebase/crashlytics/d/h/t;

.field private final d:J

.field private e:Lcom/google/firebase/crashlytics/d/h/n;

.field private f:Lcom/google/firebase/crashlytics/d/h/n;

.field private g:Z

.field private h:Lcom/google/firebase/crashlytics/d/h/k;

.field private final i:Lcom/google/firebase/crashlytics/d/h/y;

.field private final j:Lcom/google/firebase/crashlytics/d/g/b;

.field private final k:Lcom/google/firebase/crashlytics/d/f/a;

.field private l:Ljava/util/concurrent/ExecutorService;

.field private m:Lcom/google/firebase/crashlytics/d/h/i;

.field private n:Lcom/google/firebase/crashlytics/d/a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/crashlytics/d/h/t;Lcom/google/firebase/crashlytics/d/g/b;Lcom/google/firebase/crashlytics/d/f/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/m;->b:Lcom/google/firebase/c;

    .line 3
    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/h/m;->c:Lcom/google/firebase/crashlytics/d/h/t;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/c;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/m;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/m;->i:Lcom/google/firebase/crashlytics/d/h/y;

    .line 6
    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/h/m;->n:Lcom/google/firebase/crashlytics/d/a;

    .line 7
    iput-object p5, p0, Lcom/google/firebase/crashlytics/d/h/m;->j:Lcom/google/firebase/crashlytics/d/g/b;

    .line 8
    iput-object p6, p0, Lcom/google/firebase/crashlytics/d/h/m;->k:Lcom/google/firebase/crashlytics/d/f/a;

    .line 9
    iput-object p7, p0, Lcom/google/firebase/crashlytics/d/h/m;->l:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance p1, Lcom/google/firebase/crashlytics/d/h/i;

    invoke-direct {p1, p7}, Lcom/google/firebase/crashlytics/d/h/i;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/m;->m:Lcom/google/firebase/crashlytics/d/h/i;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/crashlytics/d/h/m;->d:J

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/m;)Lcom/google/firebase/crashlytics/d/h/n;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/m;->e:Lcom/google/firebase/crashlytics/d/h/n;

    return-object p0
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/m;Lcom/google/firebase/crashlytics/d/o/e;)Le/i/b/b/d/h;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/m;->c(Lcom/google/firebase/crashlytics/d/o/e;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 10
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p0

    const-string p1, "Configured not to require a build ID."

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    return v0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/h/h;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/google/firebase/crashlytics/d/h/m;)Lcom/google/firebase/crashlytics/d/h/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    return-object p0
.end method

.method private c(Lcom/google/firebase/crashlytics/d/o/e;)Le/i/b/b/d/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/o/e;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/m;->f()V

    .line 2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/k;->b()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/m;->j:Lcom/google/firebase/crashlytics/d/g/b;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/h/l;->a(Lcom/google/firebase/crashlytics/d/h/m;)Lcom/google/firebase/crashlytics/d/g/a;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/firebase/crashlytics/d/g/b;->a(Lcom/google/firebase/crashlytics/d/g/a;)V

    .line 4
    invoke-interface {p1}, Lcom/google/firebase/crashlytics/d/o/e;->b()Lcom/google/firebase/crashlytics/d/o/i/e;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/d/o/i/e;->a()Lcom/google/firebase/crashlytics/d/o/i/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/firebase/crashlytics/d/o/i/c;->a:Z

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/lang/Exception;)Le/i/b/b/d/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/m;->e()V

    return-object p1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/d/o/i/e;->b()Lcom/google/firebase/crashlytics/d/o/i/d;

    move-result-object v1

    iget v1, v1, Lcom/google/firebase/crashlytics/d/o/i/d;->a:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/k;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Could not finalize previous sessions."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    invoke-interface {p1}, Lcom/google/firebase/crashlytics/d/o/e;->a()Le/i/b/b/d/h;

    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(FLe/i/b/b/d/h;)Le/i/b/b/d/h;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/m;->e()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/lang/Exception;)Le/i/b/b/d/h;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/m;->e()V

    return-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/m;->e()V

    .line 19
    throw p1
.end method

.method private d(Lcom/google/firebase/crashlytics/d/o/e;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/m$b;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/d/h/m$b;-><init>(Lcom/google/firebase/crashlytics/d/h/m;Lcom/google/firebase/crashlytics/d/o/e;)V

    .line 2
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/m;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x4

    .line 5
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crashlytics timed out during initialization."

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Problem encountered during Crashlytics initialization."

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 8
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crashlytics was interrupted during initialization."

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->m:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/m$d;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/d/h/m$d;-><init>(Lcom/google/firebase/crashlytics/d/h/m;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->g:Z

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->g:Z

    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    const-string v0, "17.3.0"

    return-object v0
.end method


# virtual methods
.method public a()Le/i/b/b/d/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/k;->a()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/firebase/crashlytics/d/o/e;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/o/e;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/m$a;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/d/h/m$a;-><init>(Lcom/google/firebase/crashlytics/d/h/m;Lcom/google/firebase/crashlytics/d/o/e;)V

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->c:Lcom/google/firebase/crashlytics/d/h/t;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/t;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/crashlytics/d/h/m;->d:J

    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(JLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()Le/i/b/b/d/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/k;->c()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/d/o/e;)Z
    .locals 21

    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lcom/google/firebase/crashlytics/d/h/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mapping file ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 4
    iget-object v2, v1, Lcom/google/firebase/crashlytics/d/h/m;->a:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "com.crashlytics.RequireBuildId"

    .line 5
    invoke-static {v2, v4, v3}, Lcom/google/firebase/crashlytics/d/h/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 6
    invoke-static {v0, v2}, Lcom/google/firebase/crashlytics/d/h/m;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v1, Lcom/google/firebase/crashlytics/d/h/m;->b:Lcom/google/firebase/c;

    invoke-virtual {v2}, Lcom/google/firebase/c;->d()Lcom/google/firebase/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/j;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initializing Crashlytics "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/m;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/crashlytics/d/b;->c(Ljava/lang/String;)V

    .line 9
    new-instance v13, Lcom/google/firebase/crashlytics/d/k/i;

    iget-object v5, v1, Lcom/google/firebase/crashlytics/d/h/m;->a:Landroid/content/Context;

    invoke-direct {v13, v5}, Lcom/google/firebase/crashlytics/d/k/i;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v5, Lcom/google/firebase/crashlytics/d/h/n;

    const-string v6, "crash_marker"

    invoke-direct {v5, v6, v13}, Lcom/google/firebase/crashlytics/d/h/n;-><init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/d/k/h;)V

    iput-object v5, v1, Lcom/google/firebase/crashlytics/d/h/m;->f:Lcom/google/firebase/crashlytics/d/h/n;

    .line 11
    new-instance v5, Lcom/google/firebase/crashlytics/d/h/n;

    const-string v6, "initialization_marker"

    invoke-direct {v5, v6, v13}, Lcom/google/firebase/crashlytics/d/h/n;-><init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/d/k/h;)V

    iput-object v5, v1, Lcom/google/firebase/crashlytics/d/h/m;->e:Lcom/google/firebase/crashlytics/d/h/n;

    .line 12
    new-instance v10, Lcom/google/firebase/crashlytics/d/j/c;

    invoke-direct {v10}, Lcom/google/firebase/crashlytics/d/j/c;-><init>()V

    .line 13
    new-instance v5, Lcom/google/firebase/crashlytics/d/q/a;

    iget-object v6, v1, Lcom/google/firebase/crashlytics/d/h/m;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/firebase/crashlytics/d/q/a;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object v6, v1, Lcom/google/firebase/crashlytics/d/h/m;->a:Landroid/content/Context;

    iget-object v7, v1, Lcom/google/firebase/crashlytics/d/h/m;->i:Lcom/google/firebase/crashlytics/d/h/y;

    .line 15
    invoke-static {v6, v7, v2, v0, v5}, Lcom/google/firebase/crashlytics/d/h/b;->a(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/y;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/q/b;)Lcom/google/firebase/crashlytics/d/h/b;

    move-result-object v15

    .line 16
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installer package name is: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/google/firebase/crashlytics/d/h/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k;

    iget-object v8, v1, Lcom/google/firebase/crashlytics/d/h/m;->a:Landroid/content/Context;

    iget-object v9, v1, Lcom/google/firebase/crashlytics/d/h/m;->m:Lcom/google/firebase/crashlytics/d/h/i;

    iget-object v11, v1, Lcom/google/firebase/crashlytics/d/h/m;->i:Lcom/google/firebase/crashlytics/d/h/y;

    iget-object v12, v1, Lcom/google/firebase/crashlytics/d/h/m;->c:Lcom/google/firebase/crashlytics/d/h/t;

    iget-object v14, v1, Lcom/google/firebase/crashlytics/d/h/m;->f:Lcom/google/firebase/crashlytics/d/h/n;

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v2, v1, Lcom/google/firebase/crashlytics/d/h/m;->n:Lcom/google/firebase/crashlytics/d/a;

    iget-object v5, v1, Lcom/google/firebase/crashlytics/d/h/m;->k:Lcom/google/firebase/crashlytics/d/f/a;

    move-object v7, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, p1

    invoke-direct/range {v7 .. v20}, Lcom/google/firebase/crashlytics/d/h/k;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/i;Lcom/google/firebase/crashlytics/d/j/c;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/h/t;Lcom/google/firebase/crashlytics/d/k/h;Lcom/google/firebase/crashlytics/d/h/n;Lcom/google/firebase/crashlytics/d/h/b;Lcom/google/firebase/crashlytics/d/m/a;Lcom/google/firebase/crashlytics/d/m/b$b;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/crashlytics/d/f/a;Lcom/google/firebase/crashlytics/d/o/e;)V

    iput-object v0, v1, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/crashlytics/d/h/m;->d()Z

    move-result v0

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/d/h/m;->h()V

    .line 20
    iget-object v2, v1, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    move-object/from16 v6, p1

    .line 22
    invoke-virtual {v2, v5, v6}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crashlytics/d/o/e;)V

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, v1, Lcom/google/firebase/crashlytics/d/h/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 25
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 26
    invoke-direct/range {p0 .. p1}, Lcom/google/firebase/crashlytics/d/h/m;->d(Lcom/google/firebase/crashlytics/d/o/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 27
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Exception handling initialization successful"

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception v0

    .line 28
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    .line 29
    invoke-virtual {v2, v3, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, v1, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    return v4

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->g:Z

    return v0
.end method

.method d()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->e:Lcom/google/firebase/crashlytics/d/h/n;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/n;->b()Z

    move-result v0

    return v0
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->m:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/m$c;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/d/h/m$c;-><init>(Lcom/google/firebase/crashlytics/d/h/m;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->m:Lcom/google/firebase/crashlytics/d/h/i;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/i;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->e:Lcom/google/firebase/crashlytics/d/h/n;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/n;->a()Z

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Initialization marker file created."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()Le/i/b/b/d/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m;->h:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/k;->o()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method
