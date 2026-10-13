.class public final Lcom/google/android/gms/internal/ads/zzacy;
.super Lcom/google/android/gms/internal/ads/zzabw;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/formats/d$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacy;->e:Lcom/google/android/gms/ads/formats/d$a;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzabk;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->e:Lcom/google/android/gms/ads/formats/d$a;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/m;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/m;-><init>(Lcom/google/android/gms/internal/ads/zzabk;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/d$a;->a(Lcom/google/android/gms/ads/formats/d;)V

    return-void
.end method
