.class final Lcom/google/android/gms/internal/ads/gs0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ij0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ij0<",
        "Lcom/google/android/gms/internal/ads/r50;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzcuv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcuv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gs0;->a:Lcom/google/android/gms/internal/ads/zzcuv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gs0;->a:Lcom/google/android/gms/internal/ads/zzcuv;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gs0;->a:Lcom/google/android/gms/internal/ads/zzcuv;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcuv;->zza(Lcom/google/android/gms/internal/ads/zzcuv;Lcom/google/android/gms/internal/ads/r50;)Lcom/google/android/gms/internal/ads/r50;

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
    .locals 2

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/r50;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gs0;->a:Lcom/google/android/gms/internal/ads/zzcuv;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gs0;->a:Lcom/google/android/gms/internal/ads/zzcuv;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zza(Lcom/google/android/gms/internal/ads/zzcuv;Lcom/google/android/gms/internal/ads/r50;)Lcom/google/android/gms/internal/ads/r50;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gs0;->a:Lcom/google/android/gms/internal/ads/zzcuv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zza(Lcom/google/android/gms/internal/ads/zzcuv;)Lcom/google/android/gms/internal/ads/r50;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->c()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
