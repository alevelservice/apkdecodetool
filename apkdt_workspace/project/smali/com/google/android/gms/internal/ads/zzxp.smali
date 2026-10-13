.class public final Lcom/google/android/gms/internal/ads/zzxp;
.super Lcom/google/android/gms/internal/ads/zzaqj;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaql;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqt;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzarb;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zzaqo;)V
    .locals 1

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/gd;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/ev1;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/ev1;-><init>(Lcom/google/android/gms/internal/ads/zzaqo;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwf;)V
    .locals 0

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzpg()Lcom/google/android/gms/internal/ads/zzaqf;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
