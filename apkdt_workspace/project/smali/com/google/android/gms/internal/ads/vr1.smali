.class final Lcom/google/android/gms/internal/ads/vr1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$b;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/sr1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sr1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vr1;->e:Lcom/google/android/gms/internal/ads/sr1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vr1;->e:Lcom/google/android/gms/internal/ads/sr1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sr1;->c(Lcom/google/android/gms/internal/ads/sr1;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vr1;->e:Lcom/google/android/gms/internal/ads/sr1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/sr1;->a(Lcom/google/android/gms/internal/ads/sr1;Lcom/google/android/gms/internal/ads/zzrm;)Lcom/google/android/gms/internal/ads/zzrm;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vr1;->e:Lcom/google/android/gms/internal/ads/sr1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sr1;->d(Lcom/google/android/gms/internal/ads/sr1;)Lcom/google/android/gms/internal/ads/wr1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vr1;->e:Lcom/google/android/gms/internal/ads/sr1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/sr1;->a(Lcom/google/android/gms/internal/ads/sr1;Lcom/google/android/gms/internal/ads/wr1;)Lcom/google/android/gms/internal/ads/wr1;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vr1;->e:Lcom/google/android/gms/internal/ads/sr1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sr1;->c(Lcom/google/android/gms/internal/ads/sr1;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
