.class final Lcom/google/android/gms/internal/ads/is1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$b;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/he;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/cs1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cs1;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/is1;->f:Lcom/google/android/gms/internal/ads/cs1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/is1;->e:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/is1;->f:Lcom/google/android/gms/internal/ads/cs1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cs1;->b(Lcom/google/android/gms/internal/ads/cs1;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/is1;->e:Lcom/google/android/gms/internal/ads/he;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/he;->a(Ljava/lang/Throwable;)Z

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
