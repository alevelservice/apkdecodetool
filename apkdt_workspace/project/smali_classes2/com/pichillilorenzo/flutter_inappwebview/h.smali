.class public Lcom/pichillilorenzo/flutter_inappwebview/h;
.super Ljava/lang/Object;
.source "InAppWebViewStatic.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field public e:Lg/a/c/a/k;


# direct methods
.method public constructor <init>(Lg/a/c/a/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "com.pichillilorenzo/flutter_inappwebview_static"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/h;->e:Lg/a/c/a/k;

    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/h;->e:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/PackageInfo;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "versionName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/h;->e:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "getCurrentWebViewPackage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "getDefaultUserAgent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "getSafeBrowsingPrivacyPolicyUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "clearClientCertPreferences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "setSafeBrowsingWhitelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_9

    if-eq v0, v5, :cond_7

    const/4 v1, 0x0

    const/16 v5, 0x1b

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto/16 :goto_2

    .line 3
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 4
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 5
    invoke-static {p1}, Landroidx/webkit/b;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/h;->a(Landroid/content/pm/PackageInfo;)Ljava/util/Map;

    move-result-object p1

    .line 6
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-interface {p2, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_4

    const-string v0, "SAFE_BROWSING_WHITELIST"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "hosts"

    .line 9
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 10
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/h$b;

    invoke-direct {v0, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/h$b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/h;Lg/a/c/a/k$d;)V

    invoke-static {p1, v0}, Landroidx/webkit/b;->a(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 11
    :cond_4
    invoke-interface {p2, v7}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_6

    const-string p1, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    invoke-static {p1}, Landroidx/webkit/WebViewFeature;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-static {}, Landroidx/webkit/b;->c()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_6
    invoke-interface {p2, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_8

    .line 16
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/h$a;

    invoke-direct {p1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/h$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/h;Lg/a/c/a/k$d;)V

    invoke-static {p1}, Landroid/webkit/WebView;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 17
    :cond_8
    invoke-interface {p2, v7}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_9
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f63880f -> :sswitch_4
        -0x1a003164 -> :sswitch_3
        0xf6b0a3f -> :sswitch_2
        0x265d382f -> :sswitch_1
        0x5e8d5210 -> :sswitch_0
    .end sparse-switch
.end method
