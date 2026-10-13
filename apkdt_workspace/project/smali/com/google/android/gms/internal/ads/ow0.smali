.class public final Lcom/google/android/gms/internal/ads/ow0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qw0;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/qw0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/qw0;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/rw0;)V

    return-object v0
.end method
