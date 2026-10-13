.class public final Lcom/google/android/gms/internal/ads/g5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/g;
.implements Lcom/google/android/gms/ads/mediation/l;
.implements Lcom/google/android/gms/ads/mediation/n;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzajj;

.field private b:Lcom/google/android/gms/ads/mediation/q;

.field private c:Lcom/google/android/gms/ads/mediation/x;

.field private d:Lcom/google/android/gms/ads/formats/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    return-void
.end method

.method private static a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/x;Lcom/google/android/gms/ads/mediation/q;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/mediation/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    instance-of p0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance p0, Lcom/google/android/gms/ads/j;

    invoke-direct {p0}, Lcom/google/android/gms/ads/j;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajx;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/j;->a(Lcom/google/android/gms/internal/ads/zzwk;)V

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/x;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/mediation/x;->a(Lcom/google/android/gms/ads/j;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 40
    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/q;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p2, p0}, Lcom/google/android/gms/ads/mediation/q;->a(Lcom/google/android/gms/ads/j;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/mediation/q;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g5;->b:Lcom/google/android/gms/ads/mediation/q;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzajj;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 12
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAppEvent."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajj;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 19
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzajj;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 60
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 55
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzajj;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 56
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/e;)V
    .locals 2

    const-string p1, "#008 Must be called on the main UI thread."

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 43
    invoke-interface {p2}, Lcom/google/android/gms/ads/formats/e;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Adapter called onAdLoaded with template id "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g5;->d:Lcom/google/android/gms/ads/formats/e;

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 46
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/e;Ljava/lang/String;)V
    .locals 0

    .line 47
    instance-of p1, p2, Lcom/google/android/gms/internal/ads/n;

    if-eqz p1, :cond_0

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    check-cast p2, Lcom/google/android/gms/internal/ads/n;

    .line 49
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/n;->a()Lcom/google/android/gms/internal/ads/zzabo;

    move-result-object p2

    .line 50
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajj;->zza(Lcom/google/android/gms/internal/ads/zzabo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 51
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Unexpected native custom template ad type."

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/q;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g5;->b:Lcom/google/android/gms/ads/mediation/q;

    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g5;->c:Lcom/google/android/gms/ads/mediation/x;

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/g5;->c:Lcom/google/android/gms/ads/mediation/x;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g5;->b:Lcom/google/android/gms/ads/mediation/q;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/g5;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/x;Lcom/google/android/gms/ads/mediation/q;)V

    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 27
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/x;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g5;->c:Lcom/google/android/gms/ads/mediation/x;

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g5;->b:Lcom/google/android/gms/ads/mediation/q;

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/g5;->c:Lcom/google/android/gms/ads/mediation/x;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g5;->b:Lcom/google/android/gms/ads/mediation/q;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/g5;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/x;Lcom/google/android/gms/ads/mediation/q;)V

    .line 33
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 34
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/ads/mediation/x;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g5;->c:Lcom/google/android/gms/ads/mediation/x;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()Lcom/google/android/gms/ads/formats/e;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g5;->d:Lcom/google/android/gms/ads/formats/e;

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->b:Lcom/google/android/gms/ads/mediation/q;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g5;->c:Lcom/google/android/gms/ads/mediation/x;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g5;->d:Lcom/google/android/gms/ads/formats/e;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 13
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v1, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/x;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/q;->c()Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "Adapter called onAdClicked."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 19
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->b:Lcom/google/android/gms/ads/mediation/q;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g5;->c:Lcom/google/android/gms/ads/mediation/x;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g5;->d:Lcom/google/android/gms/ads/formats/e;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 13
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v1, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/x;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/q;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "Adapter called onAdImpression."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 19
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g5;->a:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajj;->onAdImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
