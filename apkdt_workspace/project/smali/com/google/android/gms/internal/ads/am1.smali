.class final Lcom/google/android/gms/internal/ads/am1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/yl1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yl1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/am1;->e:Lcom/google/android/gms/internal/ads/yl1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am1;->e:Lcom/google/android/gms/internal/ads/yl1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl1;->b(Lcom/google/android/gms/internal/ads/yl1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am1;->e:Lcom/google/android/gms/internal/ads/yl1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl1;->c(Lcom/google/android/gms/internal/ads/yl1;)Lcom/google/android/gms/internal/ads/lm1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/am1;->e:Lcom/google/android/gms/internal/ads/yl1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/an1;->a(Lcom/google/android/gms/internal/ads/xm1;)V

    :cond_0
    return-void
.end method
