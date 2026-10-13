.class public final Lcom/google/android/gms/internal/ads/sz0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# direct methods
.method public static a(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/tz0;
    .locals 1

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/tz0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/tz0;

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/wz0;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/wz0;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/xz0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/xz0;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/xy0;->zzgqu:Lcom/google/android/gms/internal/ads/xy0;

    return-object v0
.end method

.method static a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fy0;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/fy0<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/xy0;->zzgqu:Lcom/google/android/gms/internal/ads/xy0;

    if-ne p0, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/vz0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/vz0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fy0;)V

    return-object v0
.end method
