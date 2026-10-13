.class public final Lcom/google/android/gms/ads/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/zzwk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private c:Lcom/google/android/gms/ads/j$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/j;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/j;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/j;->b:Lcom/google/android/gms/internal/ads/zzwk;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/google/android/gms/ads/j$a;)V
    .locals 3

    const-string v0, "VideoLifecycleCallbacks may not be null."

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/j;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/j;->c:Lcom/google/android/gms/ads/j$a;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/ads/j;->b:Lcom/google/android/gms/internal/ads/zzwk;

    if-nez v1, :cond_0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 14
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/j;->b:Lcom/google/android/gms/internal/ads/zzwk;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzxz;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzxz;-><init>(Lcom/google/android/gms/ads/j$a;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zza(Lcom/google/android/gms/internal/ads/zzwl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "Unable to call setVideoLifecycleCallbacks on video controller."

    .line 15
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzwk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/j;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/j;->b:Lcom/google/android/gms/internal/ads/zzwk;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/ads/j;->c:Lcom/google/android/gms/ads/j$a;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/ads/j;->c:Lcom/google/android/gms/ads/j$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/j;->a(Lcom/google/android/gms/ads/j$a;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
