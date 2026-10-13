.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;
.super Landroidx/webkit/d;
.source "InAppWebViewRenderProcessClient.java"


# instance fields
.field private a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

.field private b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

.field public c:Lg/a/c/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/webkit/d;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->f:Lg/a/c/a/k;

    :goto_1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;->c:Lg/a/c/a/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Landroidx/webkit/c;)V
    .locals 3
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/webkit/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;->c:Lg/a/c/a/k;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h$b;

    invoke-direct {v1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h$b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;Landroidx/webkit/c;)V

    const-string p2, "onRenderProcessResponsive"

    invoke-virtual {p1, p2, v0, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    return-void
.end method

.method public b(Landroid/webkit/WebView;Landroidx/webkit/c;)V
    .locals 3
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/webkit/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;->c:Lg/a/c/a/k;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h$a;

    invoke-direct {v1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;Landroidx/webkit/c;)V

    const-string p2, "onRenderProcessUnresponsive"

    invoke-virtual {p1, p2, v0, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    return-void
.end method
