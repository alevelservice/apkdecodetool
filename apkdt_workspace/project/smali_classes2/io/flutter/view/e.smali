.class public Lio/flutter/view/e;
.super Ljava/lang/Object;
.source "FlutterNativeView.java"

# interfaces
.implements Lg/a/c/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/e$b;
    }
.end annotation


# instance fields
.field private final e:Lio/flutter/app/c;

.field private final f:Lio/flutter/embedding/engine/e/a;

.field private g:Lio/flutter/view/FlutterView;

.field private final h:Lio/flutter/embedding/engine/FlutterJNI;

.field private final i:Landroid/content/Context;

.field private j:Z

.field private final k:Lio/flutter/embedding/engine/h/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/flutter/view/e;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/flutter/view/e$a;

    invoke-direct {v0, p0}, Lio/flutter/view/e$a;-><init>(Lio/flutter/view/e;)V

    iput-object v0, p0, Lio/flutter/view/e;->k:Lio/flutter/embedding/engine/h/b;

    .line 4
    iput-object p1, p0, Lio/flutter/view/e;->i:Landroid/content/Context;

    .line 5
    new-instance v0, Lio/flutter/app/c;

    invoke-direct {v0, p0, p1}, Lio/flutter/app/c;-><init>(Lio/flutter/view/e;Landroid/content/Context;)V

    iput-object v0, p0, Lio/flutter/view/e;->e:Lio/flutter/app/c;

    .line 6
    new-instance v0, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    iput-object v0, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    .line 7
    iget-object v0, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/view/e;->k:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/h/b;)V

    .line 8
    new-instance v0, Lio/flutter/embedding/engine/e/a;

    iget-object v1, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/flutter/embedding/engine/e/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lio/flutter/view/e;->f:Lio/flutter/embedding/engine/e/a;

    .line 9
    iget-object p1, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    new-instance v0, Lio/flutter/view/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/view/e$b;-><init>(Lio/flutter/view/e;Lio/flutter/view/e$a;)V

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    .line 10
    invoke-direct {p0, p0, p2}, Lio/flutter/view/e;->a(Lio/flutter/view/e;Z)V

    .line 11
    invoke-virtual {p0}, Lio/flutter/view/e;->a()V

    return-void
.end method

.method static synthetic a(Lio/flutter/view/e;)Lio/flutter/view/FlutterView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/e;->g:Lio/flutter/view/FlutterView;

    return-object p0
.end method

.method private a(Lio/flutter/view/e;Z)V
    .locals 0

    .line 14
    iget-object p1, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative(Z)V

    .line 15
    iget-object p1, p0, Lio/flutter/view/e;->f:Lio/flutter/embedding/engine/e/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/e/a;->e()V

    return-void
.end method

.method static synthetic b(Lio/flutter/view/e;)Lio/flutter/app/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/e;->e:Lio/flutter/app/c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lio/flutter/view/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Platform view is not attached"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public a(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lio/flutter/view/e;->g:Lio/flutter/view/FlutterView;

    .line 3
    iget-object v0, p0, Lio/flutter/view/e;->e:Lio/flutter/app/c;

    invoke-virtual {v0, p1, p2}, Lio/flutter/app/c;->a(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V

    return-void
.end method

.method public a(Lio/flutter/view/f;)V
    .locals 4

    .line 5
    iget-object v0, p1, Lio/flutter/view/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/flutter/view/e;->a()V

    .line 7
    iget-boolean v0, p0, Lio/flutter/view/e;->j:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p1, Lio/flutter/view/f;->a:Ljava/lang/String;

    iget-object v2, p1, Lio/flutter/view/f;->b:Ljava/lang/String;

    iget-object p1, p1, Lio/flutter/view/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/flutter/view/e;->i:Landroid/content/Context;

    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v1, v2, p1, v3}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lio/flutter/view/e;->j:Z

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "This Flutter engine instance is already running an application"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "An entrypoint must be specified"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/flutter/view/e;->e:Lio/flutter/app/c;

    invoke-virtual {v0}, Lio/flutter/app/c;->a()V

    .line 3
    iget-object v0, p0, Lio/flutter/view/e;->f:Lio/flutter/embedding/engine/e/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->f()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/flutter/view/e;->g:Lio/flutter/view/FlutterView;

    .line 5
    iget-object v0, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/view/e;->k:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/h/b;)V

    .line 6
    iget-object v0, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/flutter/view/e;->j:Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/e;->e:Lio/flutter/app/c;

    invoke-virtual {v0}, Lio/flutter/app/c;->b()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/view/e;->g:Lio/flutter/view/FlutterView;

    return-void
.end method

.method public d()Lio/flutter/embedding/engine/e/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/e;->f:Lio/flutter/embedding/engine/e/a;

    return-object v0
.end method

.method e()Lio/flutter/embedding/engine/FlutterJNI;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    return-object v0
.end method

.method public f()Lio/flutter/app/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/e;->e:Lio/flutter/app/c;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/view/e;->j:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/e;->h:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/e;->f:Lio/flutter/embedding/engine/e/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->a()Lg/a/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/a/c/a/c;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/flutter/view/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FlutterView.send called on a detached view, channel="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/flutter/view/e;->f:Lio/flutter/embedding/engine/e/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->a()Lg/a/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lg/a/c/a/c;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/e;->f:Lio/flutter/embedding/engine/e/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->a()Lg/a/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/a/c/a/c;->setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V

    return-void
.end method
