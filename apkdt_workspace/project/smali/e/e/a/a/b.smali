.class public Le/e/a/a/b;
.super Landroid/webkit/WebViewClient;
.source "interceptWebViewClient.java"


# instance fields
.field private a:Z

.field b:Z

.field private c:Z

.field private d:Landroid/os/Handler;

.field private e:Landroid/webkit/WebView;

.field private f:Le/e/a/a/c;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Le/e/a/a/c;Landroid/webkit/WebView;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/a/c;",
            "Landroid/webkit/WebView;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/e/a/a/b;->b:Z

    .line 3
    iput-boolean v0, p0, Le/e/a/a/b;->c:Z

    .line 4
    iput-boolean v0, p0, Le/e/a/a/b;->h:Z

    .line 5
    iput-object p1, p0, Le/e/a/a/b;->f:Le/e/a/a/c;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Le/e/a/a/b;->d:Landroid/os/Handler;

    .line 7
    iput-object p2, p0, Le/e/a/a/b;->e:Landroid/webkit/WebView;

    .line 8
    iput-object p3, p0, Le/e/a/a/b;->g:Ljava/util/List;

    .line 9
    iput-object p4, p0, Le/e/a/a/b;->i:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Le/e/a/a/b;->j:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Le/e/a/a/b;->f:Le/e/a/a/c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/example/native_webview/WebViewActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/example/native_webview/WebViewActivity;->getBinding()Lcom/example/native_webview/j/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Le/e/a/a/b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/example/errorWidget/a;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/e/a/a/b;->c:Z

    .line 5
    invoke-direct {p0}, Le/e/a/a/b;->b()V

    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 3

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "\';"

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.appVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/e/a/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.appVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/e/a/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Le/e/a/a/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Le/e/a/a/b;->c:Z

    return p0
.end method

.method static synthetic b(Le/e/a/a/b;)Le/e/a/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Le/e/a/a/b;->f:Le/e/a/a/c;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 2
    iget-object v0, p0, Le/e/a/a/b;->e:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Le/e/a/a/b;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Le/e/a/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/e/a/a/b;->a()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/e/a/a/b;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/e/a/a/b;->b:Z

    .line 3
    iget-object p1, p0, Le/e/a/a/b;->f:Le/e/a/a/c;

    invoke-virtual {p1}, Le/e/a/a/c;->h()V

    .line 4
    iget-boolean p1, p0, Le/e/a/a/b;->c:Z

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0}, Le/e/a/a/b;->c()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Le/e/a/a/b;->a:Z

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 2
    iget-boolean p2, p0, Le/e/a/a/b;->h:Z

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Le/e/a/a/b;->f:Le/e/a/a/c;

    invoke-virtual {p2}, Le/e/a/a/c;->k()V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Le/e/a/a/b;->h:Z

    .line 5
    :cond_0
    iput-boolean p3, p0, Le/e/a/a/b;->b:Z

    .line 6
    new-instance p2, Le/e/a/a/b$a;

    invoke-direct {p2, p0}, Le/e/a/a/b$a;-><init>(Le/e/a/a/b;)V

    .line 7
    invoke-direct {p0, p1}, Le/e/a/a/b;->a(Landroid/webkit/WebView;)V

    .line 8
    iget-object p1, p0, Le/e/a/a/b;->d:Landroid/os/Handler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    :cond_1
    iput-boolean p3, p0, Le/e/a/a/b;->a:Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/e/a/a/b;->a()V

    .line 2
    iget-object p1, p0, Le/e/a/a/b;->f:Le/e/a/a/c;

    invoke-virtual {p1}, Le/e/a/a/c;->h()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/e/a/a/b;->a()V

    .line 2
    iget-object v0, p0, Le/e/a/a/b;->f:Le/e/a/a/c;

    invoke-virtual {v0}, Le/e/a/a/c;->h()V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 6
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Le/e/a/a/b;->a:Z

    .line 8
    iget-object v1, p0, Le/e/a/a/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object p1, p0, Le/e/a/a/b;->f:Le/e/a/a/c;

    invoke-virtual {p1}, Le/e/a/a/c;->k()V

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/e/a/a/b;->a:Z

    .line 2
    iget-object v1, p0, Le/e/a/a/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, p0, Le/e/a/a/b;->f:Le/e/a/a/c;

    invoke-virtual {p1}, Le/e/a/a/c;->k()V

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0
.end method
