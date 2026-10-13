.class Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;
.super Landroidx/browser/customtabs/c;
.source "ChromeCustomTabsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;->a:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;

    invoke-direct {p0}, Landroidx/browser/customtabs/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 4

    const-string p2, "uuid"

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;->a:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;

    iget-boolean v2, v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->onChromeSafariBrowserOpened:Z

    if-nez v2, :cond_0

    .line 2
    iput-boolean v0, v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->onChromeSafariBrowserOpened:Z

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;->a:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;

    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->uuid:Ljava/lang/String;

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;->a:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;

    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->channel:Lg/a/c/a/k;

    const-string v3, "onChromeSafariBrowserOpened"

    invoke-virtual {v2, v3, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;->a:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;

    iget-boolean v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->onChromeSafariBrowserCompletedInitialLoad:Z

    if-nez v1, :cond_1

    .line 7
    iput-boolean v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->onChromeSafariBrowserCompletedInitialLoad:Z

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;->a:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->uuid:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;->a:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;

    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->channel:Lg/a/c/a/k;

    const-string v0, "onChromeSafariBrowserCompletedInitialLoad"

    invoke-virtual {p2, v0, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
