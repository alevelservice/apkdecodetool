.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InAppBrowserActivity.java"

# interfaces
.implements Lg/a/c/a/k$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$g;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "InAppBrowserActivity"


# instance fields
.field public actionBar:Landroidx/appcompat/app/ActionBar;

.field public activityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$g;",
            ">;"
        }
    .end annotation
.end field

.field public channel:Lg/a/c/a/k;

.field public fromActivity:Ljava/lang/String;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isHidden:Z

.field public menu:Landroid/view/Menu;

.field public options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

.field public progressBar:Landroid/widget/ProgressBar;

.field public searchView:Landroid/widget/SearchView;

.field public uuid:Ljava/lang/String;

.field public webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

.field public windowId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->isHidden:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->activityResultListeners:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->prepare()V

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->hide()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->show()V

    .line 5
    :goto_0
    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/m;->progressBar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->f(Z)V

    .line 10
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->i()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public canGoForward()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearAllCache()V

    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->clearFocus()V

    :cond_0
    return-void
.end method

.method public clearMatches(Lg/a/c/a/k$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    :cond_0
    return-void
.end method

.method public close(Lg/a/c/a/k$d;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    const-string v2, "onExit"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->dispose()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public closeButtonClicked(Landroid/view/MenuItem;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->close(Lg/a/c/a/k$d;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/q;->e:Lio/flutter/embedding/engine/g/c/c;

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;

    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/g/c/c;->b(Lg/a/c/a/m$a;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$f;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$f;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 3
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public findNext(Ljava/lang/Boolean;Lg/a/c/a/k$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findNext(Z)V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getCertificate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCertificateMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCopyBackForwardList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCopyBackForwardList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitTestResult()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getOptions()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;)Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getUpdatedScale()Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollX()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollY()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(Lg/a/c/a/k$d;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSelectedText(Lg/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebViewTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method public goBackButtonClicked(Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->goBack()V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method public goForwardButtonClicked(Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->goForward()V

    return-void
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->isHidden:Z

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->fromActivity:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 6
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public injectCSSCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectCSSCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public injectCSSFileFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectCSSFileFromUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public injectJavascriptFileFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectJavascriptFileFromUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppBrowserActivity"

    const-string p3, "webView is null"

    .line 3
    invoke-interface {p6, p2, p3, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loadFile(Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadFile(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "InAppBrowserActivity"

    const-string v1, "webView is null"

    .line 3
    invoke-interface {p2, v0, v1, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loadFile(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lg/a/c/a/k$d;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadFile(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppBrowserActivity"

    const-string v0, "webView is null"

    .line 6
    invoke-interface {p3, p2, v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "InAppBrowserActivity"

    const-string v1, "webView is null"

    .line 3
    invoke-interface {p2, v0, v1, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lg/a/c/a/k$d;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppBrowserActivity"

    const-string v0, "webView is null"

    .line 6
    invoke-interface {p3, p2, v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$g;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$g;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uuid"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v1, "windowId"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->windowId:Ljava/lang/Integer;

    .line 5
    new-instance v1, Lg/a/c/a/k;

    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview/q;->c:Lg/a/c/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.pichillilorenzo/flutter_inappbrowser_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    .line 6
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    invoke-virtual {v1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 7
    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/n;->activity_web_view:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/m;->webView:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 9
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->windowId:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->windowId:Ljava/lang/Integer;

    .line 10
    iput-object p0, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    .line 11
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    iput-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lg/a/c/a/k;

    const-string v1, "fromActivity"

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->fromActivity:Ljava/lang/String;

    const-string v1, "options"

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "contextMenu"

    .line 14
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 15
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    invoke-direct {v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;-><init>()V

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    .line 16
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    invoke-virtual {v3, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    .line 17
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    invoke-direct {v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;-><init>()V

    .line 18
    invoke-virtual {v3, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    .line 19
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    .line 20
    iput-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 22
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->a()V

    .line 23
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->windowId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 24
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->m:Ljava/util/Map;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->windowId:Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_3

    .line 25
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const-string v1, "isData"

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "headers"

    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->headers:Ljava/util/Map;

    const-string v1, "url"

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->headers:Ljava/util/Map;

    invoke-virtual {v1, p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v1, "data"

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "mimeType"

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "encoding"

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "baseUrl"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "historyUrl"

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    const-string v1, "onBrowserCreated"

    invoke-virtual {v0, v1, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->menu:Landroid/view/Menu;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    .line 3
    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/o;->menu_main:I

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->menu:Landroid/view/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->menu:Landroid/view/Menu;

    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/m;->menu_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->searchView:Landroid/widget/SearchView;

    .line 5
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->searchView:Landroid/widget/SearchView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 6
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->menu:Landroid/view/Menu;

    sget v2, Lcom/pichillilorenzo/flutter_inappwebview/m;->menu_search:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->searchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 9
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$a;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 12
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$b;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 13
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$c;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$c;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->dispose()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->goBack()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->close(Lg/a/c/a/k$d;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 5
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    .line 1
    iget-object v1, v0, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x13

    const/16 v8, 0x15

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "getTitle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "getScale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "evaluateJavascript"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "injectJavascriptFileFromUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "findAllAsync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "loadFile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "loadData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "goBackOrForward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "setContextMenu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x35

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "requestImageRef"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x37

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "setOptions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "resumeTimers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x27

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "getCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3a

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "requestFocusNodeHref"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x36

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "getOriginalUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2b

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "getProgress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "clearSslPreferences"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "pageDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "clearMatches"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "injectCSSFileFromUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "getHitTestResult"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "loadUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "takeScreenshot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x24

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "show"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "hide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "startSafeBrowsing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "getCopyBackForwardList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "injectCSSCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "zoomOut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x33

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "getSelectedText"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "getOptions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "isLoading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "canGoBack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "goForward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "postUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "scrollTo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x22

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "scrollBy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x23

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "isHidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "printCurrentPage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "findNext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "zoomIn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "zoomBy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2a

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "clearFocus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x34

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "clearCache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "reload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "stopLoading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "pageUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "canGoForward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto :goto_1

    :sswitch_33
    const-string v2, "goBack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_34
    const-string v2, "getUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_35
    const-string v2, "canGoBackOrForward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_36
    const-string v2, "getScrollY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x39

    goto :goto_1

    :sswitch_37
    const-string v2, "getScrollX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x38

    goto :goto_1

    :sswitch_38
    const-string v2, "saveWebArchive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x31

    goto :goto_1

    :sswitch_39
    const-string v2, "getContentHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    goto :goto_1

    :sswitch_3a
    const-string v2, "pauseTimers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x26

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v2, 0x0

    const-string v9, "animated"

    const-string v11, "y"

    const-string v12, "x"

    const-string v13, "steps"

    const-string v14, "urlFile"

    const-string v15, "source"

    const-string v3, "headers"

    const-string v5, "url"

    packed-switch v1, :pswitch_data_0

    .line 2
    invoke-interface/range {p2 .. p2}, Lg/a/c/a/k$d;->a()V

    goto/16 :goto_5

    .line 3
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getCertificate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 4
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getScrollY()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 5
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getScrollX()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 6
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->requestImageRef()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 7
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->requestFocusNodeHref()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_5
    const-string v1, "contextMenu"

    .line 8
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 9
    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->setContextMenu(Ljava/util/Map;)V

    .line 10
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 11
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->clearFocus()V

    .line 12
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 13
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->zoomOut()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 14
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->zoomIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_9
    const-string v1, "basename"

    .line 15
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "autoname"

    .line 16
    invoke-virtual {v0, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 17
    invoke-virtual {v7, v1, v0, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->saveWebArchive(Ljava/lang/String;ZLg/a/c/a/k$d;)V

    goto/16 :goto_5

    :pswitch_a
    const-string v1, "top"

    .line 18
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 19
    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->pageUp(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_b
    const-string v1, "bottom"

    .line 20
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 21
    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->pageDown(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 22
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getHitTestResult()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 23
    :pswitch_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    .line 24
    invoke-virtual {v7, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getSelectedText(Lg/a/c/a/k$d;)V

    goto/16 :goto_5

    .line 25
    :cond_1
    invoke-interface {v6, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 26
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getScale()Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 27
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 28
    :pswitch_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_2

    const-string v1, "zoomFactor"

    .line 29
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 30
    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->zoomBy(Ljava/lang/Float;)V

    .line 31
    :cond_2
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 32
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getContentHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 33
    :pswitch_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_3

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->printCurrentPage()V

    .line 35
    :cond_3
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 36
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->resumeTimers()V

    .line 37
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 38
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->pauseTimers()V

    .line 39
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 40
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->onResumeWebView()V

    .line 41
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 42
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->onPauseWebView()V

    .line 43
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 44
    :pswitch_17
    invoke-virtual {v0, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 45
    invoke-virtual {v0, v11}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 46
    invoke-virtual {v0, v9}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v7, v1, v2, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 48
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 49
    :pswitch_18
    invoke-virtual {v0, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 50
    invoke-virtual {v0, v11}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 51
    invoke-virtual {v0, v9}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v7, v1, v2, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 53
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 54
    :pswitch_19
    invoke-virtual {v7, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->clearMatches(Lg/a/c/a/k$d;)V

    goto/16 :goto_5

    :pswitch_1a
    const-string v1, "forward"

    .line 55
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v7, v0, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->findNext(Ljava/lang/Boolean;Lg/a/c/a/k$d;)V

    goto/16 :goto_5

    :pswitch_1b
    const-string v1, "find"

    .line 57
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->findAllAsync(Ljava/lang/String;)V

    .line 59
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 60
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->clearSslPreferences()V

    .line 61
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 62
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->clearCache()V

    .line 63
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 64
    :pswitch_1e
    invoke-virtual {v7, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->startSafeBrowsing(Lg/a/c/a/k$d;)V

    goto/16 :goto_5

    .line 65
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getCopyBackForwardList()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 66
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_21
    const-string v1, "optionsType"

    .line 67
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x2c155812

    if-eq v3, v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "InAppBrowserOptions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v16, -0x1

    :goto_3
    if-eqz v16, :cond_6

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Options "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not available."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppBrowserActivity"

    invoke-interface {v6, v1, v0, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 70
    :cond_6
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    invoke-direct {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;-><init>()V

    const-string v2, "options"

    .line 71
    invoke-virtual {v0, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 72
    invoke-virtual {v1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    .line 73
    invoke-virtual {v7, v1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;Ljava/util/HashMap;)V

    .line 74
    :goto_4
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 75
    :pswitch_22
    invoke-virtual {v7, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->takeScreenshot(Lg/a/c/a/k$d;)V

    goto/16 :goto_5

    .line 76
    :pswitch_23
    iget-boolean v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->isHidden:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 77
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->isLoading()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 78
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->stopLoading()V

    .line 79
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 80
    :pswitch_26
    invoke-virtual {v0, v13}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->canGoBackOrForward(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 81
    :pswitch_27
    invoke-virtual {v0, v13}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->goBackOrForward(I)V

    .line 82
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 83
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->canGoForward()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 84
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->goForward()V

    .line 85
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 86
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->canGoBack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 87
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->goBack()V

    .line 88
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 89
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->reload()V

    .line 90
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 91
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->hide()V

    .line 92
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 93
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->show()V

    .line 94
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 95
    :pswitch_2f
    invoke-virtual {v0, v14}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->injectCSSFileFromUrl(Ljava/lang/String;)V

    .line 97
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 98
    :pswitch_30
    invoke-virtual {v0, v15}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->injectCSSCode(Ljava/lang/String;)V

    .line 100
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 101
    :pswitch_31
    invoke-virtual {v0, v14}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-virtual {v7, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->injectJavascriptFileFromUrl(Ljava/lang/String;)V

    .line 103
    invoke-interface {v6, v10}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 104
    :pswitch_32
    invoke-virtual {v0, v15}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v7, v0, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->evaluateJavascript(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto/16 :goto_5

    .line 106
    :pswitch_33
    invoke-virtual {v7, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->close(Lg/a/c/a/k$d;)V

    goto/16 :goto_5

    .line 107
    :pswitch_34
    invoke-virtual {v0, v5}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 109
    invoke-virtual {v7, v1, v0, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->loadFile(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V

    goto/16 :goto_5

    .line 110
    :cond_7
    invoke-virtual {v7, v1, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->loadFile(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto/16 :goto_5

    :pswitch_35
    const-string v1, "data"

    .line 111
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "mimeType"

    .line 112
    invoke-virtual {v0, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "encoding"

    .line 113
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "baseUrl"

    .line 114
    invoke-virtual {v0, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "historyUrl"

    .line 115
    invoke-virtual {v0, v5}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_5

    .line 117
    :pswitch_36
    invoke-virtual {v0, v5}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "postData"

    invoke-virtual {v0, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v7, v1, v0, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->postUrl(Ljava/lang/String;[BLg/a/c/a/k$d;)V

    goto :goto_5

    .line 118
    :pswitch_37
    invoke-virtual {v0, v5}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 120
    invoke-virtual {v7, v1, v0, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->loadUrl(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V

    goto :goto_5

    .line 121
    :cond_8
    invoke-virtual {v7, v1, v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->loadUrl(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_5

    .line 122
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getProgress()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_5

    .line 123
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getWebViewTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_5

    .line 124
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a88dc9c -> :sswitch_3a
        -0x69b090b6 -> :sswitch_39
        -0x60d253d5 -> :sswitch_38
        -0x4f5bd10b -> :sswitch_37
        -0x4f5bd10a -> :sswitch_36
        -0x4e0b0fbd -> :sswitch_35
        -0x4a7789c7 -> :sswitch_34
        -0x4a012e11 -> :sswitch_33
        -0x3f9d4d33 -> :sswitch_32
        -0x3b59fa76 -> :sswitch_31
        -0x38833526 -> :sswitch_30
        -0x37b57e67 -> :sswitch_2f
        -0x37b237d3 -> :sswitch_2e
        -0x2d410ecb -> :sswitch_2d
        -0x2d106975 -> :sswitch_2c
        -0x29807c76 -> :sswitch_2b
        -0x29807ba8 -> :sswitch_2a
        -0x287e8fb4 -> :sswitch_29
        -0x28785945 -> :sswitch_28
        -0x2064708c -> :sswitch_27
        -0x17f88ffc -> :sswitch_26
        -0x17f88dd8 -> :sswitch_25
        -0x17518f51 -> :sswitch_24
        -0x12f8b743 -> :sswitch_23
        -0x12e5de21 -> :sswitch_22
        -0xe7dd74e -> :sswitch_21
        -0xcac3d98 -> :sswitch_20
        -0x7a08722 -> :sswitch_1f
        -0x68ee185 -> :sswitch_1e
        -0x32ce041 -> :sswitch_1d
        -0x1f169cf -> :sswitch_1c
        -0x10edb0a -> :sswitch_1b
        0x30dd42 -> :sswitch_1a
        0x35dafd -> :sswitch_19
        0x5a5ddf8 -> :sswitch_18
        0x65825f6 -> :sswitch_17
        0xb9ed94d -> :sswitch_16
        0x141096a9 -> :sswitch_15
        0x1d5dd38c -> :sswitch_14
        0x2c211a37 -> :sswitch_13
        0x30b32a26 -> :sswitch_12
        0x33331bd1 -> :sswitch_11
        0x3e28c0f9 -> :sswitch_10
        0x402effa3 -> :sswitch_f
        0x410b6ca8 -> :sswitch_e
        0x4a4dcef6 -> :sswitch_d
        0x4e358861 -> :sswitch_c
        0x5aa2005b -> :sswitch_b
        0x66c50fdc -> :sswitch_a
        0x6714ace7 -> :sswitch_9
        0x6a1709ec -> :sswitch_8
        0x6bed5233 -> :sswitch_7
        0x6dfa45b0 -> :sswitch_6
        0x6dfb4b82 -> :sswitch_5
        0x72420634 -> :sswitch_4
        0x72be6f8b -> :sswitch_3
        0x738236e6 -> :sswitch_2
        0x7520af94 -> :sswitch_1
        0x7531c8a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method public onPauseWebView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResumeWebView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public pageDown(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pageUp(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pauseTimers()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_0
    return-void
.end method

.method public postUrl(Ljava/lang/String;[BLg/a/c/a/k$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->postUrl(Ljava/lang/String;[BLg/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppBrowserActivity"

    const-string v0, "webView is null"

    .line 3
    invoke-interface {p3, p2, v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public printCurrentPage()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->printCurrentPage()V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->reload()V

    :cond_0
    return-void
.end method

.method public reloadButtonClicked(Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->reload()V

    return-void
.end method

.method public requestFocusNodeHref()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestFocusNodeHref()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestImageRef()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestImageRef()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_0
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$e;

    invoke-direct {v1, p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$e;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;Lg/a/c/a/k$d;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-interface {p3, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public setContextMenu(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1, v0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;Ljava/util/HashMap;)V

    const-string v0, "hidden"

    .line 4
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->hide()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->show()V

    :cond_1
    :goto_0
    const-string v0, "progressBar"

    .line 8
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->h:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->h:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_3
    :goto_1
    const-string v0, "hideTitleBar"

    .line 12
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->f:Ljava/lang/Boolean;

    if-eq v0, v3, :cond_4

    .line 13
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->f(Z)V

    :cond_4
    const-string v0, "toolbarTop"

    .line 14
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->b:Ljava/lang/Boolean;

    if-eq v0, v3, :cond_6

    .line 15
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->i()V

    goto :goto_2

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->m()V

    :cond_6
    :goto_2
    const-string v0, "toolbarTopBackgroundColor"

    .line 18
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->c:Ljava/lang/String;

    if-eq v0, v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const-string v0, "toolbarTopFixedTitle"

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    if-eq v0, v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 21
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    :cond_8
    const-string v0, "hideUrlBar"

    .line 22
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->e:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->e:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_a

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 24
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->menu:Landroid/view/Menu;

    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/m;->menu_search:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 25
    :cond_9
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->menu:Landroid/view/Menu;

    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/m;->menu_search:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 26
    :cond_a
    :goto_3
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    return-void
.end method

.method public shareButtonClicked(Landroid/view/MenuItem;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Share"

    .line 4
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->isHidden:Z

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    return-void
.end method

.method public startSafeBrowsing(Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const-string v0, "START_SAFE_BROWSING"

    .line 2
    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$d;

    invoke-direct {v1, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$d;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;Lg/a/c/a/k$d;)V

    invoke-static {v0, v1}, Landroidx/webkit/b;->a(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method public takeScreenshot(Lg/a/c/a/k$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->takeScreenshot(Lg/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public zoomBy(Ljava/lang/Float;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->zoomBy(F)V

    :cond_0
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
