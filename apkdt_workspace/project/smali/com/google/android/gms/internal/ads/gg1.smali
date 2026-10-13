.class final Lcom/google/android/gms/internal/ads/gg1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/uq1;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/m70;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/m70;Lcom/google/android/gms/internal/ads/uq1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg1;->f:Lcom/google/android/gms/internal/ads/m70;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gg1;->e:Lcom/google/android/gms/internal/ads/uq1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg1;->f:Lcom/google/android/gms/internal/ads/m70;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m70;->a(Lcom/google/android/gms/internal/ads/m70;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gg1;->e:Lcom/google/android/gms/internal/ads/uq1;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
