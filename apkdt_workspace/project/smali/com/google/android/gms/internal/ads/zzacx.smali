.class public final Lcom/google/android/gms/internal/ads/zzacx;
.super Lcom/google/android/gms/internal/ads/zzabx;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/formats/e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabx;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacx;->e:Lcom/google/android/gms/ads/formats/e$a;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzabo;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacx;->e:Lcom/google/android/gms/ads/formats/e$a;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n;->a(Lcom/google/android/gms/internal/ads/zzabo;)Lcom/google/android/gms/internal/ads/n;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/e$a;->a(Lcom/google/android/gms/ads/formats/e;Ljava/lang/String;)V

    return-void
.end method
