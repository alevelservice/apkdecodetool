.class public final Lcom/google/android/gms/ads/internal/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cz0;
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/cz0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/google/android/gms/internal/ads/zzawv;

.field private i:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/f;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/f;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/f;->i:Ljava/util/concurrent/CountDownLatch;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/f;->g:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/f;->h:Lcom/google/android/gms/internal/ads/zzawv;

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/tz0;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final a()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/cz0;

    aget-object v1, v1, v3

    check-cast v1, Landroid/view/MotionEvent;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/cz0;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5
    :cond_2
    array-length v2, v1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/cz0;

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/cz0;->a(III)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cz0;

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/f;->b()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/f;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cz0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cz0;

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/f;->b()V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/f;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 12
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/cz0;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final a(III)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cz0;

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/f;->b()V

    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cz0;->a(III)V

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->e:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cz0;

    if-eqz v0, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/f;->b()V

    .line 17
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cz0;->a(Landroid/view/MotionEvent;)V

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->e:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cz0;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cz0;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->h:Lcom/google/android/gms/internal/ads/zzawv;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzawv;->h:Z

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/aw1;->N0:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->h:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/f;->g:Landroid/content/Context;

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/f;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 7
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/q21;->a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/f;->g:Landroid/content/Context;

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/f;->h:Lcom/google/android/gms/internal/ads/zzawv;

    return-void

    :catchall_0
    move-exception v0

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/f;->g:Landroid/content/Context;

    .line 14
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/f;->h:Lcom/google/android/gms/internal/ads/zzawv;

    throw v0
.end method
