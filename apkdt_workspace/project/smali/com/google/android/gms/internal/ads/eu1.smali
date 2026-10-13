.class public Lcom/google/android/gms/internal/ads/eu1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ut1;

.field private final b:Lcom/google/android/gms/internal/ads/vt1;

.field private final c:Lcom/google/android/gms/internal/ads/q;

.field private final d:Lcom/google/android/gms/internal/ads/p6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ut1;Lcom/google/android/gms/internal/ads/vt1;Lcom/google/android/gms/internal/ads/zu1;Lcom/google/android/gms/internal/ads/q;Lcom/google/android/gms/internal/ads/a8;Lcom/google/android/gms/internal/ads/h8;Lcom/google/android/gms/internal/ads/p6;Lcom/google/android/gms/internal/ads/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eu1;->a:Lcom/google/android/gms/internal/ads/ut1;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eu1;->b:Lcom/google/android/gms/internal/ads/vt1;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/eu1;->c:Lcom/google/android/gms/internal/ads/q;

    .line 5
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/eu1;->d:Lcom/google/android/gms/internal/ads/p6;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eu1;)Lcom/google/android/gms/internal/ads/ut1;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eu1;->a:Lcom/google/android/gms/internal/ads/ut1;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    .line 2
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    .line 3
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->g()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/eu1;)Lcom/google/android/gms/internal/ads/vt1;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eu1;->b:Lcom/google/android/gms/internal/ads/vt1;

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/eu1;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/eu1;)Lcom/google/android/gms/internal/ads/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eu1;->c:Lcom/google/android/gms/internal/ads/q;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/eu1;)Lcom/google/android/gms/internal/ads/p6;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eu1;->d:Lcom/google/android/gms/internal/ads/p6;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzaaw;
    .locals 1

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/ju1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/ju1;-><init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ku1;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaaw;

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzamu;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/fu1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/fu1;-><init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/app/Activity;)V

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 18
    :goto_0
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/ku1;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzamu;

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;)Lcom/google/android/gms/internal/ads/zzux;
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/iu1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/iu1;-><init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;)V

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ku1;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzux;

    return-object p1
.end method
