.class final Lcom/google/android/gms/internal/vision/w6;
.super Lcom/google/android/gms/internal/vision/c7;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/c7;"
    }
.end annotation


# instance fields
.field private final synthetic f:Lcom/google/android/gms/internal/vision/v6;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/vision/v6;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/w6;->f:Lcom/google/android/gms/internal/vision/v6;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/c7;-><init>(Lcom/google/android/gms/internal/vision/v6;Lcom/google/android/gms/internal/vision/u6;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/vision/v6;Lcom/google/android/gms/internal/vision/u6;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/w6;-><init>(Lcom/google/android/gms/internal/vision/v6;)V

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
    new-instance v0, Lcom/google/android/gms/internal/vision/x6;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/w6;->f:Lcom/google/android/gms/internal/vision/v6;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vision/x6;-><init>(Lcom/google/android/gms/internal/vision/v6;Lcom/google/android/gms/internal/vision/u6;)V

    return-object v0
.end method
