.class public final Lcom/google/android/gms/internal/ads/zzade;
.super Lcom/google/android/gms/internal/ads/zzaco;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/formats/h$c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/h$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaco;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzade;->e:Lcom/google/android/gms/ads/formats/h$c;

    return-void
.end method


# virtual methods
.method public final onUnconfirmedClickCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->e:Lcom/google/android/gms/ads/formats/h$c;

    invoke-interface {v0}, Lcom/google/android/gms/ads/formats/h$c;->onUnconfirmedClickCancelled()V

    return-void
.end method

.method public final onUnconfirmedClickReceived(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->e:Lcom/google/android/gms/ads/formats/h$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/h$c;->onUnconfirmedClickReceived(Ljava/lang/String;)V

    return-void
.end method
