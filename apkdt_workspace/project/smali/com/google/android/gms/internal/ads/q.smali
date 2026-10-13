.class public final Lcom/google/android/gms/internal/ads/q;
.super Lcom/google/android/gms/dynamic/a;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/a<",
        "Lcom/google/android/gms/internal/ads/zzaax;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzaaw;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaax;

    const v2, 0xe975a0

    .line 5
    invoke-interface {p1, v1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    .line 6
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 7
    instance-of p3, p2, Lcom/google/android/gms/internal/ads/zzaaw;

    if-eqz p3, :cond_1

    .line 8
    check-cast p2, Lcom/google/android/gms/internal/ads/zzaaw;

    return-object p2

    .line 9
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaay;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamic/a$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "Could not create remote NativeAdViewDelegate."

    .line 10
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator"

    .line 11
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 12
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaax;

    if-eqz v1, :cond_1

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaax;

    return-object v0

    .line 14
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaba;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaba;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
