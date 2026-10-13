.class public final Lcom/google/android/gms/internal/ads/i3;
.super Lcom/google/android/gms/internal/ads/ke;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ke<",
        "Lcom/google/android/gms/internal/ads/p3;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/android/gms/internal/ads/m3;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/m3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ke;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/i3;->c:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i3;->d:Lcom/google/android/gms/internal/ads/m3;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/i3;)Lcom/google/android/gms/internal/ads/m3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i3;->d:Lcom/google/android/gms/internal/ads/m3;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i3;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/i3;->e:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/i3;->e:Z

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/h3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/h3;-><init>(Lcom/google/android/gms/internal/ads/i3;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/ie;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/ie;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ke;->a(Lcom/google/android/gms/internal/ads/le;Lcom/google/android/gms/internal/ads/je;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/k3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/k3;-><init>(Lcom/google/android/gms/internal/ads/i3;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/j3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/j3;-><init>(Lcom/google/android/gms/internal/ads/i3;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ke;->a(Lcom/google/android/gms/internal/ads/le;Lcom/google/android/gms/internal/ads/je;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
