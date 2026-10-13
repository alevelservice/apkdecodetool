.class final Lcom/google/android/gms/internal/ads/my0$b;
.super Lcom/google/android/gms/internal/ads/my0$a;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/my0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my0$a;-><init>(Lcom/google/android/gms/internal/ads/oy0;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/oy0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/my0$b;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/my0;)I
    .locals 1

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/my0;->b(Lcom/google/android/gms/internal/ads/my0;)I

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/my0;->c(Lcom/google/android/gms/internal/ads/my0;)I

    move-result v0

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/my0;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/my0;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/my0;->a(Lcom/google/android/gms/internal/ads/my0;)Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/my0;->a(Lcom/google/android/gms/internal/ads/my0;Ljava/util/Set;)Ljava/util/Set;

    .line 4
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
