.class Lio/flutter/plugins/f/d$b;
.super Landroidx/webkit/WebViewClientCompat;
.source "FlutterWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/f/d;->b()Landroidx/webkit/WebViewClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lio/flutter/plugins/f/d;


# direct methods
.method constructor <init>(Lio/flutter/plugins/f/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/f/d$b;->b:Lio/flutter/plugins/f/d;

    invoke-direct {p0}, Landroidx/webkit/WebViewClientCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroidx/webkit/WebResourceErrorCompat;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RequiresFeature"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/f/d$b;->b:Lio/flutter/plugins/f/d;

    .line 2
    invoke-virtual {p3}, Landroidx/webkit/WebResourceErrorCompat;->b()I

    move-result v0

    invoke-virtual {p3}, Landroidx/webkit/WebResourceErrorCompat;->a()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1, v0, p3, p2}, Lio/flutter/plugins/f/d;->a(Lio/flutter/plugins/f/d;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/f/d$b;->b:Lio/flutter/plugins/f/d;

    invoke-static {v0, p1, p2}, Lio/flutter/plugins/f/d;->b(Lio/flutter/plugins/f/d;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lio/flutter/plugins/f/d$b;->b:Lio/flutter/plugins/f/d;

    invoke-static {p3, p1, p2}, Lio/flutter/plugins/f/d;->a(Lio/flutter/plugins/f/d;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/f/d$b;->b:Lio/flutter/plugins/f/d;

    invoke-static {p1, p2, p3, p4}, Lio/flutter/plugins/f/d;->a(Lio/flutter/plugins/f/d;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/f/d$b;->b:Lio/flutter/plugins/f/d;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugins/f/d;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/f/d$b;->b:Lio/flutter/plugins/f/d;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugins/f/d;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
