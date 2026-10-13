.class public Lio/flutter/embedding/android/FlutterSurfaceView;
.super Landroid/view/SurfaceView;
.source "FlutterSurfaceView.java"

# interfaces
.implements Lio/flutter/embedding/engine/h/c;


# instance fields
.field private final e:Z

.field private f:Z

.field private g:Z

.field private h:Lio/flutter/embedding/engine/h/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Landroid/view/SurfaceHolder$Callback;

.field private final j:Lio/flutter/embedding/engine/h/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->f:Z

    .line 6
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->g:Z

    .line 7
    new-instance p1, Lio/flutter/embedding/android/FlutterSurfaceView$a;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterSurfaceView$a;-><init>(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->i:Landroid/view/SurfaceHolder$Callback;

    .line 8
    new-instance p1, Lio/flutter/embedding/android/FlutterSurfaceView$b;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterSurfaceView$b;-><init>(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->j:Lio/flutter/embedding/engine/h/b;

    .line 9
    iput-boolean p3, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->e:Z

    .line 10
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/h/a;->a(Landroid/view/Surface;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connectSurfaceToRenderer() should only be called when flutterRenderer and getHolder() are non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(II)V
    .locals 2

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying FlutterRenderer that Android surface size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterSurfaceView"

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/h/a;->a(II)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "changeSurfaceSize() should only be called when flutterRenderer is non-null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lio/flutter/embedding/android/FlutterSurfaceView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->f:Z

    return p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/android/FlutterSurfaceView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->g:Z

    return p0
.end method

.method static synthetic access$200(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->a()V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/embedding/android/FlutterSurfaceView;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/FlutterSurfaceView;->a(II)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->b()V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/embedding/android/FlutterSurfaceView;)Lio/flutter/embedding/engine/h/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/flutter/embedding/engine/h/a;->c()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->i:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public attachToRenderer(Lio/flutter/embedding/engine/h/a;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/h/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FlutterSurfaceView"

    const-string v1, "Attaching to FlutterRenderer."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    if-eqz v1, :cond_0

    const-string v1, "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one."

    .line 3
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/h/a;->c()V

    .line 5
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->j:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/h/a;->b(Lio/flutter/embedding/engine/h/b;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->g:Z

    .line 8
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->j:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/h/a;->a(Lio/flutter/embedding/engine/h/b;)V

    .line 9
    iget-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->f:Z

    if-eqz p1, :cond_1

    const-string p1, "Surface is available for rendering. Connecting FlutterRenderer to Android surface."

    .line 10
    invoke-static {v0, p1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->a()V

    :cond_1
    return-void
.end method

.method public detachFromRenderer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    const-string v1, "FlutterSurfaceView"

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting FlutterRenderer from Android surface."

    .line 3
    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->j:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/h/a;->b(Lio/flutter/embedding/engine/h/b;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->g:Z

    goto :goto_0

    :cond_1
    const-string v0, "detachFromRenderer() invoked when no FlutterRenderer was attached."

    .line 9
    invoke-static {v1, v0}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAttachedRenderer()Lio/flutter/embedding/engine/h/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->h:Lio/flutter/embedding/engine/h/a;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->g:Z

    goto :goto_0

    :cond_0
    const-string v0, "FlutterSurfaceView"

    const-string v1, "pause() invoked when no FlutterRenderer was attached."

    .line 4
    invoke-static {v0, v1}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
