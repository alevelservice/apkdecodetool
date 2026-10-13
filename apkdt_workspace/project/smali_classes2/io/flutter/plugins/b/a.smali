.class public Lio/flutter/plugins/b/a;
.super Ljava/lang/Object;
.source "DeviceInfoPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;


# instance fields
.field e:Lg/a/c/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/b/a;->e:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 6
    iput-object v1, p0, Lio/flutter/plugins/b/a;->e:Lg/a/c/a/k;

    return-void
.end method

.method private a(Lg/a/c/a/c;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "plugins.flutter.io/device_info"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/b/a;->e:Lg/a/c/a/k;

    .line 2
    new-instance p1, Lio/flutter/plugins/b/b;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lio/flutter/plugins/b/b;-><init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    .line 4
    iget-object p2, p0, Lio/flutter/plugins/b/a;->e:Lg/a/c/a/k;

    invoke-virtual {p2, p1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

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

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/b/a;->a(Lg/a/c/a/c;Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/b/a;->a()V

    return-void
.end method
