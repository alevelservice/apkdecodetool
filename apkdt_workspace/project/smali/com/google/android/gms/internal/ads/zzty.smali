.class public final Lcom/google/android/gms/internal/ads/zzty;
.super Lcom/google/android/gms/internal/ads/zzvl;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/doubleclick/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->e:Lcom/google/android/gms/ads/doubleclick/a;

    return-void
.end method


# virtual methods
.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->e:Lcom/google/android/gms/ads/doubleclick/a;

    return-object v0
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->e:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/doubleclick/a;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
