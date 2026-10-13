.class final Lcom/google/android/gms/internal/ads/vp1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:I

.field private final synthetic f:J

.field private final synthetic g:Lcom/google/android/gms/internal/ads/qp1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qp1;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vp1;->g:Lcom/google/android/gms/internal/ads/qp1;

    iput p2, p0, Lcom/google/android/gms/internal/ads/vp1;->e:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/vp1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vp1;->g:Lcom/google/android/gms/internal/ads/qp1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qp1;->a(Lcom/google/android/gms/internal/ads/qp1;)Lcom/google/android/gms/internal/ads/np1;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/vp1;->e:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/vp1;->f:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/np1;->a(IJ)V

    return-void
.end method
