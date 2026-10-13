.class public final Lcom/google/android/gms/internal/ads/r50;
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

.field private final h:Lcom/google/android/gms/internal/ads/sz;

.field private final i:Lcom/google/android/gms/internal/ads/dx;

.field private final j:Lcom/google/android/gms/internal/ads/nt;

.field private final k:Lcom/google/android/gms/internal/ads/tu;

.field private final l:Lcom/google/android/gms/internal/ads/pr;

.field private final m:Lcom/google/android/gms/internal/ads/zzaqf;

.field private final n:Lcom/google/android/gms/internal/ads/qv0;

.field private o:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/sz;Lcom/google/android/gms/internal/ads/dx;Lcom/google/android/gms/internal/ads/nt;Lcom/google/android/gms/internal/ads/tu;Lcom/google/android/gms/internal/ads/pr;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/qv0;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/fi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sq;-><init>(Lcom/google/android/gms/internal/ads/rq;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/r50;->o:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r50;->f:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/r50;->h:Lcom/google/android/gms/internal/ads/sz;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r50;->g:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/r50;->i:Lcom/google/android/gms/internal/ads/dx;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/r50;->j:Lcom/google/android/gms/internal/ads/nt;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/r50;->k:Lcom/google/android/gms/internal/ads/tu;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/r50;->l:Lcom/google/android/gms/internal/ads/pr;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/r50;->n:Lcom/google/android/gms/internal/ads/qv0;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzarc;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/ns0;->l:Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzarc;-><init>(Lcom/google/android/gms/internal/ads/zzaqd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r50;->m:Lcom/google/android/gms/internal/ads/zzaqf;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/app/Activity;)V
    .locals 2
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

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

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r50;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wa;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Rewarded ad can not be shown when app is not in foreground."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r50;->j:Lcom/google/android/gms/internal/ads/nt;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/nt;->zzcm(I)V

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/aw1;->x0:Lcom/google/android/gms/internal/ads/pv1;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r50;->n:Lcom/google/android/gms/internal/ads/qv0;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/sq;->a:Lcom/google/android/gms/internal/ads/vs0;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/vs0;->b:Lcom/google/android/gms/internal/ads/ts0;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/ps0;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ps0;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/qv0;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/r50;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string p1, "The rewarded ad have been showed."

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r50;->j:Lcom/google/android/gms/internal/ads/nt;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/nt;->zzcm(I)V

    return-void

    .line 14
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/r50;->o:Z

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r50;->i:Lcom/google/android/gms/internal/ads/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dx;->d()V

    if-nez p2, :cond_3

    .line 16
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r50;->f:Landroid/content/Context;

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r50;->h:Lcom/google/android/gms/internal/ads/sz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/sz;->a(ZLandroid/content/Context;)V

    return-void
.end method

.method public final f()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r50;->k:Lcom/google/android/gms/internal/ads/tu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tu;->g()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final finalize()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r50;->g:Ljava/lang/ref/WeakReference;

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
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/r50;->o:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/u50;->a(Lcom/google/android/gms/internal/ads/fi;)Ljava/lang/Runnable;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r50;->l:Lcom/google/android/gms/internal/ads/pr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pr;->c()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/r50;->o:Z

    return v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/zzaqf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r50;->m:Lcom/google/android/gms/internal/ads/zzaqf;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r50;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fi;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzzn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
