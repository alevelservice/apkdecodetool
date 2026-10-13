.class public abstract Lcom/google/android/gms/internal/ads/zzaya;
.super Landroid/view/TextureView;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wf;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected final zzdxk:Lcom/google/android/gms/internal/ads/kf;

.field protected final zzdxl:Lcom/google/android/gms/internal/ads/uf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/kf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdxk:Lcom/google/android/gms/internal/ads/kf;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/uf;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/uf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/wf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdxl:Lcom/google/android/gms/internal/ads/uf;

    return-void
.end method


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract zza(FF)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/cf;)V
.end method

.method public zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaya;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public zzct(I)V
    .locals 0

    return-void
.end method

.method public zzcu(I)V
    .locals 0

    return-void
.end method

.method public zzcv(I)V
    .locals 0

    return-void
.end method

.method public zzcw(I)V
    .locals 0

    return-void
.end method

.method public zzcx(I)V
    .locals 0

    return-void
.end method

.method public abstract zzwm()Ljava/lang/String;
.end method

.method public abstract zzwq()V
.end method
