.class public Lcom/pichillilorenzo/flutter_inappwebview/g;
.super Ljava/lang/Object;
.source "InAppWebViewFlutterPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# static fields
.field public static e:Lcom/pichillilorenzo/flutter_inappwebview/f;

.field public static f:Lcom/pichillilorenzo/flutter_inappwebview/e;

.field public static g:Lcom/pichillilorenzo/flutter_inappwebview/a;

.field public static h:Lcom/pichillilorenzo/flutter_inappwebview/h;

.field public static i:Lcom/pichillilorenzo/flutter_inappwebview/j;

.field public static j:Lcom/pichillilorenzo/flutter_inappwebview/d;

.field public static k:Lcom/pichillilorenzo/flutter_inappwebview/k;

.field public static l:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;Landroid/app/Activity;Lio/flutter/plugin/platform/h;Lio/flutter/view/FlutterView;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->a:Landroid/content/Context;

    .line 2
    sput-object p3, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 3
    sput-object p2, Lcom/pichillilorenzo/flutter_inappwebview/q;->c:Lg/a/c/a/c;

    .line 4
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/f;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/f;-><init>(Lg/a/c/a/c;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->e:Lcom/pichillilorenzo/flutter_inappwebview/f;

    .line 5
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/e;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/e;-><init>(Lg/a/c/a/c;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->f:Lcom/pichillilorenzo/flutter_inappwebview/e;

    .line 6
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/a;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/a;-><init>(Lg/a/c/a/c;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->g:Lcom/pichillilorenzo/flutter_inappwebview/a;

    .line 7
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/d;

    invoke-direct {p1, p2, p5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/d;-><init>(Lg/a/c/a/c;Landroid/view/View;)V

    const-string p3, "com.pichillilorenzo/flutter_inappwebview"

    invoke-interface {p4, p3, p1}, Lio/flutter/plugin/platform/h;->a(Ljava/lang/String;Lio/flutter/plugin/platform/g;)Z

    .line 8
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/h;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/h;-><init>(Lg/a/c/a/c;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->h:Lcom/pichillilorenzo/flutter_inappwebview/h;

    .line 9
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/j;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/j;-><init>(Lg/a/c/a/c;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->i:Lcom/pichillilorenzo/flutter_inappwebview/j;

    .line 10
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/k;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/k;-><init>(Lg/a/c/a/c;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->k:Lcom/pichillilorenzo/flutter_inappwebview/k;

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_0

    .line 12
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/d;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/d;-><init>(Lg/a/c/a/c;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->j:Lcom/pichillilorenzo/flutter_inappwebview/d;

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->e:Lio/flutter/embedding/engine/g/c/c;

    .line 2
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->c()Lio/flutter/embedding/engine/g/a$a;

    move-result-object v0

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->d:Lio/flutter/embedding/engine/g/a$a;

    .line 2
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object v3

    sget-object v4, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->e()Lio/flutter/plugin/platform/h;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/g;->a(Landroid/content/Context;Lg/a/c/a/c;Landroid/app/Activity;Lio/flutter/plugin/platform/h;Lio/flutter/view/FlutterView;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->e:Lio/flutter/embedding/engine/g/c/c;

    .line 2
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->e:Lio/flutter/embedding/engine/g/c/c;

    .line 2
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->e:Lcom/pichillilorenzo/flutter_inappwebview/f;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/f;->a()V

    .line 3
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->e:Lcom/pichillilorenzo/flutter_inappwebview/f;

    .line 4
    :cond_0
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->f:Lcom/pichillilorenzo/flutter_inappwebview/e;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/e;->a()V

    .line 6
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->f:Lcom/pichillilorenzo/flutter_inappwebview/e;

    .line 7
    :cond_1
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->g:Lcom/pichillilorenzo/flutter_inappwebview/a;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/a;->a()V

    .line 9
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->g:Lcom/pichillilorenzo/flutter_inappwebview/a;

    .line 10
    :cond_2
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->i:Lcom/pichillilorenzo/flutter_inappwebview/j;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/j;->a()V

    .line 12
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->i:Lcom/pichillilorenzo/flutter_inappwebview/j;

    .line 13
    :cond_3
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->k:Lcom/pichillilorenzo/flutter_inappwebview/k;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/k;->a()V

    .line 15
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->k:Lcom/pichillilorenzo/flutter_inappwebview/k;

    .line 16
    :cond_4
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->j:Lcom/pichillilorenzo/flutter_inappwebview/d;

    if-eqz p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_5

    .line 17
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->j:Lcom/pichillilorenzo/flutter_inappwebview/d;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/d;->a()V

    .line 18
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->j:Lcom/pichillilorenzo/flutter_inappwebview/d;

    .line 19
    :cond_5
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->h:Lcom/pichillilorenzo/flutter_inappwebview/h;

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/h;->a()V

    .line 21
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->h:Lcom/pichillilorenzo/flutter_inappwebview/h;

    .line 22
    :cond_6
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->l:Landroid/webkit/ValueCallback;

    .line 23
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->m:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->e:Lio/flutter/embedding/engine/g/c/c;

    .line 2
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    return-void
.end method
