.class public final Lcom/google/android/gms/internal/ads/qt1;
.super Lcom/google/android/gms/internal/ads/uc1;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/uc1<",
        "Lcom/google/android/gms/internal/ads/qt1;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lcom/google/android/gms/internal/ads/qt1;


# direct methods
.method public static d()[Lcom/google/android/gms/internal/ads/qt1;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/qt1;->c:[Lcom/google/android/gms/internal/ads/qt1;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/yc1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/qt1;->c:[Lcom/google/android/gms/internal/ads/qt1;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/qt1;

    .line 4
    sput-object v1, Lcom/google/android/gms/internal/ads/qt1;->c:[Lcom/google/android/gms/internal/ads/qt1;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/qt1;->c:[Lcom/google/android/gms/internal/ads/qt1;

    return-object v0
.end method
