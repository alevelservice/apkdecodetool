.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;
.super Ljava/lang/Object;
.source "InAppWebViewClient.java"

# interfaces
.implements Lg/a/c/a/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Landroid/webkit/HttpAuthHandler;

.field final synthetic g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/HttpAuthHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->d:Ljava/lang/String;

    iput p6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->e:I

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->f:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->f:Landroid/webkit/HttpAuthHandler;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->b(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 9

    if-eqz p1, :cond_5

    .line 1
    check-cast p1, Ljava/util/Map;

    const-string v0, "action"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->a(Ljava/util/List;)Ljava/util/List;

    .line 5
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->a(I)I

    .line 6
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->f:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->b()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a(Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->d:Ljava/lang/String;

    iget v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->a(Ljava/util/List;)Ljava/util/List;

    .line 9
    :cond_1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 10
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/c/a;

    .line 11
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->f:Landroid/webkit/HttpAuthHandler;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/c/a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->f:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    :goto_0
    return-void

    :cond_3
    const-string v0, "username"

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "password"

    .line 14
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    const-string v1, "permanentPersistence"

    .line 15
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a(Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->d:Ljava/lang/String;

    iget p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->f:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {p1, v0, v8}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->f:Landroid/webkit/HttpAuthHandler;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f$b;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->a(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
