.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;
.super Ljava/lang/Object;
.source "InAppWebViewClient.java"

# interfaces
.implements Lg/a/c/a/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Landroid/net/http/SslError;

.field final synthetic d:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/SslErrorHandler;Landroid/webkit/WebView;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->d:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->a:Landroid/webkit/SslErrorHandler;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->b:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->c:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->d:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->a:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->c:Landroid/net/http/SslError;

    invoke-static {v0, v1, v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->b(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    check-cast p1, Ljava/util/Map;

    const-string v0, "action"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->d:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->a:Landroid/webkit/SslErrorHandler;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$c;->c:Landroid/net/http/SslError;

    invoke-static {p1, v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->a(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
