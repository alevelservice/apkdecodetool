.class public final Lcom/google/android/gms/internal/ads/zzada;
.super Lcom/google/android/gms/internal/ads/zzacc;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/formats/e$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/e$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacc;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzada;->e:Lcom/google/android/gms/ads/formats/e$b;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzabo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->e:Lcom/google/android/gms/ads/formats/e$b;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n;->a(Lcom/google/android/gms/internal/ads/zzabo;)Lcom/google/android/gms/internal/ads/n;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/e$b;->a(Lcom/google/android/gms/ads/formats/e;)V

    return-void
.end method
