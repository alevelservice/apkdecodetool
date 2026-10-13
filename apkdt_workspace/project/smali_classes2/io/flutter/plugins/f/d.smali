.class Lio/flutter/plugins/f/d;
.super Ljava/lang/Object;
.source "FlutterWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/f/d$c;
    }
.end annotation


# instance fields
.field private final a:Lg/a/c/a/k;

.field private b:Z


# direct methods
.method constructor <init>(Lg/a/c/a/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/f/d;->a:Lg/a/c/a/k;

    return-void
.end method

.method private a()Landroid/webkit/WebViewClient;
    .locals 1

    .line 26
    new-instance v0, Lio/flutter/plugins/f/d$a;

    invoke-direct {v0, p0}, Lio/flutter/plugins/f/d$a;-><init>(Lio/flutter/plugins/f/d;)V

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Could not find a string for errorCode: %d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "unknown"

    return-object p0

    :pswitch_1
    const-string p0, "hostLookup"

    return-object p0

    :pswitch_2
    const-string p0, "unsupportedAuthScheme"

    return-object p0

    :pswitch_3
    const-string p0, "authentication"

    return-object p0

    :pswitch_4
    const-string p0, "proxyAuthentication"

    return-object p0

    :pswitch_5
    const-string p0, "connect"

    return-object p0

    :pswitch_6
    const-string p0, "io"

    return-object p0

    :pswitch_7
    const-string p0, "timeout"

    return-object p0

    :pswitch_8
    const-string p0, "redirectLoop"

    return-object p0

    :pswitch_9
    const-string p0, "unsupportedScheme"

    return-object p0

    :pswitch_a
    const-string p0, "failedSslHandshake"

    return-object p0

    :pswitch_b
    const-string p0, "badUrl"

    return-object p0

    :pswitch_c
    const-string p0, "file"

    return-object p0

    :pswitch_d
    const-string p0, "fileNotFound"

    return-object p0

    :pswitch_e
    const-string p0, "tooManyRequests"

    return-object p0

    :pswitch_f
    const-string p0, "unsafeResource"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "description"

    .line 13
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Lio/flutter/plugins/f/d;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "errorType"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "failingUrl"

    .line 15
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lio/flutter/plugins/f/d;->a:Lg/a/c/a/k;

    const-string p2, "onWebResourceError"

    invoke-virtual {p1, p2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/f/d;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/f/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/f/d;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/f/d;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Landroid/webkit/WebView;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            "Z)V"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    .line 18
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isForMainFrame"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "navigationRequest"

    if-eqz p4, :cond_0

    .line 20
    iget-object p4, p0, Lio/flutter/plugins/f/d;->a:Lg/a/c/a/k;

    new-instance v2, Lio/flutter/plugins/f/d$c;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Lio/flutter/plugins/f/d$c;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/webkit/WebView;Lio/flutter/plugins/f/d$a;)V

    invoke-virtual {p4, v1, v0, v2}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/f/d;->a:Lg/a/c/a/k;

    invoke-virtual {p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private b()Landroidx/webkit/WebViewClientCompat;
    .locals 1

    .line 5
    new-instance v0, Lio/flutter/plugins/f/d$b;

    invoke-direct {v0, p0}, Lio/flutter/plugins/f/d$b;-><init>(Lio/flutter/plugins/f/d;)V

    return-object v0
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "url"

    .line 3
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lio/flutter/plugins/f/d;->a:Lg/a/c/a/k;

    const-string v0, "onPageFinished"

    invoke-virtual {p2, v0, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lio/flutter/plugins/f/d;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/f/d;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "url"

    .line 2
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lio/flutter/plugins/f/d;->a:Lg/a/c/a/k;

    const-string v0, "onPageStarted"

    invoke-virtual {p2, v0, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Z)Landroid/webkit/WebViewClient;
    .locals 1

    .line 22
    iput-boolean p1, p0, Lio/flutter/plugins/f/d;->b:Z

    if-eqz p1, :cond_1

    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/f/d;->b()Landroidx/webkit/WebViewClientCompat;

    move-result-object p1

    return-object p1

    .line 25
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/flutter/plugins/f/d;->a()Landroid/webkit/WebViewClient;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 5
    iget-boolean v0, p0, Lio/flutter/plugins/f/d;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v2

    .line 7
    invoke-direct {p0, v0, v1, p1, v2}, Lio/flutter/plugins/f/d;->a(Ljava/lang/String;Ljava/util/Map;Landroid/webkit/WebView;Z)V

    .line 8
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    return p1
.end method

.method a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 9
    iget-boolean v0, p0, Lio/flutter/plugins/f/d;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-direct {p0, p2, v0, p1, v1}, Lio/flutter/plugins/f/d;->a(Ljava/lang/String;Ljava/util/Map;Landroid/webkit/WebView;Z)V

    return v1
.end method
