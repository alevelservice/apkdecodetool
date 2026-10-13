.class public final Lcom/google/android/gms/internal/ads/zd0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ad0<",
        "Lcom/google/android/gms/internal/ads/py;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/lz;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/android/gms/internal/ads/ks0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/lz;Lcom/google/android/gms/internal/ads/ks0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zd0;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zd0;->b:Lcom/google/android/gms/internal/ads/lz;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zd0;->c:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zd0;->d:Lcom/google/android/gms/internal/ads/ks0;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/ns0;)Ljava/lang/String;
    .locals 1

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ns0;->s:Lorg/json/JSONObject;

    const-string v0, "tab_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final synthetic a(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 7

    .line 6
    :try_start_0
    new-instance p4, Landroidx/browser/customtabs/CustomTabsIntent$a;

    invoke-direct {p4}, Landroidx/browser/customtabs/CustomTabsIntent$a;-><init>()V

    invoke-virtual {p4}, Landroidx/browser/customtabs/CustomTabsIntent$a;->b()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p4

    .line 7
    iget-object v0, p4, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 8
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object p1, p4, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;)V

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    .line 10
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zd0;->b:Lcom/google/android/gms/internal/ads/lz;

    new-instance v0, Lcom/google/android/gms/internal/ads/lr;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/qy;

    new-instance p3, Lcom/google/android/gms/internal/ads/be0;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/be0;-><init>(Lcom/google/android/gms/internal/ads/he;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/qy;-><init>(Lcom/google/android/gms/internal/ads/sz;)V

    .line 11
    invoke-virtual {p4, v0, p2}, Lcom/google/android/gms/internal/ads/lz;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/qy;)Lcom/google/android/gms/internal/ads/ry;

    move-result-object p2

    .line 12
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v3, 0x0

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ry;->i()Lcom/google/android/gms/internal/ads/yu;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzawv;

    const/4 p4, 0x0

    invoke-direct {v6, p4, p4, p4}, Lcom/google/android/gms/internal/ads/zzawv;-><init>(IIZ)V

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/internal/ads/st1;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/internal/ads/zzawv;)V

    .line 14
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zd0;->d:Lcom/google/android/gms/internal/ads/ks0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ks0;->c()V

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ry;->h()Lcom/google/android/gms/internal/ads/py;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "Error in CustomTabsAdRenderer"

    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/py;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zd0;->a(Lcom/google/android/gms/internal/ads/ns0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/ce0;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/ce0;-><init>(Lcom/google/android/gms/internal/ads/zd0;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zd0;->c:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zd0;->a:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/o;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zd0;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sw1;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zd0;->a(Lcom/google/android/gms/internal/ads/ns0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
