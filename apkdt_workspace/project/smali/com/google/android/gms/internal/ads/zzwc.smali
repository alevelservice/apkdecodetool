.class public final Lcom/google/android/gms/internal/ads/zzwc;
.super Lcom/google/android/gms/internal/ads/zzwa;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwa;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->e:Lcom/google/android/gms/ads/g;

    return-void
.end method


# virtual methods
.method public final onAdMuted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->e:Lcom/google/android/gms/ads/g;

    invoke-interface {v0}, Lcom/google/android/gms/ads/g;->onAdMuted()V

    return-void
.end method
