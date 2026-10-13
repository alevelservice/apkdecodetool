.class public Lcom/pichillilorenzo/flutter_inappwebview/e;
.super Ljava/lang/Object;
.source "HeadlessInAppWebViewManager.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field public e:Lg/a/c/a/k;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/c/a/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/e;->f:Ljava/util/Map;

    .line 3
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "com.pichillilorenzo/flutter_headless_inappwebview"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/e;->e:Lg/a/c/a/k;

    .line 4
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/e;->e:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/e;->e:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/q;->c:Lg/a/c/a/c;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;-><init>(Lg/a/c/a/c;Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/e;->f:Ljava/util/Map;

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->dispose()V

    .line 5
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    const-string v1, "uuid"

    .line 2
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x15fc9dc4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x1b13ce41

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "disposeHeadlessWebView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "createHeadlessWebView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    .line 4
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/e;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string v2, "params"

    .line 7
    invoke-virtual {p1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview/e;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
