.class final Lcom/google/android/gms/internal/ads/vf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private e:Lcom/google/android/gms/internal/ads/zzayc;

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vf;->f:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vf;->e:Lcom/google/android/gms/internal/ads/zzayc;

    return-void
.end method

.method private final c()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vf;->f:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->e:Lcom/google/android/gms/internal/ads/zzayc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayc;->zzwz()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vf;->f:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vf;->c()V

    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vf;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->e:Lcom/google/android/gms/internal/ads/zzayc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayc;->zzwz()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vf;->c()V

    :cond_0
    return-void
.end method
