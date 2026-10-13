.class Lio/flutter/plugins/a/b;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityBroadcastReceiver.java"

# interfaces
.implements Lg/a/c/a/d$d;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lio/flutter/plugins/a/a;

.field private g:Lg/a/c/a/d$b;

.field private h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugins/a/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/flutter/plugins/a/b;->h:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lio/flutter/plugins/a/b;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lio/flutter/plugins/a/b;->f:Lio/flutter/plugins/a/a;

    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/a/b;->b()V

    return-void
.end method

.method static synthetic b(Lio/flutter/plugins/a/b;)Lio/flutter/plugins/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/a/b;->f:Lio/flutter/plugins/a/a;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 2
    new-instance v0, Lio/flutter/plugins/a/b$b;

    invoke-direct {v0, p0}, Lio/flutter/plugins/a/b$b;-><init>(Lio/flutter/plugins/a/b;)V

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/a/b;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lio/flutter/plugins/a/b;)Lg/a/c/a/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/a/b;->g:Lg/a/c/a/d$b;

    return-object p0
.end method


# virtual methods
.method a()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 9
    new-instance v0, Lio/flutter/plugins/a/b$a;

    invoke-direct {v0, p0}, Lio/flutter/plugins/a/b$a;-><init>(Lio/flutter/plugins/a/b;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lio/flutter/plugins/a/b;->f:Lio/flutter/plugins/a/a;

    invoke-virtual {p1}, Lio/flutter/plugins/a/a;->a()Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p0}, Lio/flutter/plugins/a/b;->a()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/a/b;->e:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lg/a/c/a/d$b;)V
    .locals 1

    .line 2
    iput-object p2, p0, Lio/flutter/plugins/a/b;->g:Lg/a/c/a/d$b;

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lio/flutter/plugins/a/b;->f:Lio/flutter/plugins/a/a;

    invoke-virtual {p1}, Lio/flutter/plugins/a/a;->a()Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p0}, Lio/flutter/plugins/a/b;->a()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/a/b;->e:Landroid/content/Context;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/a/b;->g:Lg/a/c/a/d$b;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lio/flutter/plugins/a/b;->f:Lio/flutter/plugins/a/a;

    invoke-virtual {p2}, Lio/flutter/plugins/a/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/a/c/a/d$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
