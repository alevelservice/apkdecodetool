.class final Lcom/google/android/gms/internal/ads/s7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/o7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/q7;Lcom/google/android/gms/internal/ads/o7;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s7;->a:J

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s7;->b:Lcom/google/android/gms/internal/ads/o7;

    return-void
.end method
