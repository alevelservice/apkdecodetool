.class public final Lcom/google/android/gms/internal/ads/py;
.super Lcom/google/android/gms/internal/ads/sq;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/dx;

.field private final i:Lcom/google/android/gms/internal/ads/sz;

.field private final j:Lcom/google/android/gms/internal/ads/pr;

.field private final k:Lcom/google/android/gms/internal/ads/qv0;

.field private l:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/dx;Lcom/google/android/gms/internal/ads/sz;Lcom/google/android/gms/internal/ads/pr;Lcom/google/android/gms/internal/ads/qv0;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/fi;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sq;-><init>(Lcom/google/android/gms/internal/ads/rq;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/py;->l:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/py;->f:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/py;->g:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/py;->h:Lcom/google/android/gms/internal/ads/dx;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/py;->i:Lcom/google/android/gms/internal/ads/sz;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/py;->j:Lcom/google/android/gms/internal/ads/pr;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/py;->k:Lcom/google/android/gms/internal/ads/qv0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/py;->h:Lcom/google/android/gms/internal/ads/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dx;->d()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/py;->i:Lcom/google/android/gms/internal/ads/sz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/py;->f:Landroid/content/Context;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/sz;->a(ZLandroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/py;->l:Z

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/py;->j:Lcom/google/android/gms/internal/ads/pr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pr;->c()Z

    move-result v0

    return v0
.end method

.method public final finalize()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/py;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fi;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->J3:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/py;->l:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oy;->a(Lcom/google/android/gms/internal/ads/fi;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final g()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->w0:Lcom/google/android/gms/internal/ads/pv1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/py;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wa;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "It is not recommended to show an interstitial when app is not in foreground."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->x0:Lcom/google/android/gms/internal/ads/pv1;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/py;->k:Lcom/google/android/gms/internal/ads/qv0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sq;->a:Lcom/google/android/gms/internal/ads/vs0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vs0;->b:Lcom/google/android/gms/internal/ads/ts0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/ps0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ps0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/qv0;->a(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 10
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/py;->l:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method
