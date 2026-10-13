.class final Lcom/google/android/gms/internal/ads/jb1;
.super Lcom/google/android/gms/internal/ads/pb1;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/pb1;"
    }
.end annotation


# instance fields
.field private final synthetic f:Lcom/google/android/gms/internal/ads/ib1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ib1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jb1;->f:Lcom/google/android/gms/internal/ads/ib1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/pb1;-><init>(Lcom/google/android/gms/internal/ads/ib1;Lcom/google/android/gms/internal/ads/hb1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ib1;Lcom/google/android/gms/internal/ads/hb1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jb1;-><init>(Lcom/google/android/gms/internal/ads/ib1;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/kb1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jb1;->f:Lcom/google/android/gms/internal/ads/ib1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/kb1;-><init>(Lcom/google/android/gms/internal/ads/ib1;Lcom/google/android/gms/internal/ads/hb1;)V

    return-object v0
.end method
