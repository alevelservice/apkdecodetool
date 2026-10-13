.class public final Lcom/google/android/gms/internal/ads/zzacv;
.super Lcom/google/android/gms/internal/ads/zzabr;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/formats/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabr;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacv;->e:Lcom/google/android/gms/ads/formats/c$a;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzabg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacv;->e:Lcom/google/android/gms/ads/formats/c$a;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/l;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/l;-><init>(Lcom/google/android/gms/internal/ads/zzabg;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/c$a;->a(Lcom/google/android/gms/ads/formats/c;)V

    return-void
.end method
