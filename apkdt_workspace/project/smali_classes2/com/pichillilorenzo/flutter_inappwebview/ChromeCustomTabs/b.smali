.class public Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;
.super Ljava/lang/Object;
.source "CustomTabActivityHelper.java"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/browser/customtabs/CustomTabsSession;

.field private b:Landroidx/browser/customtabs/CustomTabsClient;

.field private c:Landroidx/browser/customtabs/d;

.field private d:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b$a;

.field private e:Landroidx/browser/customtabs/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2
    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->b:Landroidx/browser/customtabs/CustomTabsClient;

    .line 16
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->a:Landroidx/browser/customtabs/CustomTabsSession;

    .line 17
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->d:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->b:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/d;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/d;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/e;)V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->c:Landroidx/browser/customtabs/d;

    .line 8
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->c:Landroidx/browser/customtabs/d;

    invoke-static {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/d;)Z

    return-void
.end method

.method public a(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    .line 12
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->b:Landroidx/browser/customtabs/CustomTabsClient;

    .line 13
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->b:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->a(J)Z

    .line 14
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->d:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b$a;->b()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/browser/customtabs/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->e:Landroidx/browser/customtabs/c;

    return-void
.end method

.method public a(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->d:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b$a;

    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->b:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->b()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 11
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsSession;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public b()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->b:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->a:Landroidx/browser/customtabs/CustomTabsSession;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->a:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->e:Landroidx/browser/customtabs/c;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->a(Landroidx/browser/customtabs/c;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->a:Landroidx/browser/customtabs/CustomTabsSession;

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->a:Landroidx/browser/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->c:Landroidx/browser/customtabs/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->b:Landroidx/browser/customtabs/CustomTabsClient;

    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->a:Landroidx/browser/customtabs/CustomTabsSession;

    .line 5
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->c:Landroidx/browser/customtabs/d;

    return-void
.end method
