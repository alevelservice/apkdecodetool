.class public Lcom/mapbox/android/telemetry/x;
.super Ljava/lang/Object;
.source "MapboxTelemetry.java"

# interfaces
.implements Lcom/mapbox/android/telemetry/u;
.implements Lcom/mapbox/android/telemetry/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/telemetry/x$h;
    }
.end annotation


# static fields
.field private static m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static n:Landroid/content/Context;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lcom/mapbox/android/telemetry/r;

.field private c:Lcom/mapbox/android/telemetry/g0;

.field private d:Li/f;

.field private final e:Lcom/mapbox/android/telemetry/z;

.field private f:Lcom/mapbox/android/telemetry/i;

.field private final g:Lcom/mapbox/android/telemetry/j0;

.field private h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/mapbox/android/telemetry/k0;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/mapbox/android/telemetry/e;

.field private j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/mapbox/android/telemetry/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/mapbox/android/telemetry/n;

.field private final l:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/mapbox/android/telemetry/x;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->f:Lcom/mapbox/android/telemetry/i;

    .line 3
    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->a(Landroid/content/Context;)V

    const-string v0, "MapboxTelemetryExecutor"

    const/4 v1, 0x3

    const-wide/16 v2, 0x14

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/mapbox/android/telemetry/x$h;->a(Ljava/lang/String;IJ)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->l:Ljava/util/concurrent/ExecutorService;

    .line 7
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->l:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, p2, v0}, Lcom/mapbox/android/telemetry/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 8
    iput-object p3, p0, Lcom/mapbox/android/telemetry/x;->a:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->i()Lcom/mapbox/android/telemetry/a;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/mapbox/android/telemetry/a0;

    sget-object p3, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    invoke-direct {p2, p3, p1}, Lcom/mapbox/android/telemetry/a0;-><init>(Landroid/content/Context;Lcom/mapbox/android/telemetry/a;)V

    invoke-virtual {p2}, Lcom/mapbox/android/telemetry/a0;->a()Lcom/mapbox/android/telemetry/z;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/z;

    .line 11
    new-instance p1, Lcom/mapbox/android/telemetry/j0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/mapbox/android/telemetry/j0;-><init>(Z)V

    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->g:Lcom/mapbox/android/telemetry/j0;

    .line 12
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->g()V

    .line 13
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->e()V

    .line 14
    iget-object p1, p0, Lcom/mapbox/android/telemetry/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/util/Set;)Li/f;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->d:Li/f;

    .line 15
    iget-object p1, p0, Lcom/mapbox/android/telemetry/x;->l:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/mapbox/android/telemetry/r;->a(Lcom/mapbox/android/telemetry/u;Ljava/util/concurrent/ExecutorService;)Lcom/mapbox/android/telemetry/r;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->b:Lcom/mapbox/android/telemetry/r;

    return-void
.end method

.method private static a(Ljava/util/Set;)Li/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/mapbox/android/telemetry/k0;",
            ">;)",
            "Li/f;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/mapbox/android/telemetry/x$f;

    invoke-direct {v0, p0}, Lcom/mapbox/android/telemetry/x$f;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null application context required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/mapbox/android/telemetry/x;

    monitor-enter v0

    .line 27
    :try_start_0
    invoke-static {p1}, Lcom/mapbox/android/telemetry/l0;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 28
    monitor-exit v0

    return-void

    .line 29
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mapbox/android/telemetry/x;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-static {p0, p2}, Lcom/mapbox/android/telemetry/errors/b;->a(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/mapbox/android/telemetry/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->d()V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/android/telemetry/x;Ljava/util/List;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/telemetry/x;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/android/telemetry/Event;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mapbox/android/telemetry/x;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->c:Lcom/mapbox/android/telemetry/g0;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->d:Li/f;

    invoke-virtual {v0, p1, v1, p2}, Lcom/mapbox/android/telemetry/g0;->a(Ljava/util/List;Li/f;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 22
    invoke-static {p1}, Lcom/mapbox/android/telemetry/l0;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/mapbox/android/telemetry/x;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/mapbox/android/telemetry/Event;)Lcom/mapbox/android/telemetry/Attachment;
    .locals 0

    .line 9
    check-cast p1, Lcom/mapbox/android/telemetry/Attachment;

    return-object p1
.end method

.method private declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    new-instance v0, Lcom/mapbox/android/telemetry/x$e;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/android/telemetry/x$e;-><init>(Lcom/mapbox/android/telemetry/x;Z)V

    invoke-direct {p0, v0}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 5
    invoke-static {p1}, Lcom/mapbox/android/telemetry/l0;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->a:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/mapbox/android/telemetry/x;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/mapbox/android/telemetry/g0;
    .locals 3

    .line 1
    sget-object v0, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/mapbox/android/telemetry/l0;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/mapbox/android/telemetry/h0;

    new-instance v1, Lcom/mapbox/android/telemetry/w;

    invoke-direct {v1}, Lcom/mapbox/android/telemetry/w;-><init>()V

    iget-object v2, p0, Lcom/mapbox/android/telemetry/x;->i:Lcom/mapbox/android/telemetry/e;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/mapbox/android/telemetry/h0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V

    .line 3
    sget-object p1, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/h0;->a(Landroid/content/Context;)Lcom/mapbox/android/telemetry/g0;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/x;->c:Lcom/mapbox/android/telemetry/g0;

    .line 4
    iget-object p1, p0, Lcom/mapbox/android/telemetry/x;->c:Lcom/mapbox/android/telemetry/g0;

    return-object p1
.end method

.method private c()Ljava/lang/Boolean;
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mapbox/android/telemetry/x;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/mapbox/android/telemetry/Event;)Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->g:Lcom/mapbox/android/telemetry/j0;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/j0;->a()Lcom/mapbox/android/telemetry/j0$c;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/mapbox/android/telemetry/j0$c;->ENABLED:Lcom/mapbox/android/telemetry/j0$c;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->b:Lcom/mapbox/android/telemetry/r;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/r;->a(Lcom/mapbox/android/telemetry/Event;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->b:Lcom/mapbox/android/telemetry/r;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/r;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v1, Lcom/mapbox/android/telemetry/x$c;

    invoke-direct {v1, p0, v0}, Lcom/mapbox/android/telemetry/x$c;-><init>(Lcom/mapbox/android/telemetry/x;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Lcom/mapbox/android/telemetry/Event;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->c:Lcom/mapbox/android/telemetry/g0;

    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->b(Lcom/mapbox/android/telemetry/Event;)Lcom/mapbox/android/telemetry/Attachment;

    move-result-object p1

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/android/telemetry/g0;->a(Lcom/mapbox/android/telemetry/Attachment;Ljava/util/concurrent/CopyOnWriteArraySet;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method private declared-synchronized e(Lcom/mapbox/android/telemetry/Event;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/mapbox/android/telemetry/x$g;->a:[I

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/Event;->obtainType()Lcom/mapbox/android/telemetry/Event$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->d(Lcom/mapbox/android/telemetry/Event;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/mapbox/android/telemetry/x$d;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/android/telemetry/x$d;-><init>(Lcom/mapbox/android/telemetry/x;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->k:Lcom/mapbox/android/telemetry/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mapbox/android/telemetry/n;

    sget-object v1, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapbox/android/telemetry/x;->a:Ljava/lang/String;

    .line 3
    invoke-static {v2, v1}, Lcom/mapbox/android/telemetry/l0;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mapbox/android/telemetry/x;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Li/w;

    invoke-direct {v4}, Li/w;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapbox/android/telemetry/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Li/w;)V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->k:Lcom/mapbox/android/telemetry/n;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->i:Lcom/mapbox/android/telemetry/e;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/mapbox/android/telemetry/e;

    sget-object v1, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapbox/android/telemetry/x;->k:Lcom/mapbox/android/telemetry/n;

    invoke-direct {v0, v1, v2}, Lcom/mapbox/android/telemetry/e;-><init>(Landroid/content/Context;Lcom/mapbox/android/telemetry/n;)V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->i:Lcom/mapbox/android/telemetry/e;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->c:Lcom/mapbox/android/telemetry/g0;

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/mapbox/android/telemetry/x;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mapbox/android/telemetry/x;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mapbox/android/telemetry/g0;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->c:Lcom/mapbox/android/telemetry/g0;

    :cond_2
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method private h()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private i()Lcom/mapbox/android/telemetry/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/mapbox/android/telemetry/a;

    new-instance v1, Lcom/mapbox/android/telemetry/x$b;

    invoke-direct {v1, p0}, Lcom/mapbox/android/telemetry/x$b;-><init>(Lcom/mapbox/android/telemetry/x;)V

    invoke-direct {v0, v1}, Lcom/mapbox/android/telemetry/a;-><init>(Lcom/mapbox/android/telemetry/y;)V

    return-object v0
.end method

.method private j()Lcom/mapbox/android/telemetry/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->f:Lcom/mapbox/android/telemetry/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mapbox/android/telemetry/i;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/i;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/x;->f:Lcom/mapbox/android/telemetry/i;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->f:Lcom/mapbox/android/telemetry/i;

    return-object v0
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/z;

    invoke-interface {v0}, Lcom/mapbox/android/telemetry/z;->a()V

    .line 2
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->j()Lcom/mapbox/android/telemetry/i;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/z;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/i;->a()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/mapbox/android/telemetry/z;->a(J)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->g:Lcom/mapbox/android/telemetry/j0;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/j0;->a()Lcom/mapbox/android/telemetry/j0$c;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/mapbox/android/telemetry/j0$c;->ENABLED:Lcom/mapbox/android/telemetry/j0$c;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->k()V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/mapbox/android/telemetry/x;->b(Z)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->g:Lcom/mapbox/android/telemetry/j0;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/j0;->a()Lcom/mapbox/android/telemetry/j0$c;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/mapbox/android/telemetry/j0$c;->ENABLED:Lcom/mapbox/android/telemetry/j0$c;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->d()V

    .line 4
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->n()V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/mapbox/android/telemetry/x;->b(Z)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->e:Lcom/mapbox/android/telemetry/z;

    invoke-interface {v0}, Lcom/mapbox/android/telemetry/z;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/android/telemetry/Event;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->g:Lcom/mapbox/android/telemetry/j0;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/j0;->a()Lcom/mapbox/android/telemetry/j0$c;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/mapbox/android/telemetry/j0$c;->ENABLED:Lcom/mapbox/android/telemetry/j0$c;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lcom/mapbox/android/telemetry/l0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/mapbox/android/telemetry/x;->a(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->c:Lcom/mapbox/android/telemetry/g0;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/g0;->a(Z)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 9
    sget-object v0, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/j0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->m()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/mapbox/android/telemetry/Event;)Z
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->e(Lcom/mapbox/android/telemetry/Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->c(Lcom/mapbox/android/telemetry/Event;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/mapbox/android/telemetry/d0;)Z
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/d0;->a()I

    move-result p1

    int-to-long v0, p1

    .line 12
    new-instance p1, Lcom/mapbox/android/telemetry/x$a;

    invoke-direct {p1, p0, v0, v1}, Lcom/mapbox/android/telemetry/x$a;-><init>(Lcom/mapbox/android/telemetry/x;J)V

    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/x;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/mapbox/android/telemetry/k0;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/telemetry/x;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->f()V

    :cond_0
    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/mapbox/android/telemetry/x;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/j0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/x;->l()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/mapbox/android/telemetry/k0;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mapbox/android/telemetry/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
