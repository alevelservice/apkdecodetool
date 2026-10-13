.class public final Lcom/google/android/gms/internal/ads/ov0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@18.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ev;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/nv0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/nv0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1388

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/nv0;->a(I)Lcom/google/android/gms/internal/ads/ev;

    move-result-object p0

    return-object p0
.end method
