.class public final Lcom/google/android/gms/internal/ads/a61;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/r01;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/i61;Lcom/google/android/gms/internal/ads/y51;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/c61;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/c61;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    return-void
.end method
