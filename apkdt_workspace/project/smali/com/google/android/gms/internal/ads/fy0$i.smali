.class final Lcom/google/android/gms/internal/ads/fy0$i;
.super Lcom/google/android/gms/internal/ads/fy0$b;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/fy0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/fy0$b;-><init>(Lcom/google/android/gms/internal/ads/fy0$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fy0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fy0$i;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/fy0$l;Lcom/google/android/gms/internal/ads/fy0$l;)V
    .locals 0

    .line 2
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/fy0$l;->b:Lcom/google/android/gms/internal/ads/fy0$l;

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/fy0$l;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/fy0$l;->a:Ljava/lang/Thread;

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$e;Lcom/google/android/gms/internal/ads/fy0$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fy0<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/fy0$e;",
            "Lcom/google/android/gms/internal/ads/fy0$e;",
            ")Z"
        }
    .end annotation

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fy0;->e(Lcom/google/android/gms/internal/ads/fy0;)Lcom/google/android/gms/internal/ads/fy0$e;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 11
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$e;)Lcom/google/android/gms/internal/ads/fy0$e;

    const/4 p2, 0x1

    .line 12
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 13
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$l;Lcom/google/android/gms/internal/ads/fy0$l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fy0<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/fy0$l;",
            "Lcom/google/android/gms/internal/ads/fy0$l;",
            ")Z"
        }
    .end annotation

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fy0;->d(Lcom/google/android/gms/internal/ads/fy0;)Lcom/google/android/gms/internal/ads/fy0$l;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 5
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$l;)Lcom/google/android/gms/internal/ads/fy0$l;

    const/4 p2, 0x1

    .line 6
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 7
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fy0<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fy0;->b(Lcom/google/android/gms/internal/ads/fy0;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 17
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 18
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 19
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
