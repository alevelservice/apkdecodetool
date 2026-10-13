.class public final Lcom/google/android/gms/internal/ads/zztk;
.super Lcom/google/android/gms/internal/ads/zzup;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/st1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/st1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzup;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->e:Lcom/google/android/gms/internal/ads/st1;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->e:Lcom/google/android/gms/internal/ads/st1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/st1;->onAdClicked()V

    return-void
.end method
