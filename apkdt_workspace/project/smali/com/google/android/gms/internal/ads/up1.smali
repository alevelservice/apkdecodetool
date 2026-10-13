.class final Lcom/google/android/gms/internal/ads/up1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:I

.field private final synthetic f:I

.field private final synthetic g:I

.field private final synthetic h:F

.field private final synthetic i:Lcom/google/android/gms/internal/ads/qp1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qp1;IIIF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/up1;->i:Lcom/google/android/gms/internal/ads/qp1;

    iput p2, p0, Lcom/google/android/gms/internal/ads/up1;->e:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/up1;->f:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/up1;->g:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/up1;->h:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/up1;->i:Lcom/google/android/gms/internal/ads/qp1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qp1;->a(Lcom/google/android/gms/internal/ads/qp1;)Lcom/google/android/gms/internal/ads/np1;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/up1;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/up1;->f:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/up1;->g:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/up1;->h:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/np1;->a(IIIF)V

    return-void
.end method
