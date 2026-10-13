.class public final Lcom/google/android/gms/internal/ads/zzcuv;
.super Lcom/google/android/gms/internal/ads/zzapk;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/yr0;

.field private final f:Lcom/google/android/gms/internal/ads/ar0;

.field private final g:Lcom/google/android/gms/internal/ads/us0;

.field private h:Lcom/google/android/gms/internal/ads/r50;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private i:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yr0;Lcom/google/android/gms/internal/ads/ar0;Lcom/google/android/gms/internal/ads/us0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapk;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->i:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->e:Lcom/google/android/gms/internal/ads/yr0;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuv;->f:Lcom/google/android/gms/internal/ads/ar0;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuv;->g:Lcom/google/android/gms/internal/ads/us0;

    return-void
.end method

.method private final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r50;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcuv;)Lcom/google/android/gms/internal/ads/r50;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcuv;Lcom/google/android/gms/internal/ads/r50;)Lcom/google/android/gms/internal/ads/r50;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    return-object p1
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcuv;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata can only be called from the UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r50;->f()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLoaded()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcuv;->a()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcuv;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcuv;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final setAppPackageName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setCustomData(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->I0:Lcom/google/android/gms/internal/ads/pv1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread.: setCustomData"

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->g:Lcom/google/android/gms/internal/ads/us0;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/us0;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setImmersiveMode(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setUserId must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->g:Lcom/google/android/gms/internal/ads/us0;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/us0;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized show()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcuv;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzapj;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->f:Lcom/google/android/gms/internal/ads/ar0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/internal/ads/zzapj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzapo;)V
    .locals 1

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->f:Lcom/google/android/gms/internal/ads/ar0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/internal/ads/zzapo;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzapu;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzapu;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cw1;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcuv;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->U2:Lcom/google/android/gms/internal/ads/pv1;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/vr0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/vr0;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->e:Lcom/google/android/gms/internal/ads/yr0;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzapu;->e:Lcom/google/android/gms/internal/ads/zztp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzapu;->f:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/gs0;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/gs0;-><init>(Lcom/google/android/gms/internal/ads/zzcuv;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/yr0;->a(Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ej0;Lcom/google/android/gms/internal/ads/ij0;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 2

    const-string v0, "setAdMetadataListener can only be called from the UI thread."

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->f:Lcom/google/android/gms/internal/ads/ar0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/ads/o/a;)V

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->f:Lcom/google/android/gms/internal/ads/ar0;

    new-instance v1, Lcom/google/android/gms/internal/ads/is0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/is0;-><init>(Lcom/google/android/gms/internal/ads/zzcuv;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/ads/o/a;)V

    return-void
.end method

.method public final declared-synchronized zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "showAd must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->i:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/r50;->a(ZLandroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->d()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yt;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->d()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yt;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->f:Lcom/google/android/gms/internal/ads/ar0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/ads/o/a;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->d()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/yt;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzph()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->h:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r50;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
