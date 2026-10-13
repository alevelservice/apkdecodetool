.class public final Lcom/google/android/gms/internal/ads/zzzs;
.super Lcom/google/android/gms/internal/ads/zzzq;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/doubleclick/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzq;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzs;->e:Lcom/google/android/gms/ads/doubleclick/c;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzzm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->e:Lcom/google/android/gms/ads/doubleclick/c;

    new-instance v1, Lcom/google/android/gms/internal/ads/rw1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/rw1;-><init>(Lcom/google/android/gms/internal/ads/zzzm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/c;->a(Lcom/google/android/gms/ads/doubleclick/b;)V

    return-void
.end method
