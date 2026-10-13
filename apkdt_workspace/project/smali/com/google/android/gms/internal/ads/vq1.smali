.class final Lcom/google/android/gms/internal/ads/vq1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Landroid/view/View;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/wq1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wq1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vq1;->f:Lcom/google/android/gms/internal/ads/wq1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vq1;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vq1;->f:Lcom/google/android/gms/internal/ads/wq1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vq1;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wq1;->a(Landroid/view/View;)V

    return-void
.end method
