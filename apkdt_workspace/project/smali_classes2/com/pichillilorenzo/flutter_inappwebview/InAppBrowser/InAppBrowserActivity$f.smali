.class Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$f;
.super Landroid/webkit/WebViewClient;
.source "InAppBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$f;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$f;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->dispose()V

    .line 2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$f;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->destroy()V

    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$f;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    return-void
.end method
