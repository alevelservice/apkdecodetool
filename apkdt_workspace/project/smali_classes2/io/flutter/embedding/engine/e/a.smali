.class public Lio/flutter/embedding/engine/e/a;
.super Ljava/lang/Object;
.source "DartExecutor.java"

# interfaces
.implements Lg/a/c/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/e/a$d;,
        Lio/flutter/embedding/engine/e/a$b;,
        Lio/flutter/embedding/engine/e/a$c;,
        Lio/flutter/embedding/engine/e/a$e;
    }
.end annotation


# instance fields
.field private final e:Lio/flutter/embedding/engine/FlutterJNI;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Landroid/content/res/AssetManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lio/flutter/embedding/engine/e/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lg/a/c/a/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lio/flutter/embedding/engine/e/a$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Lg/a/c/a/c$a;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/FlutterJNI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/AssetManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/flutter/embedding/engine/e/a;->i:Z

    .line 3
    new-instance v0, Lio/flutter/embedding/engine/e/a$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/e/a$a;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/a;->l:Lg/a/c/a/c$a;

    .line 4
    iput-object p1, p0, Lio/flutter/embedding/engine/e/a;->e:Lio/flutter/embedding/engine/FlutterJNI;

    .line 5
    iput-object p2, p0, Lio/flutter/embedding/engine/e/a;->f:Landroid/content/res/AssetManager;

    .line 6
    new-instance p2, Lio/flutter/embedding/engine/e/b;

    invoke-direct {p2, p1}, Lio/flutter/embedding/engine/e/b;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p2, p0, Lio/flutter/embedding/engine/e/a;->g:Lio/flutter/embedding/engine/e/b;

    .line 7
    iget-object p1, p0, Lio/flutter/embedding/engine/e/a;->g:Lio/flutter/embedding/engine/e/b;

    iget-object p2, p0, Lio/flutter/embedding/engine/e/a;->l:Lg/a/c/a/c$a;

    const-string v0, "flutter/isolate"

    invoke-virtual {p1, v0, p2}, Lio/flutter/embedding/engine/e/b;->setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V

    .line 8
    new-instance p1, Lio/flutter/embedding/engine/e/a$d;

    iget-object p2, p0, Lio/flutter/embedding/engine/e/a;->g:Lio/flutter/embedding/engine/e/b;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/flutter/embedding/engine/e/a$d;-><init>(Lio/flutter/embedding/engine/e/b;Lio/flutter/embedding/engine/e/a$a;)V

    iput-object p1, p0, Lio/flutter/embedding/engine/e/a;->h:Lg/a/c/a/c;

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/e/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/e/a;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lio/flutter/embedding/engine/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/engine/e/a;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/flutter/embedding/engine/e/a;)Lio/flutter/embedding/engine/e/a$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/e/a;->k:Lio/flutter/embedding/engine/e/a$e;

    return-object p0
.end method


# virtual methods
.method public a()Lg/a/c/a/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->h:Lg/a/c/a/c;

    return-object v0
.end method

.method public a(Lio/flutter/embedding/engine/e/a$b;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/e/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-boolean v0, p0, Lio/flutter/embedding/engine/e/a;->i:Z

    const-string v1, "DartExecutor"

    if-eqz v0, :cond_0

    const-string p1, "Attempted to run a DartExecutor that is already running."

    .line 9
    invoke-static {v1, p1}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing Dart callback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->e:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p1, Lio/flutter/embedding/engine/e/a$b;->b:Ljava/lang/String;

    iget-object v2, p1, Lio/flutter/embedding/engine/e/a$b;->c:Lio/flutter/view/FlutterCallbackInformation;

    iget-object v3, v2, Lio/flutter/view/FlutterCallbackInformation;->callbackName:Ljava/lang/String;

    iget-object v2, v2, Lio/flutter/view/FlutterCallbackInformation;->callbackLibraryPath:Ljava/lang/String;

    iget-object p1, p1, Lio/flutter/embedding/engine/e/a$b;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v1, v3, v2, p1}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lio/flutter/embedding/engine/e/a;->i:Z

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/e/a$c;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/e/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-boolean v0, p0, Lio/flutter/embedding/engine/e/a;->i:Z

    const-string v1, "DartExecutor"

    if-eqz v0, :cond_0

    const-string p1, "Attempted to run a DartExecutor that is already running."

    .line 4
    invoke-static {v1, p1}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing Dart entrypoint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->e:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p1, Lio/flutter/embedding/engine/e/a$c;->a:Ljava/lang/String;

    iget-object p1, p1, Lio/flutter/embedding/engine/e/a$c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/flutter/embedding/engine/e/a;->f:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/flutter/embedding/engine/e/a;->i:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/embedding/engine/e/a;->i:Z

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->e:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->e:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->notifyLowMemoryWarning()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "DartExecutor"

    const-string v1, "Attached to JNI. Registering the platform message handler for this Dart execution context."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->e:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/e/a;->g:Lio/flutter/embedding/engine/e/b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/e/c;)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "DartExecutor"

    const-string v1, "Detached from JNI. De-registering the platform message handler for this Dart execution context."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->e:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/e/c;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->h:Lg/a/c/a/c;

    invoke-interface {v0, p1, p2}, Lg/a/c/a/c;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lg/a/c/a/c$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->h:Lg/a/c/a/c;

    invoke-interface {v0, p1, p2, p3}, Lg/a/c/a/c;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lg/a/c/a/c$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a;->h:Lg/a/c/a/c;

    invoke-interface {v0, p1, p2}, Lg/a/c/a/c;->setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V

    return-void
.end method
