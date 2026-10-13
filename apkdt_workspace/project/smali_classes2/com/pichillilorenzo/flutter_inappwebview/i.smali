.class public Lcom/pichillilorenzo/flutter_inappwebview/i;
.super Ljava/lang/Object;
.source "JavaScriptBridgeInterface.java"


# instance fields
.field private a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

.field private b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

.field public c:Lg/a/c/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->f:Lg/a/c/a/k;

    :goto_1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->c:Lg/a/c/a/k;

    return-void
.end method


# virtual methods
.method public _callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    :goto_0
    move-object v4, v0

    .line 3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "handlerName"

    .line 6
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "args"

    .line 7
    invoke-interface {v5, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/i$b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/i$b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/i;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public _hideContextMenu()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 3
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/i$a;

    invoke-direct {v2, p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/i$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/i;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->c:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/i;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    :cond_1
    return-void
.end method
