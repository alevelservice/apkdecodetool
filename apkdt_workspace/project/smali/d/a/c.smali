.class public final Ld/a/c;
.super Ljava/lang/Object;
.source "GallerySaverPlugin.kt"

# interfaces
.implements Lg/a/c/a/k$c;
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000cH\u0016J\u0008\u0010\u0014\u001a\u00020\u000cH\u0016J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0012H\u0016J\u0018\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcarnegietechnologies/gallery_saver/GallerySaverPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "()V",
        "activity",
        "Landroid/app/Activity;",
        "binding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "gallerySaver",
        "Lcarnegietechnologies/gallery_saver/GallerySaver;",
        "onAttachedToActivity",
        "",
        "onAttachedToEngine",
        "applicationContext",
        "Landroid/content/Context;",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "onReattachedToActivityForConfigChanges",
        "Companion",
        "gallery_saver_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static h:Lg/a/c/a/k;


# instance fields
.field private e:Landroid/app/Activity;

.field private f:Ld/a/b;

.field private g:Lio/flutter/embedding/engine/g/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/a/c$a;-><init>(Lkotlin/jvm/d/e;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 1

    .line 1
    new-instance p1, Lg/a/c/a/k;

    const-string v0, "gallery_saver"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    sput-object p1, Ld/a/c;->h:Lg/a/c/a/k;

    .line 2
    sget-object p1, Ld/a/c;->h:Lg/a/c/a/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/g/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Ld/a/c;->e:Landroid/app/Activity;

    .line 2
    iput-object p1, p0, Ld/a/c;->g:Lio/flutter/embedding/engine/g/c/c;

    .line 3
    new-instance v0, Ld/a/b;

    iget-object v1, p0, Ld/a/c;->e:Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {v0, v1}, Ld/a/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ld/a/c;->f:Ld/a/b;

    .line 4
    iget-object v0, p0, Ld/a/c;->f:Ld/a/b;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$e;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    throw v2

    .line 5
    :cond_1
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    throw v2
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "binding.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    const-string v1, "binding.binaryMessenger"

    invoke-static {p1, v1}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Ld/a/c;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/a/c;->g:Lio/flutter/embedding/engine/g/c/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, p0, Ld/a/c;->f:Ld/a/b;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/g/c/c;->b(Lg/a/c/a/m$e;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    throw v1

    .line 3
    :cond_1
    :goto_0
    iput-object v1, p0, Ld/a/c;->g:Lio/flutter/embedding/engine/g/c/c;

    .line 4
    :cond_2
    iput-object v1, p0, Ld/a/c;->e:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ld/a/c;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ld/a/c;->h:Lg/a/c/a/k;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    :cond_0
    sput-object v0, Ld/a/c;->h:Lg/a/c/a/k;

    :cond_1
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 3
    .param p1    # Lg/a/c/a/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lg/a/c/a/k$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x9c05dde

    if-eq v1, v2, :cond_2

    const v2, 0xa75c8fe

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "saveVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Ld/a/c;->f:Ld/a/b;

    if-eqz v0, :cond_4

    sget-object v1, Ld/a/d;->video:Ld/a/d;

    invoke-virtual {v0, p1, p2, v1}, Ld/a/b;->a(Lg/a/c/a/j;Lg/a/c/a/k$d;Ld/a/d;)V

    goto :goto_1

    :cond_2
    const-string v1, "saveImage"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Ld/a/c;->f:Ld/a/b;

    if-eqz v0, :cond_4

    sget-object v1, Ld/a/d;->image:Ld/a/d;

    invoke-virtual {v0, p1, p2, v1}, Ld/a/b;->a(Lg/a/c/a/j;Lg/a/c/a/k$d;Ld/a/d;)V

    goto :goto_1

    .line 5
    :cond_3
    :goto_0
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/g/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ld/a/c;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method
