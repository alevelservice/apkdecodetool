.class public final Lcom/google/android/gms/internal/ads/la;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/kd;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/kd;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/oa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/oa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ja;->b()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p0

    const-string v0, "Updating ad debug logging enablement."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/de;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
