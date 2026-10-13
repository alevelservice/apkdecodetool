.class final Lcom/google/android/gms/internal/ads/c3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/m3;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/h2;

.field private final synthetic g:Lcom/google/android/gms/internal/ads/q2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q2;Lcom/google/android/gms/internal/ads/m3;Lcom/google/android/gms/internal/ads/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/q2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c3;->e:Lcom/google/android/gms/internal/ads/m3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/q2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/q2;->a(Lcom/google/android/gms/internal/ads/q2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c3;->e:Lcom/google/android/gms/internal/ads/m3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ke;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c3;->e:Lcom/google/android/gms/internal/ads/m3;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ke;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c3;->e:Lcom/google/android/gms/internal/ads/m3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ke;->b()V

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/tz0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/h2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/b3;->a(Lcom/google/android/gms/internal/ads/h2;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
