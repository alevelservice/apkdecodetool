.class public final Lcom/google/android/gms/internal/ads/zzxl;
.super Lcom/google/android/gms/internal/ads/zzvt;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private e:Lcom/google/android/gms/internal/ads/zzafe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVersionString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final initialize()V
    .locals 2

    const-string v0, "The initialization is not processed because MobileAdsSettingsManager is not created successfully."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/gd;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/dv1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dv1;-><init>(Lcom/google/android/gms/internal/ads/zzxl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAppMuted(Z)V
    .locals 0

    return-void
.end method

.method public final setAppVolume(F)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxl;->e:Lcom/google/android/gms/internal/ads/zzafe;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzajd;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxw;)V
    .locals 0

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzby(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzbz(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzoo()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final zzop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzoq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaex;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method final synthetic zzpf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->e:Lcom/google/android/gms/internal/ads/zzafe;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafe;->zzc(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onComplete event."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
