.class public final Lcom/google/android/gms/internal/ads/hs1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzrl;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzrl;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cs1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cs1;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cs1;->a(Lcom/google/android/gms/internal/ads/zzrl;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
