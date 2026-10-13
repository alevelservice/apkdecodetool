.class public final Lcom/google/android/gms/internal/ads/zzalz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/google/android/gms/ads/mediation/l;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/zzalz;)Lcom/google/android/gms/ads/mediation/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzalz;->b:Lcom/google/android/gms/ads/mediation/l;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/zzalz;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzalz;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/l;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/d;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalz;->b:Lcom/google/android/gms/ads/mediation/l;

    .line 2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalz;->b:Lcom/google/android/gms/ads/mediation/l;

    if-nez p2, :cond_0

    const-string p1, "Listener not set for mediation. Returning."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    const/4 p4, 0x0

    if-nez p2, :cond_1

    const-string p1, "AdMobCustomTabs can only work with Activity context. Bailing out."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->b:Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/l;->a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/o;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sw1;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    const-string p1, "Default browser does not support custom tabs. Bailing out."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->b:Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/l;->a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_3
    const-string p2, "tab_url"

    .line 11
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p1, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->b:Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/l;->a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 15
    :cond_4
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->a:Landroid/app/Activity;

    .line 16
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->c:Landroid/net/Uri;

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->b:Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/l;->c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final showInterstitial()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$a;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$a;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$a;->b()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalz;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-direct {v4, v0}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v6, Lcom/google/android/gms/internal/ads/x5;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/x5;-><init>(Lcom/google/android/gms/internal/ads/zzalz;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzawv;

    const/4 v1, 0x0

    invoke-direct {v8, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzawv;-><init>(IIZ)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/internal/ads/st1;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/internal/ads/zzawv;)V

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/w5;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/w5;-><init>(Lcom/google/android/gms/internal/ads/zzalz;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ca;->e()V

    return-void
.end method
