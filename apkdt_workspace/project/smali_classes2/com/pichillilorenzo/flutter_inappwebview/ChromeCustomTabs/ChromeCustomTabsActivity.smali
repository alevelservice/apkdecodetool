.class public Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;
.super Landroid/app/Activity;
.source "ChromeCustomTabsActivity.java"

# interfaces
.implements Lg/a/c/a/k$c;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final LOG_TAG:Ljava/lang/String; = "CustomTabsActivity"


# instance fields
.field protected final CHROME_CUSTOM_TAB_REQUEST_CODE:I

.field public builder:Landroidx/browser/customtabs/CustomTabsIntent$a;

.field public channel:Lg/a/c/a/k;

.field public customTabActivityHelper:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;

.field public customTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

.field protected onChromeSafariBrowserCompletedInitialLoad:Z

.field protected onChromeSafariBrowserOpened:Z

.field public options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

.field public uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->CHROME_CUSTOM_TAB_REQUEST_CODE:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->onChromeSafariBrowserOpened:Z

    .line 4
    iput-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->onChromeSafariBrowserCompletedInitialLoad:Z

    return-void
.end method

.method private a(I)Landroid/app/PendingIntent;
    .locals 4

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ActionBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_ID"

    .line 20
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->uuid:Ljava/lang/String;

    const-string v3, "com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_UUID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 23
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroidx/browser/customtabs/CustomTabsIntent;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->builder:Landroidx/browser/customtabs/CustomTabsIntent$a;

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$a;->a()Landroidx/browser/customtabs/CustomTabsIntent$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->builder:Landroidx/browser/customtabs/CustomTabsIntent$a;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$a;->a(I)Landroidx/browser/customtabs/CustomTabsIntent$a;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->builder:Landroidx/browser/customtabs/CustomTabsIntent$a;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$a;->b(Z)Landroidx/browser/customtabs/CustomTabsIntent$a;

    .line 6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->builder:Landroidx/browser/customtabs/CustomTabsIntent$a;

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$a;->c()Landroidx/browser/customtabs/CustomTabsIntent$a;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->builder:Landroidx/browser/customtabs/CustomTabsIntent$a;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$a;->a(Z)Landroidx/browser/customtabs/CustomTabsIntent$a;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "id"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "label"

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->builder:Landroidx/browser/customtabs/CustomTabsIntent$a;

    invoke-direct {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->a(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$a;->a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$a;

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;Landroidx/browser/customtabs/CustomTabsIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->a(Landroidx/browser/customtabs/CustomTabsIntent;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->customTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->channel:Lg/a/c/a/k;

    const-string v2, "onChromeSafariBrowserClosed"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->close()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/pichillilorenzo/flutter_inappwebview/n;->chrome_custom_tabs_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uuid"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->uuid:Ljava/lang/String;

    .line 5
    new-instance v0, Lg/a/c/a/k;

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/q;->c:Lg/a/c/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.pichillilorenzo/flutter_chromesafaribrowser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->channel:Lg/a/c/a/k;

    .line 6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->channel:Lg/a/c/a/k;

    invoke-virtual {v0, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    const-string v0, "url"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    invoke-direct {v1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;-><init>()V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    .line 9
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    const-string v2, "options"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;

    const-string v1, "menuItemList"

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 11
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;

    invoke-direct {v1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;-><init>()V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->customTabActivityHelper:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;

    .line 12
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->customTabActivityHelper:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$a;

    invoke-direct {v2, p0, v0, p1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;Ljava/lang/String;Ljava/util/List;Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;)V

    invoke-virtual {v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->a(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b$a;)V

    .line 13
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->customTabActivityHelper:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;

    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity$b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;)V

    invoke-virtual {p1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->a(Landroidx/browser/customtabs/c;)V

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5a5ddf8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->onStop()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 5
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->close()V

    .line 6
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->customTabActivityHelper:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;

    invoke-virtual {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;->customTabActivityHelper:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;

    invoke-virtual {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/b;->b(Landroid/app/Activity;)V

    return-void
.end method
