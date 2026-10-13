.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;
.super Ljava/lang/Object;
.source "InAppWebViewClient.java"

# interfaces
.implements Lg/a/c/a/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SafeBrowsingResponse;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Landroid/webkit/WebResourceRequest;

.field final synthetic d:I

.field final synthetic e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/SafeBrowsingResponse;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->a:Landroid/webkit/SafeBrowsingResponse;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->b:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->c:Landroid/webkit/WebResourceRequest;

    iput p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 11
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->c:Landroid/webkit/WebResourceRequest;

    iget v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->d:I

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->a:Landroid/webkit/SafeBrowsingResponse;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->b(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    check-cast p1, Ljava/util/Map;

    const-string v0, "report"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "action"

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->a:Landroid/webkit/SafeBrowsingResponse;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/SafeBrowsingResponse;->showInterstitial(Z)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->a:Landroid/webkit/SafeBrowsingResponse;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/SafeBrowsingResponse;->proceed(Z)V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->a:Landroid/webkit/SafeBrowsingResponse;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/SafeBrowsingResponse;->backToSafety(Z)V

    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->c:Landroid/webkit/WebResourceRequest;

    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->d:I

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$e;->a:Landroid/webkit/SafeBrowsingResponse;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->a(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
