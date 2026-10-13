.class public final Lcom/google/android/gms/internal/ads/zzadb;
.super Lcom/google/android/gms/internal/ads/zzaci;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/formats/h$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/h$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaci;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadb;->e:Lcom/google/android/gms/ads/formats/h$b;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzacq;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadb;->e:Lcom/google/android/gms/ads/formats/h$b;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/p;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/p;-><init>(Lcom/google/android/gms/internal/ads/zzacq;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/h$b;->a(Lcom/google/android/gms/ads/formats/h;)V

    return-void
.end method
