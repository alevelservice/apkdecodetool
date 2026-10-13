.class final Lcom/google/android/gms/internal/ads/ea;
.super Lcom/google/android/gms/internal/ads/ja;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final synthetic c:Lcom/google/android/gms/internal/ads/ca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ea;->c:Lcom/google/android/gms/internal/ads/ca;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ja;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fw1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ea;->c:Lcom/google/android/gms/internal/ads/ca;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ca;->a(Lcom/google/android/gms/internal/ads/ca;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ea;->c:Lcom/google/android/gms/internal/ads/ca;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ca;->b(Lcom/google/android/gms/internal/ads/ca;)Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/fw1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ea;->c:Lcom/google/android/gms/internal/ads/ca;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ca;->c(Lcom/google/android/gms/internal/ads/ca;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->l()Lcom/google/android/gms/internal/ads/gw1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ea;->c:Lcom/google/android/gms/internal/ads/ca;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ca;->d(Lcom/google/android/gms/internal/ads/ca;)Lcom/google/android/gms/internal/ads/ew1;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/gw1;->a(Lcom/google/android/gms/internal/ads/ew1;Lcom/google/android/gms/internal/ads/fw1;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    .line 5
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
