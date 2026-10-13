.class public final Lcom/google/android/gms/internal/ads/dm0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ko0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ko0<",
        "Lcom/google/android/gms/internal/ads/em0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tz0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/tz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dm0;->a:Lcom/google/android/gms/internal/ads/tz0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/em0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dm0;->a:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/gm0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/gm0;-><init>(Lcom/google/android/gms/internal/ads/dm0;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method
