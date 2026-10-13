.class Lio/flutter/plugins/f/b;
.super Ljava/lang/Object;
.source "FlutterCookieManager.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field private final e:Lg/a/c/a/k;


# direct methods
.method constructor <init>(Lg/a/c/a/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "plugins.flutter.io/cookie_manager"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/f/b;->e:Lg/a/c/a/k;

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/f/b;->e:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method private static a(Lg/a/c/a/k$d;)V
    .locals 4

    .line 2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v1

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 5
    new-instance v2, Lio/flutter/plugins/f/b$a;

    invoke-direct {v2, p0, v1}, Lio/flutter/plugins/f/b$a;-><init>(Lg/a/c/a/k$d;Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/f/b;->e:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x3755e382

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "clearCookies"

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
    invoke-static {p2}, Lio/flutter/plugins/f/b;->a(Lg/a/c/a/k$d;)V

    :goto_2
    return-void
.end method
