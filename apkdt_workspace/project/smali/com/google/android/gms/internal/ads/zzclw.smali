.class public final Lcom/google/android/gms/internal/ads/zzclw;
.super Lcom/google/android/gms/internal/ads/zzuv;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/gj0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/gj0<",
            "Lcom/google/android/gms/internal/ads/sq;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Ljava/lang/String;
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
.method public constructor <init>(Lcom/google/android/gms/internal/ads/gj0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/gj0<",
            "Lcom/google/android/gms/internal/ads/sq;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuv;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->e:Lcom/google/android/gms/internal/ads/gj0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclw;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzclw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzclw;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->i:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzclw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->h:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->g:Ljava/lang/String;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->e:Lcom/google/android/gms/internal/ads/gj0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gj0;->isLoading()Z

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
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->g:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->h:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/hj0;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/hj0;-><init>(I)V

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclw;->e:Lcom/google/android/gms/internal/ads/gj0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclw;->f:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/bj0;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bj0;-><init>(Lcom/google/android/gms/internal/ads/zzclw;)V

    .line 5
    invoke-interface {p2, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/gj0;->a(Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ej0;Lcom/google/android/gms/internal/ads/ij0;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zztp;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzclw;->zza(Lcom/google/android/gms/internal/ads/zztp;I)V

    return-void
.end method

.method public final declared-synchronized zzjp()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
