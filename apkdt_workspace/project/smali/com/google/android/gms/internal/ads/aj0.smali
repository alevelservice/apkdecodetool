.class final Lcom/google/android/gms/internal/ads/aj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "Lcom/google/android/gms/internal/ads/py;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/lz;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/zzclu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclu;Lcom/google/android/gms/internal/ads/lz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aj0;->b:Lcom/google/android/gms/internal/ads/zzclu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aj0;->a:Lcom/google/android/gms/internal/ads/lz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/py;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj0;->b:Lcom/google/android/gms/internal/ads/zzclu;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aj0;->b:Lcom/google/android/gms/internal/ads/zzclu;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclu;->zza(Lcom/google/android/gms/internal/ads/zzclu;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/qz0;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aj0;->b:Lcom/google/android/gms/internal/ads/zzclu;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzclu;->zza(Lcom/google/android/gms/internal/ads/zzclu;Lcom/google/android/gms/internal/ads/py;)Lcom/google/android/gms/internal/ads/py;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->c()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj0;->b:Lcom/google/android/gms/internal/ads/zzclu;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aj0;->b:Lcom/google/android/gms/internal/ads/zzclu;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclu;->zza(Lcom/google/android/gms/internal/ads/zzclu;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/qz0;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aj0;->a:Lcom/google/android/gms/internal/ads/lz;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lz;->b()Lcom/google/android/gms/internal/ads/mt;

    move-result-object v1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t90;->zzd(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/mt;->onAdFailedToLoad(I)V

    const-string v1, "InterstitialAdManagerShim.onFailure"

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/ct0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
