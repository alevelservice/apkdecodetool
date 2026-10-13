.class public abstract Le/e/a/a/c;
.super Landroidx/fragment/app/Fragment;
.source "WebViewFragment.java"

# interfaces
.implements Le/e/a/a/d;


# instance fields
.field private e:Lcom/example/native_webview/WebViewActivity;

.field private f:Lcom/example/native_webview/j/g;

.field private g:Lcom/example/native_webview/c;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/lang/Boolean;

.field protected n:Ljava/lang/String;

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/e/a/a/c;->o:Ljava/lang/Boolean;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Le/e/a/a/c;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Le/e/a/a/c;)Lcom/example/native_webview/WebViewActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Le/e/a/a/c;->e:Lcom/example/native_webview/WebViewActivity;

    return-object p0
.end method

.method private a(Landroidx/fragment/app/b;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/example/native_webview/WebViewActivity;

    .line 4
    invoke-virtual {v0, p1}, Lcom/example/native_webview/WebViewActivity;->addDialogFragment(Landroidx/fragment/app/b;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Le/e/a/a/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Le/e/a/a/c;->p:Ljava/lang/String;

    return-object p0
.end method

.method private l()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 2
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v8, Le/e/a/a/b;

    iget-object v5, p0, Le/e/a/a/c;->l:Ljava/util/List;

    iget-object v6, p0, Le/e/a/a/c;->k:Ljava/lang/String;

    iget-object v7, p0, Le/e/a/a/c;->n:Ljava/lang/String;

    move-object v2, v8

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Le/e/a/a/b;-><init>(Le/e/a/a/c;Landroid/webkit/WebView;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 5
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 6
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v2, Le/e/a/a/a;

    iget-object v3, p0, Le/e/a/a/c;->j:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Le/e/a/a/a;-><init>(Le/e/a/a/d;Ljava/lang/String;)V

    const-string v3, "webViewBridgeAndroid"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 8
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v2, Le/e/a/a/c$a;

    invoke-direct {v2, p0}, Le/e/a/a/c$a;-><init>(Le/e/a/a/c;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 10
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 11
    :cond_0
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v1, Le/e/a/a/c$b;

    invoke-direct {v1, p0}, Le/e/a/a/c$b;-><init>(Le/e/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 5
    iput-object p1, p0, Le/e/a/a/c;->p:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Le/e/a/a/c;->g()Lcom/example/native_webview/j/g;

    move-result-object p1

    iget-object p1, p1, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v0, Le/e/a/a/c$h;

    invoke-direct {v0, p0}, Le/e/a/a/c$h;-><init>(Le/e/a/a/c;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Le/e/a/a/c;->g()Lcom/example/native_webview/j/g;

    move-result-object v0

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v1, Le/e/a/a/c$g;

    invoke-direct {v1, p0}, Le/e/a/a/c$g;-><init>(Le/e/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/e/a/a/c;->g()Lcom/example/native_webview/j/g;

    move-result-object v0

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v1, Le/e/a/a/c$c;

    invoke-direct {v1, p0}, Le/e/a/a/c$c;-><init>(Le/e/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/e/a/a/c;->g()Lcom/example/native_webview/j/g;

    move-result-object v0

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v1, Le/e/a/a/c$f;

    invoke-direct {v1, p0}, Le/e/a/a/c$f;-><init>(Le/e/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/e/a/a/c;->g()Lcom/example/native_webview/j/g;

    move-result-object v0

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v1, Le/e/a/a/c$d;

    invoke-direct {v1, p0}, Le/e/a/a/c$d;-><init>(Le/e/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/e/a/a/c;->g()Lcom/example/native_webview/j/g;

    move-result-object v0

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    new-instance v1, Le/e/a/a/c$e;

    invoke-direct {v1, p0}, Le/e/a/a/c$e;-><init>(Le/e/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected g()Lcom/example/native_webview/j/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    return-object v0
.end method

.method h()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/e/a/a/c;->g:Lcom/example/native_webview/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/b;->g()V

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/e/a/a/c;->o:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/e/a/a/c;->o:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/e/a/a/c;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->v:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->v:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->v:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 7
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->v:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method k()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/a/c;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/example/native_webview/c;->i()Lcom/example/native_webview/c;

    move-result-object v0

    iput-object v0, p0, Le/e/a/a/c;->g:Lcom/example/native_webview/c;

    .line 3
    iget-object v0, p0, Le/e/a/a/c;->g:Lcom/example/native_webview/c;

    invoke-direct {p0, v0}, Le/e/a/a/c;->a(Landroidx/fragment/app/b;)V

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/e/a/a/c;->o:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/example/native_webview/WebViewActivity;

    iput-object v0, p0, Le/e/a/a/c;->e:Lcom/example/native_webview/WebViewActivity;

    .line 2
    sget v0, Lcom/example/native_webview/h;->fragment_webview:I

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/g;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/example/native_webview/j/g;

    iput-object p1, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    .line 3
    invoke-virtual {p0, p3}, Le/e/a/a/c;->a(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Le/e/a/a/c;->j()V

    .line 5
    invoke-direct {p0}, Le/e/a/a/c;->l()V

    .line 6
    invoke-virtual {p0}, Le/e/a/a/c;->i()V

    .line 7
    iget-object p1, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v2, "window.webViewJSBridge.onPause()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    const-string v1, "javascript:window.webViewJSBridge.onPause()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v2, "window.webViewJSBridge.onResume()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/e/a/a/c;->f:Lcom/example/native_webview/j/g;

    iget-object v0, v0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    const-string v1, "javascript:window.webViewJSBridge.onResume()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
