.class final Lcom/google/android/gms/ads/internal/overlay/h;
.super Lcom/google/android/gms/internal/ads/ja;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field final synthetic c:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/h;->c:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ja;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/h;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->v()Lcom/google/android/gms/internal/ads/uc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/h;->c:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->s:Lcom/google/android/gms/ads/internal/zzi;

    iget v1, v1, Lcom/google/android/gms/ads/internal/zzi;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uc;->a(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/h;->c:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/overlay/zze;->zzzr:Landroid/app/Activity;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->s:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v4, v2, Lcom/google/android/gms/ads/internal/zzi;->h:Z

    iget v2, v2, Lcom/google/android/gms/ads/internal/zzi;->i:F

    .line 3
    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/google/android/gms/internal/ads/db;->a(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/k;-><init>(Lcom/google/android/gms/ads/internal/overlay/h;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
