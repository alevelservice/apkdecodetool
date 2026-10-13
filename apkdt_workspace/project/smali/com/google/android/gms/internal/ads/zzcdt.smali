.class public final Lcom/google/android/gms/internal/ads/zzcdt;
.super Lcom/google/android/gms/internal/ads/zzaoa;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lcom/google/android/gms/internal/ads/x7;

.field private final h:Lcom/google/android/gms/internal/ads/t7;

.field private final i:Lcom/google/android/gms/internal/ads/wm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;Lcom/google/android/gms/internal/ads/wm;Lcom/google/android/gms/internal/ads/t7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aw1;->a(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdt;->f:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdt;->g:Lcom/google/android/gms/internal/ads/x7;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcdt;->h:Lcom/google/android/gms/internal/ads/t7;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdt;->i:Lcom/google/android/gms/internal/ads/wm;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzaoe;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/tb0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/tb0;-><init>(Lcom/google/android/gms/internal/ads/zzcdt;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/tz0;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/sb0;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/sb0;-><init>(Lcom/google/android/gms/internal/ads/zzcdt;Lcom/google/android/gms/internal/ads/zzaoe;)V

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 5
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzanv;)Lcom/google/android/gms/internal/ads/zzanx;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzanv;Lcom/google/android/gms/internal/ads/zzaoc;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaok;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcdt;->zzh(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdt;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/zzaoe;)V

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/rb0;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/rb0;-><init>(Lcom/google/android/gms/internal/ads/zzcdt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->f:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/qz0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zzakg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->h:Lcom/google/android/gms/internal/ads/t7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t7;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    const-string v1, "persistFlags"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/de;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaok;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->p()Lcom/google/android/gms/internal/ads/w3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->e:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawv;->j()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/w3;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/c4;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->o3:Lcom/google/android/gms/internal/ads/pv1;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Signal collection disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->i:Lcom/google/android/gms/internal/ads/wm;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/wm;->a(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/cp0;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdt;->i:Lcom/google/android/gms/internal/ads/wm;

    .line 9
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/wm;->a(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/cp0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cp0;->b()Lcom/google/android/gms/internal/ads/no0;

    move-result-object v2

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/b4;->b:Lcom/google/android/gms/internal/ads/x3;

    sget-object v4, Lcom/google/android/gms/internal/ads/b4;->c:Lcom/google/android/gms/internal/ads/v3;

    const-string v5, "google.afma.request.getSignals"

    .line 11
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/c4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/t3;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cp0;->c()Lcom/google/android/gms/internal/ads/zu0;

    move-result-object v1

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/ads/wu0;->zzglv:Lcom/google/android/gms/internal/ads/wu0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaok;->e:Landroid/os/Bundle;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/qb0;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/qb0;-><init>(Lcom/google/android/gms/internal/ads/no0;)V

    .line 15
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/wu0;->zzglw:Lcom/google/android/gms/internal/ads/wu0;

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/ru0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object p1

    .line 19
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdt;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/zzaoe;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaok;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->p()Lcom/google/android/gms/internal/ads/w3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->e:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawv;->j()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/w3;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/c4;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->i:Lcom/google/android/gms/internal/ads/wm;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/wm;->a(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/cp0;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/kb0;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/kb0;-><init>(Lcom/google/android/gms/internal/ads/cp0;)V

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/jb0;->a:Lcom/google/android/gms/internal/ads/fu0;

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/b4;->b:Lcom/google/android/gms/internal/ads/x3;

    sget-object v5, Lcom/google/android/gms/internal/ads/mb0;->a:Lcom/google/android/gms/internal/ads/v3;

    const-string v6, "AFMA_getAdDictionary"

    .line 7
    invoke-virtual {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/c4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/t3;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/google/android/gms/internal/ads/vb0;->d:Lcom/google/android/gms/internal/ads/z3;

    sget-object v6, Lcom/google/android/gms/internal/ads/b4;->c:Lcom/google/android/gms/internal/ads/v3;

    const-string v7, "google.afma.response.normalize"

    .line 9
    invoke-virtual {v0, v7, v5, v6}, Lcom/google/android/gms/internal/ads/c4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/t3;

    move-result-object v5

    .line 10
    new-instance v6, Lcom/google/android/gms/internal/ads/wb0;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcdt;->e:Landroid/content/Context;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzaok;->f:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcdt;->g:Lcom/google/android/gms/internal/ads/x7;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/zzaok;->k:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/wb0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/x7;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cp0;->c()Lcom/google/android/gms/internal/ads/zu0;

    move-result-object v1

    .line 12
    sget-object v7, Lcom/google/android/gms/internal/ads/wu0;->zzglq:Lcom/google/android/gms/internal/ads/wu0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaok;->e:Landroid/os/Bundle;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    invoke-virtual {v1, v7, p1}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/fu0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object p1

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/aw1;->a3:Lcom/google/android/gms/internal/ads/pv1;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/b4;->b:Lcom/google/android/gms/internal/ads/x3;

    const-string v3, "google.afma.request.getAdResponse"

    .line 21
    invoke-virtual {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/c4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/t3;

    move-result-object v0

    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/wu0;->zzglr:Lcom/google/android/gms/internal/ads/wu0;

    .line 23
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/lb0;->a:Lcom/google/android/gms/internal/ads/fu0;

    .line 25
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/fu0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/wu0;->zzgls:Lcom/google/android/gms/internal/ads/wu0;

    .line 28
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object v0

    .line 29
    sget-object v2, Lcom/google/android/gms/internal/ads/wu0;->zzglt:Lcom/google/android/gms/internal/ads/wu0;

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/qz0;

    const/4 v7, 0x0

    aput-object v0, v4, v7

    const/4 v8, 0x1

    aput-object p1, v4, v8

    .line 30
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/mu0;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/pb0;

    invoke-direct {v4, p1, v0}, Lcom/google/android/gms/internal/ads/pb0;-><init>(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;)V

    .line 31
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/mu0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/fu0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object v2

    .line 34
    sget-object v4, Lcom/google/android/gms/internal/ads/wu0;->zzglu:Lcom/google/android/gms/internal/ads/wu0;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/android/gms/internal/ads/qz0;

    aput-object p1, v6, v7

    aput-object v0, v6, v8

    aput-object v2, v6, v3

    .line 35
    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/mu0;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/nb0;

    invoke-direct {v3, v2, p1, v0}, Lcom/google/android/gms/internal/ads/nb0;-><init>(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;)V

    .line 36
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/mu0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object p1

    return-object p1
.end method
