.class final Lcom/google/android/gms/internal/ads/xo;
.super Lcom/google/android/gms/internal/ads/uo;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Landroid/view/View;

.field private final h:Lcom/google/android/gms/internal/ads/fi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/ms0;

.field private final j:Lcom/google/android/gms/internal/ads/pq;

.field private final k:Lcom/google/android/gms/internal/ads/x10;

.field private final l:Lcom/google/android/gms/internal/ads/sx;

.field private final m:Lcom/google/android/gms/internal/ads/ie1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ie1<",
            "Lcom/google/android/gms/internal/ads/zzclg;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/concurrent/Executor;

.field private o:Lcom/google/android/gms/internal/ads/zztw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ms0;Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/pq;Lcom/google/android/gms/internal/ads/x10;Lcom/google/android/gms/internal/ads/sx;Lcom/google/android/gms/internal/ads/ie1;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p5    # Lcom/google/android/gms/internal/ads/fi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rq;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/ms0;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/fi;",
            "Lcom/google/android/gms/internal/ads/pq;",
            "Lcom/google/android/gms/internal/ads/x10;",
            "Lcom/google/android/gms/internal/ads/sx;",
            "Lcom/google/android/gms/internal/ads/ie1<",
            "Lcom/google/android/gms/internal/ads/zzclg;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/uo;-><init>(Lcom/google/android/gms/internal/ads/rq;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xo;->f:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xo;->g:Landroid/view/View;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/xo;->h:Lcom/google/android/gms/internal/ads/fi;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xo;->i:Lcom/google/android/gms/internal/ads/ms0;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/xo;->j:Lcom/google/android/gms/internal/ads/pq;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/xo;->k:Lcom/google/android/gms/internal/ads/x10;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/xo;->l:Lcom/google/android/gms/internal/ads/sx;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/xo;->m:Lcom/google/android/gms/internal/ads/ie1;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/xo;->n:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zztw;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->h:Lcom/google/android/gms/internal/ads/fi;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/uj;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/uj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fi;->zza(Lcom/google/android/gms/internal/ads/uj;)V

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/ads/zztw;->g:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 4
    iget v0, p2, Lcom/google/android/gms/internal/ads/zztw;->j:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xo;->o:Lcom/google/android/gms/internal/ads/zztw;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->n:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/vo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/vo;-><init>(Lcom/google/android/gms/internal/ads/xo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/sq;->c()V

    return-void
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->j:Lcom/google/android/gms/internal/ads/pq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pq;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/ms0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->o:Lcom/google/android/gms/internal/ads/zztw;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/at0;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->b:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ns0;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xo;->i:Lcom/google/android/gms/internal/ads/ms0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/at0;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/ms0;)Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->g:Landroid/view/View;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->a:Lcom/google/android/gms/internal/ads/vs0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vs0;->b:Lcom/google/android/gms/internal/ads/ts0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/ps0;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ps0;->c:I

    return v0
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->l:Lcom/google/android/gms/internal/ads/sx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sx;->g()V

    return-void
.end method

.method final synthetic k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->k:Lcom/google/android/gms/internal/ads/x10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x10;->d()Lcom/google/android/gms/internal/ads/zzace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->k:Lcom/google/android/gms/internal/ads/x10;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x10;->d()Lcom/google/android/gms/internal/ads/zzace;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xo;->m:Lcom/google/android/gms/internal/ads/ie1;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ie1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xo;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzace;->zza(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
