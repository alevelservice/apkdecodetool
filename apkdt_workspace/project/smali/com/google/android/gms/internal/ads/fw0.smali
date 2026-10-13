.class public final Lcom/google/android/gms/internal/ads/fw0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/ads/gw0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/hw0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hw0;-><init>(Lcom/google/android/gms/internal/ads/iw0;)V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/fw0;->a:Lcom/google/android/gms/internal/ads/gw0;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/gw0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/fw0;->a:Lcom/google/android/gms/internal/ads/gw0;

    return-object v0
.end method
