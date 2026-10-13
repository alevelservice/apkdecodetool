.class public final Lcom/google/android/gms/internal/ads/zzcup;
.super Lcom/google/android/gms/internal/ads/zzaqj;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/yr0;

.field private final f:Lcom/google/android/gms/internal/ads/ar0;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/ads/us0;

.field private i:Lcom/google/android/gms/internal/ads/r50;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/yr0;Lcom/google/android/gms/internal/ads/ar0;Lcom/google/android/gms/internal/ads/us0;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcup;->g:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcup;->e:Lcom/google/android/gms/internal/ads/yr0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcup;->f:Lcom/google/android/gms/internal/ads/ar0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcup;->h:Lcom/google/android/gms/internal/ads/us0;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcup;)Lcom/google/android/gms/internal/ads/r50;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcup;Lcom/google/android/gms/internal/ads/r50;)Lcom/google/android/gms/internal/ads/r50;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;

    return-object p1
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;

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

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r50;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcup;->f:Lcom/google/android/gms/internal/ads/ar0;

    const/4 p2, 0x2

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ar0;->zzcm(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/r50;->a(ZLandroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaql;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->f:Lcom/google/android/gms/internal/ads/ar0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/internal/ads/zzaql;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqt;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->f:Lcom/google/android/gms/internal/ads/ar0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/internal/ads/zzaqt;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzarb;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->h:Lcom/google/android/gms/internal/ads/us0;

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzarb;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/us0;->a:Ljava/lang/String;

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->I0:Lcom/google/android/gms/internal/ads/pv1;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzarb;->f:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/us0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zzaqo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->f:Lcom/google/android/gms/internal/ads/ar0;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/internal/ads/zzaqo;)V

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance p2, Lcom/google/android/gms/internal/ads/vr0;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/vr0;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->e:Lcom/google/android/gms/internal/ads/yr0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcup;->g:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/bs0;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bs0;-><init>(Lcom/google/android/gms/internal/ads/zzcup;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/yr0;->a(Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ej0;Lcom/google/android/gms/internal/ads/ij0;)Z
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

.method public final zza(Lcom/google/android/gms/internal/ads/zzwf;)V
    .locals 2

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcup;->f:Lcom/google/android/gms/internal/ads/ar0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/ads/o/a;)V

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->f:Lcom/google/android/gms/internal/ads/ar0;

    new-instance v1, Lcom/google/android/gms/internal/ads/ds0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ds0;-><init>(Lcom/google/android/gms/internal/ads/zzcup;Lcom/google/android/gms/internal/ads/zzwf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ar0;->a(Lcom/google/android/gms/ads/o/a;)V

    return-void
.end method

.method public final declared-synchronized zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcup;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzpg()Lcom/google/android/gms/internal/ads/zzaqf;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->i:Lcom/google/android/gms/internal/ads/r50;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r50;->i()Lcom/google/android/gms/internal/ads/zzaqf;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
