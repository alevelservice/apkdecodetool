.class public final Lcom/google/android/gms/internal/ads/zzclh;
.super Lcom/google/android/gms/internal/ads/zzuv;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zzclw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mk;Lcom/google/android/gms/internal/ads/ys0;Lcom/google/android/gms/internal/ads/x10;Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuv;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dj0;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/dj0;-><init>(Lcom/google/android/gms/internal/ads/x10;)V

    .line 3
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/dj0;->a(Lcom/google/android/gms/internal/ads/zzur;)V

    .line 4
    new-instance p4, Lcom/google/android/gms/internal/ads/kj0;

    invoke-direct {p4, p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/kj0;-><init>(Lcom/google/android/gms/internal/ads/mk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/dj0;Lcom/google/android/gms/internal/ads/ys0;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzclw;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/ys0;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzclw;-><init>(Lcom/google/android/gms/internal/ads/gj0;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclh;->e:Lcom/google/android/gms/internal/ads/zzclw;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclh;->e:Lcom/google/android/gms/internal/ads/zzclw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclw;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclh;->e:Lcom/google/android/gms/internal/ads/zzclw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclw;->isLoading()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zztp;I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclh;->e:Lcom/google/android/gms/internal/ads/zzclw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzclw;->zza(Lcom/google/android/gms/internal/ads/zztp;I)V
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

.method public final zzb(Lcom/google/android/gms/internal/ads/zztp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclh;->e:Lcom/google/android/gms/internal/ads/zzclw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzclw;->zzb(Lcom/google/android/gms/internal/ads/zztp;)V

    return-void
.end method

.method public final declared-synchronized zzjp()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclh;->e:Lcom/google/android/gms/internal/ads/zzclw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclw;->zzjp()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
