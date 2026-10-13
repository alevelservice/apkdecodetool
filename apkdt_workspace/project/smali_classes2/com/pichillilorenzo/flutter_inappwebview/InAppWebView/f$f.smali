.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;
.super Ljava/lang/Object;
.source "InAppWebViewClient.java"

# interfaces
.implements Lg/a/c/a/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Landroid/os/Message;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/os/Message;Landroid/os/Message;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->d:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->a:Landroid/os/Message;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->b:Landroid/os/Message;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->d:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->b:Landroid/os/Message;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->a:Landroid/os/Message;

    invoke-static {v0, v1, v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->b(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

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

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->b:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->a:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->d:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->b:Landroid/os/Message;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$f;->a:Landroid/os/Message;

    invoke-static {p1, v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->a(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
