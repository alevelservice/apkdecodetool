.class public Landroidx/webkit/b;
.super Ljava/lang/Object;
.source "WebViewCompat.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "*"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, ""

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 14
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 15
    :cond_1
    :try_start_0
    invoke-static {}, Landroidx/webkit/b;->b()Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-object v0

    .line 16
    :cond_2
    invoke-static {p0}, Landroidx/webkit/b;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static a()Landroidx/webkit/e/g;
    .locals 1

    .line 23
    invoke-static {}, Landroidx/webkit/e/e;->d()Landroidx/webkit/e/g;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .locals 1

    .line 24
    invoke-static {}, Landroidx/webkit/b;->a()Landroidx/webkit/e/g;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/webkit/e/g;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/webkit/ValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "START_SAFE_BROWSING"

    .line 1
    invoke-static {v0}, Landroidx/webkit/e/d;->getFeature(Ljava/lang/String;)Landroidx/webkit/e/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroid/webkit/WebView;->startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Landroidx/webkit/b;->a()Landroidx/webkit/e/g;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/e/g;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->initSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    invoke-static {}, Landroidx/webkit/e/d;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static a(Landroid/webkit/WebView;Landroidx/webkit/d;)V
    .locals 3
    .param p0    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/webkit/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 17
    invoke-static {v0}, Landroidx/webkit/e/d;->getFeature(Ljava/lang/String;)Landroidx/webkit/e/d;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByFramework()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 19
    new-instance v2, Landroidx/webkit/e/j;

    invoke-direct {v2, p1}, Landroidx/webkit/e/j;-><init>(Landroidx/webkit/d;)V

    :cond_0
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {p0}, Landroidx/webkit/b;->b(Landroid/webkit/WebView;)Landroidx/webkit/e/f;

    move-result-object p0

    invoke-virtual {p0, v2, p1}, Landroidx/webkit/e/f;->a(Ljava/util/concurrent/Executor;Landroidx/webkit/d;)V

    :goto_0
    return-void

    .line 22
    :cond_2
    invoke-static {}, Landroidx/webkit/e/d;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/util/List;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/webkit/ValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SAFE_BROWSING_WHITELIST"

    .line 7
    invoke-static {v0}, Landroidx/webkit/e/d;->getFeature(Ljava/lang/String;)Landroidx/webkit/e/d;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {p0, p1}, Landroid/webkit/WebView;->setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Landroidx/webkit/b;->a()Landroidx/webkit/e/g;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/e/g;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    .line 12
    :cond_1
    invoke-static {}, Landroidx/webkit/e/d;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method private static b()Landroid/content/pm/PackageInfo;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const-string v0, "android.webkit.WebViewFactory"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getLoadedPackageInfo"

    .line 2
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    const-string v1, "android.webkit.WebViewFactory"

    .line 5
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWebViewPackageName"

    new-array v4, v3, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    const-string v1, "android.webkit.WebViewUpdateService"

    .line 8
    :try_start_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCurrentWebViewPackageName"

    new-array v4, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 12
    :try_start_3
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static b(Landroid/webkit/WebView;)Landroidx/webkit/e/f;
    .locals 1

    .line 13
    new-instance v0, Landroidx/webkit/e/f;

    invoke-static {p0}, Landroidx/webkit/b;->a(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/webkit/e/f;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V

    return-object v0
.end method

.method public static c()Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    .line 1
    invoke-static {v0}, Landroidx/webkit/e/d;->getFeature(Ljava/lang/String;)Landroidx/webkit/e/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Landroid/webkit/WebView;->getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Landroidx/webkit/b;->a()Landroidx/webkit/e/g;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/e/g;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-static {}, Landroidx/webkit/e/d;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
