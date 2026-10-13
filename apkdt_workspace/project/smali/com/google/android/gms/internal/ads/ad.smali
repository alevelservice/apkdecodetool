.class public final Lcom/google/android/gms/internal/ads/ad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static b:Lcom/google/android/gms/internal/ads/ad;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ad;->b:Lcom/google/android/gms/internal/ads/ad;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ad;->b:Lcom/google/android/gms/internal/ads/ad;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ad;->b:Lcom/google/android/gms/internal/ads/ad;

    return-object v0
.end method
