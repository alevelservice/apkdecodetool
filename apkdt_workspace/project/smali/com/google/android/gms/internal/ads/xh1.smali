.class public final Lcom/google/android/gms/internal/ads/xh1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/xh1;->c:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xg1;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/xh1;
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xh1;->a:Ljava/lang/Object;

    .line 2
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/xh1;->b:J

    .line 3
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/xh1;->c:J

    return-object p0
.end method
