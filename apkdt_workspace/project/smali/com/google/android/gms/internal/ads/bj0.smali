.class final Lcom/google/android/gms/internal/ads/bj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ij0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ij0<",
        "Lcom/google/android/gms/internal/ads/sq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzclw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bj0;->a:Lcom/google/android/gms/internal/ads/zzclw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bj0;->a:Lcom/google/android/gms/internal/ads/zzclw;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bj0;->a:Lcom/google/android/gms/internal/ads/zzclw;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclw;->zza(Lcom/google/android/gms/internal/ads/zzclw;Z)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/sq;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bj0;->a:Lcom/google/android/gms/internal/ads/zzclw;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bj0;->a:Lcom/google/android/gms/internal/ads/zzclw;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclw;->zza(Lcom/google/android/gms/internal/ads/zzclw;Z)Z

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bj0;->a:Lcom/google/android/gms/internal/ads/zzclw;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->b()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclw;->zza(Lcom/google/android/gms/internal/ads/zzclw;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bj0;->a:Lcom/google/android/gms/internal/ads/zzclw;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->e()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclw;->zzb(Lcom/google/android/gms/internal/ads/zzclw;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->c()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
