.class public final Lcom/google/android/gms/internal/ads/zztq;
.super Lcom/google/android/gms/internal/ads/zzvk;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/o/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/o/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztq;->e:Lcom/google/android/gms/ads/o/a;

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->e:Lcom/google/android/gms/ads/o/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/o/a;->a()V

    :cond_0
    return-void
.end method
