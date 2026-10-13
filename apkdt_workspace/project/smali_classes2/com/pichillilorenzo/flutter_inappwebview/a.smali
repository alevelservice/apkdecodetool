.class public Lcom/pichillilorenzo/flutter_inappwebview/a;
.super Ljava/lang/Object;
.source "ChromeSafariBrowserManager.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field public e:Lg/a/c/a/k;


# direct methods
.method public constructor <init>(Lg/a/c/a/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "com.pichillilorenzo/flutter_chromesafaribrowser"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/a;->e:Lg/a/c/a/k;

    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/a;->e:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/a;->e:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Integer;Lg/a/c/a/k$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Lg/a/c/a/k$d;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fromActivity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    .line 3
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "isData"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "uuid"

    .line 5
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "options"

    .line 6
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    check-cast p5, Ljava/io/Serializable;

    const-string p4, "menuItemList"

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8
    check-cast p7, Ljava/io/Serializable;

    const-string p4, "headers"

    invoke-virtual {v0, p4, p7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p4, "contextMenu"

    .line 9
    invoke-virtual {v0, p4, p9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p10, :cond_0

    .line 10
    invoke-virtual {p10}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    :goto_0
    const-string p5, "windowId"

    invoke-virtual {v0, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->c(Landroid/app/Activity;)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    .line 12
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->c(Landroid/app/Activity;)Z

    move-result p4

    if-nez p4, :cond_3

    if-eqz p6, :cond_3

    .line 14
    invoke-virtual {v0, p3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_2

    .line 15
    invoke-virtual {v0, p2, p8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    .line 16
    :cond_2
    new-instance p3, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    invoke-direct {p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;-><init>()V

    invoke-virtual {p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a()Ljava/util/Map;

    move-result-object p3

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 17
    :goto_1
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :cond_3
    move-object p2, p5

    :goto_2
    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p11, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string p1, "ChromeBrowserManager"

    const-string p2, "No WebView fallback declared."

    .line 21
    invoke-interface {p11, p1, p2, p5}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 12

    .line 1
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    const-string v0, "uuid"

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x34264a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x1a7eccbf

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "isAvailable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "open"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    .line 4
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->c(Landroid/app/Activity;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string v0, "url"

    .line 6
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "options"

    .line 7
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/HashMap;

    const-string v0, "menuItemList"

    .line 8
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const-string v0, "uuidFallback"

    .line 9
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "headersFallback"

    .line 10
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    const-string v0, "optionsFallback"

    .line 11
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/HashMap;

    const-string v0, "contextMenuFallback"

    .line 12
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/HashMap;

    const-string v0, "windowIdFallback"

    .line 13
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/lang/Integer;

    move-object v0, p0

    move-object v11, p2

    .line 14
    invoke-virtual/range {v0 .. v11}, Lcom/pichillilorenzo/flutter_inappwebview/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Integer;Lg/a/c/a/k$d;)V

    :goto_2
    return-void
.end method
