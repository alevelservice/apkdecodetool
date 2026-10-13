.class public abstract Lcom/google/android/gms/internal/ads/pn1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/sn1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/android/gms/internal/ads/sh1;Lcom/google/android/gms/internal/ads/bn1;)Lcom/google/android/gms/internal/ads/rn1;
.end method

.method protected final a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn1;->a:Lcom/google/android/gms/internal/ads/sn1;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/sn1;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sn1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pn1;->a:Lcom/google/android/gms/internal/ads/sn1;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method
