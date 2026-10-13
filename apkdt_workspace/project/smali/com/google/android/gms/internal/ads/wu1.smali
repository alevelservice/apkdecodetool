.class public final Lcom/google/android/gms/internal/ads/wu1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaje;

.field private final b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/ads/b;

.field private d:Lcom/google/android/gms/internal/ads/st1;

.field private e:Lcom/google/android/gms/internal/ads/zzve;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/ads/o/a;

.field private h:Lcom/google/android/gms/ads/doubleclick/a;

.field private i:Lcom/google/android/gms/ads/doubleclick/c;

.field private j:Lcom/google/android/gms/ads/o/c;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zt1;->a:Lcom/google/android/gms/internal/ads/zt1;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/wu1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zt1;Lcom/google/android/gms/ads/doubleclick/d;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zt1;Lcom/google/android/gms/ads/doubleclick/d;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaje;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzaje;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wu1;->a:Lcom/google/android/gms/internal/ads/zzaje;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu1;->b:Landroid/content/Context;

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is called."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    .line 47
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/b;)V
    .locals 2

    .line 26
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu1;->c:Lcom/google/android/gms/ads/b;

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/ads/b;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzur;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 29
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/o/a;)V
    .locals 2

    .line 39
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu1;->g:Lcom/google/android/gms/ads/o/a;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz p1, :cond_0

    .line 42
    new-instance v1, Lcom/google/android/gms/internal/ads/zztq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zztq;-><init>(Lcom/google/android/gms/ads/o/a;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 44
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/o/c;)V
    .locals 2

    .line 49
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu1;->j:Lcom/google/android/gms/ads/o/c;

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz p1, :cond_0

    .line 52
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzapv;-><init>(Lcom/google/android/gms/ads/o/c;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzapo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 54
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/st1;)V
    .locals 2

    .line 30
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu1;->d:Lcom/google/android/gms/internal/ads/st1;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz p1, :cond_0

    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/zztk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zztk;-><init>(Lcom/google/android/gms/internal/ads/st1;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzuq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 35
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/su1;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-nez v0, :cond_8

    const-string v0, "loadAd"

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wu1;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/wu1;->b(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wu1;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zztw;->j()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zztw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztw;-><init>()V

    :goto_0
    move-object v4, v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->b()Lcom/google/android/gms/internal/ads/eu1;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/wu1;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/wu1;->a:Lcom/google/android/gms/internal/ads/zzaje;

    .line 6
    new-instance v7, Lcom/google/android/gms/internal/ads/gu1;

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/gu1;-><init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/internal/ads/ku1;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/zzve;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->c:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wu1;->c:Lcom/google/android/gms/ads/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/ads/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzur;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->d:Lcom/google/android/gms/internal/ads/st1;

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wu1;->d:Lcom/google/android/gms/internal/ads/st1;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zztk;-><init>(Lcom/google/android/gms/internal/ads/st1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzuq;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->g:Lcom/google/android/gms/ads/o/a;

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wu1;->g:Lcom/google/android/gms/ads/o/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zztq;-><init>(Lcom/google/android/gms/ads/o/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->h:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzty;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wu1;->h:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzty;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzvm;)V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->i:Lcom/google/android/gms/ads/doubleclick/c;

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wu1;->i:Lcom/google/android/gms/ads/doubleclick/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzzn;)V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->j:Lcom/google/android/gms/ads/o/c;

    if-eqz v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzapv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wu1;->j:Lcom/google/android/gms/ads/o/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzapv;-><init>(Lcom/google/android/gms/ads/o/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzapo;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/wu1;->l:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->setImmersiveMode(Z)V

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wu1;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zt1;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/su1;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zztp;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->a:Lcom/google/android/gms/internal/ads/zzaje;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/su1;->m()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaje;->zzf(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 25
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu1;->f:Ljava/lang/String;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    .line 55
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wu1;->l:Z

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzve;->setImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 58
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/wu1;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu1;->e:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wu1;->k:Z

    return-void
.end method
