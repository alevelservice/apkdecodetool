.class Lio/flutter/plugins/urllauncher/b;
.super Ljava/lang/Object;
.source "UrlLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/urllauncher/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/urllauncher/b;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Landroid/os/Bundle;ZZZ)Lio/flutter/plugins/urllauncher/b$a;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/b;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 8
    sget-object p1, Lio/flutter/plugins/urllauncher/b$a;->NO_ACTIVITY:Lio/flutter/plugins/urllauncher/b$a;

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 9
    invoke-static {v0, p1, p4, p5, p2}, Lio/flutter/plugins/urllauncher/WebViewActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "com.android.browser.headers"

    .line 12
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 13
    :goto_0
    :try_start_0
    iget-object p2, p0, Lio/flutter/plugins/urllauncher/b;->b:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    sget-object p1, Lio/flutter/plugins/urllauncher/b$a;->OK:Lio/flutter/plugins/urllauncher/b$a;

    return-object p1

    .line 15
    :catch_0
    sget-object p1, Lio/flutter/plugins/urllauncher/b$a;->ACTIVITY_NOT_FOUND:Lio/flutter/plugins/urllauncher/b$a;

    return-object p1
.end method

.method a()V
    .locals 3

    .line 16
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/b;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lio/flutter/plugins/urllauncher/WebViewActivity;->ACTION_CLOSE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method a(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/b;->b:Landroid/app/Activity;

    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/b;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{com.android.fallback/com.android.fallback.Fallback}"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
