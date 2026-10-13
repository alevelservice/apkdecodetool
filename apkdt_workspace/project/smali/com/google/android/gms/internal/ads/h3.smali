.class final Lcom/google/android/gms/internal/ads/h3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/le;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/le<",
        "Lcom/google/android/gms/internal/ads/p3;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/i3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Ending javascript session."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/s3;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/s3;->b()V

    return-void
.end method
