.class public final Lcom/google/android/gms/internal/ads/zzxt;
.super Lcom/google/android/gms/internal/ads/zzwi;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/p/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/p/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwi;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxt;->e:Lcom/google/android/gms/ads/p/a;

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxt;->e:Lcom/google/android/gms/ads/p/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/p/a;->onAdMetadataChanged()V

    :cond_0
    return-void
.end method
