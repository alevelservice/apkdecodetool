.class public final Lcom/google/android/gms/internal/ads/z11;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/v01;Lcom/google/android/gms/internal/ads/u01;)Lcom/google/android/gms/internal/ads/s01;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/v01;",
            "Lcom/google/android/gms/internal/ads/u01<",
            "Lcom/google/android/gms/internal/ads/s01;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/s01;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/c21;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/c21;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d11;->a(Lcom/google/android/gms/internal/ads/c11;)V

    .line 2
    const-class p1, Lcom/google/android/gms/internal/ads/s01;

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/d11;->a(Lcom/google/android/gms/internal/ads/v01;Lcom/google/android/gms/internal/ads/u01;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/b11;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/d11;->a(Lcom/google/android/gms/internal/ads/b11;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/s01;

    return-object p0
.end method
