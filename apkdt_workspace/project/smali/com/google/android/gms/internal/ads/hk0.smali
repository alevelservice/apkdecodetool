.class public final Lcom/google/android/gms/internal/ads/hk0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ko0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ko0<",
        "Lcom/google/android/gms/internal/ads/dk0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ws0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ws0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hk0;->a:Lcom/google/android/gms/internal/ads/ws0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/dk0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dk0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hk0;->a:Lcom/google/android/gms/internal/ads/ws0;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dk0;-><init>(Lcom/google/android/gms/internal/ads/ws0;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method
