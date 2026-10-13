.class public Lio/flutter/plugins/a/d;
.super Ljava/lang/Object;
.source "ConnectivityPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;


# instance fields
.field private e:Lg/a/c/a/k;

.field private f:Lg/a/c/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 10
    iget-object v0, p0, Lio/flutter/plugins/a/d;->e:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 11
    iget-object v0, p0, Lio/flutter/plugins/a/d;->f:Lg/a/c/a/d;

    invoke-virtual {v0, v1}, Lg/a/c/a/d;->a(Lg/a/c/a/d$d;)V

    .line 12
    iput-object v1, p0, Lio/flutter/plugins/a/d;->e:Lg/a/c/a/k;

    .line 13
    iput-object v1, p0, Lio/flutter/plugins/a/d;->f:Lg/a/c/a/d;

    return-void
.end method

.method private a(Lg/a/c/a/c;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "plugins.flutter.io/connectivity"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/a/d;->e:Lg/a/c/a/k;

    .line 2
    new-instance v0, Lg/a/c/a/d;

    const-string v1, "plugins.flutter.io/connectivity_status"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/d;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/a/d;->f:Lg/a/c/a/d;

    const-string p1, "connectivity"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 5
    new-instance v1, Lio/flutter/plugins/a/a;

    invoke-direct {v1, p1, v0}, Lio/flutter/plugins/a/a;-><init>(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;)V

    .line 6
    new-instance p1, Lio/flutter/plugins/a/c;

    invoke-direct {p1, v1}, Lio/flutter/plugins/a/c;-><init>(Lio/flutter/plugins/a/a;)V

    .line 7
    new-instance v0, Lio/flutter/plugins/a/b;

    invoke-direct {v0, p2, v1}, Lio/flutter/plugins/a/b;-><init>(Landroid/content/Context;Lio/flutter/plugins/a/a;)V

    .line 8
    iget-object p2, p0, Lio/flutter/plugins/a/d;->e:Lg/a/c/a/k;

    invoke-virtual {p2, p1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 9
    iget-object p1, p0, Lio/flutter/plugins/a/d;->f:Lg/a/c/a/d;

    invoke-virtual {p1, v0}, Lg/a/c/a/d;->a(Lg/a/c/a/d$d;)V

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/a/d;->a(Lg/a/c/a/c;Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/a/d;->a()V

    return-void
.end method
