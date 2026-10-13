.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/zzvq;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaaz;
    .locals 1

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 21
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuo;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbuo;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/zzapl;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 8
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/mk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/mk;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mk;->m()Lcom/google/android/gms/internal/ads/es0;

    move-result-object p2

    .line 10
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/es0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/es0;

    .line 11
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/es0;->a()Lcom/google/android/gms/internal/ads/fs0;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fs0;->a()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/zzux;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 5
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/mk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/mk;

    move-result-object p3

    .line 6
    new-instance p4, Lcom/google/android/gms/internal/ads/zzcli;

    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcli;-><init>(Lcom/google/android/gms/internal/ads/mk;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzve;
    .locals 4

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawv;

    const v1, 0xe975a0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzawv;-><init>(IIZZ)V

    .line 18
    new-instance p4, Lcom/google/android/gms/ads/internal/zzj;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawv;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/zzve;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/mk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/mk;

    move-result-object p4

    .line 3
    new-instance p5, Lcom/google/android/gms/internal/ads/zzclo;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzclo;-><init>(Lcom/google/android/gms/internal/ads/mk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;)V

    return-object p5
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/ads/zzvu;
    .locals 0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/mk;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/mk;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mk;->g()Lcom/google/android/gms/internal/ads/zzbfk;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/zzaqg;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 5
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/mk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/mk;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/mk;->m()Lcom/google/android/gms/internal/ads/es0;

    move-result-object p3

    .line 7
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/es0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/es0;

    .line 8
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/es0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/es0;

    .line 9
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/es0;->a()Lcom/google/android/gms/internal/ads/fs0;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fs0;->b()Lcom/google/android/gms/internal/ads/zzcup;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/zzve;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/mk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/mk;

    move-result-object p4

    .line 3
    new-instance p5, Lcom/google/android/gms/internal/ads/zzclu;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzclu;-><init>(Lcom/google/android/gms/internal/ads/mk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;)V

    return-object p5
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaaw;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbun;

    const v1, 0xe975a0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbun;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/zzve;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 5
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/mk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/mk;

    move-result-object p4

    .line 6
    new-instance p5, Lcom/google/android/gms/internal/ads/zzclk;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzclk;-><init>(Lcom/google/android/gms/internal/ads/mk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;)V

    return-object p5
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzamu;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 4
    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    .line 7
    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzz;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzvu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzane;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
