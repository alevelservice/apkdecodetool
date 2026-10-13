.class public final Lcom/google/android/gms/internal/ads/ee;
.super Lcom/google/android/gms/internal/ads/he;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/he<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ee;->f:Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ee;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/ee<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ee;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ee;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    return-void
.end method
