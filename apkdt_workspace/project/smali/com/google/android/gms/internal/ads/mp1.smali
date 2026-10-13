.class final Lcom/google/android/gms/internal/ads/mp1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/hp1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hp1;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mp1;->a:Lcom/google/android/gms/internal/ads/hp1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/hp1;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/kp1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mp1;-><init>(Lcom/google/android/gms/internal/ads/hp1;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mp1;->a:Lcom/google/android/gms/internal/ads/hp1;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/hp1;->y0:Lcom/google/android/gms/internal/ads/mp1;

    if-eq p0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hp1;->z()V

    return-void
.end method
