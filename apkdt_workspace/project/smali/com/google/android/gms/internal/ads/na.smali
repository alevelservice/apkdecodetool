.class public final Lcom/google/android/gms/internal/ads/na;
.super Lcom/google/android/gms/internal/ads/qd;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# direct methods
.method public static a()Z
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->Y0:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/na;->a()Z

    move-result p0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/na;->a()Z

    move-result p0

    return-void
.end method
