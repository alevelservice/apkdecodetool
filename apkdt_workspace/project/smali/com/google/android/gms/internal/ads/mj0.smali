.class final Lcom/google/android/gms/internal/ads/mj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "Lcom/google/android/gms/internal/ads/sq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ij0;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/f00;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/kj0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kj0;Lcom/google/android/gms/internal/ads/ij0;Lcom/google/android/gms/internal/ads/f00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mj0;->c:Lcom/google/android/gms/internal/ads/kj0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mj0;->a:Lcom/google/android/gms/internal/ads/ij0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mj0;->b:Lcom/google/android/gms/internal/ads/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/sq;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj0;->c:Lcom/google/android/gms/internal/ads/kj0;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mj0;->a:Lcom/google/android/gms/internal/ads/ij0;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ij0;->a(Ljava/lang/Object;)V

    .line 9
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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj0;->b:Lcom/google/android/gms/internal/ads/f00;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f00;->b()Lcom/google/android/gms/internal/ads/mt;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t90;->zzd(Ljava/lang/Throwable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mt;->onAdFailedToLoad(I)V

    const-string v0, "NativeAdLoader.onFailure"

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ct0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mj0;->a:Lcom/google/android/gms/internal/ads/ij0;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ij0;->a()V

    return-void
.end method
