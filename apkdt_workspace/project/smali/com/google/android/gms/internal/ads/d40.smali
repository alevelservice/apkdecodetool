.class public final Lcom/google/android/gms/internal/ads/d40;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/ws0;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/android/gms/internal/ads/d60;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ws0;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/d60;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d40;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d40;->b:Lcom/google/android/gms/internal/ads/ws0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/d40;->c:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/d40;->d:Lcom/google/android/gms/internal/ads/d60;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/b0;->l:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/video"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/b0;->m:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/videoMeta"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/oh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/oh;-><init>()V

    const-string v1, "/precache"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/b0;->p:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/delayPageLoaded"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/b0;->n:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/instrument"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/b0;->g:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/b0;->h:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/videoClicked"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/oj;->a(Z)V

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/b0;->c:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/click"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d40;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ws0;->c:Lcom/google/android/gms/internal/ads/zzafj;

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/t0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/t0;-><init>(Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/a6;)V

    const-string v1, "/open"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d40;->d:Lcom/google/android/gms/internal/ads/d60;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d40;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztw;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/zztw;Z)Lcom/google/android/gms/internal/ads/fi;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ee;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ee;

    move-result-object v0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/d40;->a(Lcom/google/android/gms/internal/ads/fi;)V

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/h40;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/h40;-><init>(Lcom/google/android/gms/internal/ads/ee;)V

    .line 23
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/oj;->a(Lcom/google/android/gms/internal/ads/qj;)V

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->P1:Lcom/google/android/gms/internal/ads/pv1;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/fi;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/f40;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/f40;-><init>(Lcom/google/android/gms/internal/ads/d40;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d40;->c:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3

    .line 27
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/d40;->d:Lcom/google/android/gms/internal/ads/d60;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d40;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztw;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/zztw;Z)Lcom/google/android/gms/internal/ads/fi;

    move-result-object p3

    .line 29
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/ee;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ee;

    move-result-object v0

    .line 30
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/d40;->a(Lcom/google/android/gms/internal/ads/fi;)V

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d40;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ws0;->c:Lcom/google/android/gms/internal/ads/zzafj;

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/uj;->h()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/fi;->zza(Lcom/google/android/gms/internal/ads/uj;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/uj;->g()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/fi;->zza(Lcom/google/android/gms/internal/ads/uj;)V

    .line 34
    :goto_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/g40;

    invoke-direct {v2, p0, p3, v0}, Lcom/google/android/gms/internal/ads/g40;-><init>(Lcom/google/android/gms/internal/ads/d40;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ee;)V

    .line 35
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/oj;->a(Lcom/google/android/gms/internal/ads/rj;)V

    const/4 v1, 0x0

    .line 36
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/fi;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/e40;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/e40;-><init>(Lcom/google/android/gms/internal/ads/d40;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/d40;->c:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/c40;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/c40;-><init>(Lcom/google/android/gms/internal/ads/d40;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d40;->c:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/fi;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ee;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ee;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d40;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ws0;->c:Lcom/google/android/gms/internal/ads/zzafj;

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/uj;->h()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/fi;->zza(Lcom/google/android/gms/internal/ads/uj;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/uj;->g()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/fi;->zza(Lcom/google/android/gms/internal/ads/uj;)V

    .line 44
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/j40;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/j40;-><init>(Lcom/google/android/gms/internal/ads/d40;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ee;)V

    .line 45
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/oj;->a(Lcom/google/android/gms/internal/ads/rj;)V

    const-string v1, "google.afma.nativeAds.renderVideo"

    .line 46
    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/ads/r2;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ee;Z)V
    .locals 0

    .line 37
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/d40;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/ws0;->b:Lcom/google/android/gms/internal/ads/zzyc;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzxj()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 38
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzxj()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/d40;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/ws0;->b:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbu;->zzb(Lcom/google/android/gms/internal/ads/zzyc;)V

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ee;->a()V

    return-void
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ee;Z)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/d40;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/ws0;->b:Lcom/google/android/gms/internal/ads/zzyc;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzxj()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzxj()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/d40;->b:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/ws0;->b:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbu;->zzb(Lcom/google/android/gms/internal/ads/zzyc;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ee;->a()V

    return-void
.end method
