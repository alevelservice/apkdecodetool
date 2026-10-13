.class final Lio/flutter/embedding/android/b;
.super Ljava/lang/Object;
.source "FlutterActivityAndFragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/b$b;
    }
.end annotation


# instance fields
.field private a:Lio/flutter/embedding/android/b$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lio/flutter/embedding/engine/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lio/flutter/embedding/android/FlutterSplashView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lio/flutter/embedding/android/FlutterView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lio/flutter/plugin/platform/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Z

.field private final g:Lio/flutter/embedding/engine/h/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/b$b;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/android/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/embedding/android/b$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/b$a;-><init>(Lio/flutter/embedding/android/b;)V

    iput-object v0, p0, Lio/flutter/embedding/android/b;->g:Lio/flutter/embedding/engine/h/b;

    .line 3
    iput-object p1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/android/b;)Lio/flutter/embedding/android/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing Dart entrypoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    .line 4
    invoke-interface {v1}, Lio/flutter/embedding/android/b$b;->getDartEntrypointFunctionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", and sending initial route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    .line 5
    invoke-interface {v1}, Lio/flutter/embedding/android/b$b;->getInitialRoute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivityAndFragmentDelegate"

    .line 6
    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->getInitialRoute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Lio/flutter/embedding/engine/i/g;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v1}, Lio/flutter/embedding/android/b$b;->getInitialRoute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/i/g;->b(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->getAppBundlePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    :cond_3
    invoke-static {}, Lg/a/a;->c()Lg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/a;->a()Lio/flutter/embedding/engine/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/f/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_4
    new-instance v1, Lio/flutter/embedding/engine/e/a$c;

    iget-object v2, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    .line 13
    invoke-interface {v2}, Lio/flutter/embedding/android/b$b;->getDartEntrypointFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/flutter/embedding/engine/e/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/e/a;->a(Lio/flutter/embedding/engine/e/a$c;)V

    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string p2, "Creating FlutterView."

    .line 13
    invoke-static {p1, p2}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 15
    iget-object p2, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {p2}, Lio/flutter/embedding/android/b$b;->getRenderMode()Lio/flutter/embedding/android/g;

    move-result-object p2

    sget-object p3, Lio/flutter/embedding/android/g;->surface:Lio/flutter/embedding/android/g;

    if-ne p2, p3, :cond_1

    .line 16
    new-instance p2, Lio/flutter/embedding/android/FlutterSurfaceView;

    iget-object p3, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    .line 17
    invoke-interface {p3}, Lio/flutter/embedding/android/b$b;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->getTransparencyMode()Lio/flutter/embedding/android/k;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/k;->transparent:Lio/flutter/embedding/android/k;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p2, p3, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Z)V

    .line 18
    iget-object p3, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {p3, p2}, Lio/flutter/embedding/android/b$b;->onFlutterSurfaceViewCreated(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    .line 19
    new-instance p3, Lio/flutter/embedding/android/FlutterView;

    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    iput-object p3, p0, Lio/flutter/embedding/android/b;->d:Lio/flutter/embedding/android/FlutterView;

    goto :goto_1

    .line 20
    :cond_1
    new-instance p2, Lio/flutter/embedding/android/FlutterTextureView;

    iget-object p3, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {p3}, Lio/flutter/embedding/android/b$b;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;)V

    .line 21
    iget-object p3, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {p3, p2}, Lio/flutter/embedding/android/b$b;->onFlutterTextureViewCreated(Lio/flutter/embedding/android/FlutterTextureView;)V

    .line 22
    new-instance p3, Lio/flutter/embedding/android/FlutterView;

    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterTextureView;)V

    iput-object p3, p0, Lio/flutter/embedding/android/b;->d:Lio/flutter/embedding/android/FlutterView;

    .line 23
    :goto_1
    iget-object p2, p0, Lio/flutter/embedding/android/b;->d:Lio/flutter/embedding/android/FlutterView;

    iget-object p3, p0, Lio/flutter/embedding/android/b;->g:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {p2, p3}, Lio/flutter/embedding/android/FlutterView;->addOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/h/b;)V

    .line 24
    new-instance p2, Lio/flutter/embedding/android/FlutterSplashView;

    iget-object p3, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {p3}, Lio/flutter/embedding/android/b$b;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lio/flutter/embedding/android/FlutterSplashView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/embedding/android/b;->c:Lio/flutter/embedding/android/FlutterSplashView;

    .line 25
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x11

    if-lt p2, p3, :cond_2

    .line 26
    iget-object p2, p0, Lio/flutter/embedding/android/b;->c:Lio/flutter/embedding/android/FlutterSplashView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_2

    .line 27
    :cond_2
    iget-object p2, p0, Lio/flutter/embedding/android/b;->c:Lio/flutter/embedding/android/FlutterSplashView;

    const p3, 0x1d063b02

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 28
    :goto_2
    iget-object p2, p0, Lio/flutter/embedding/android/b;->c:Lio/flutter/embedding/android/FlutterSplashView;

    iget-object p3, p0, Lio/flutter/embedding/android/b;->d:Lio/flutter/embedding/android/FlutterView;

    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->provideSplashScreen()Lio/flutter/embedding/android/i;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lio/flutter/embedding/android/FlutterSplashView;->a(Lio/flutter/embedding/android/FlutterView;Lio/flutter/embedding/android/i;)V

    const-string p2, "Attaching FlutterEngine to FlutterView."

    .line 29
    invoke-static {p1, p2}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lio/flutter/embedding/android/b;->d:Lio/flutter/embedding/android/FlutterView;

    iget-object p2, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/android/FlutterView;->attachToFlutterEngine(Lio/flutter/embedding/engine/a;)V

    .line 31
    iget-object p1, p0, Lio/flutter/embedding/android/b;->c:Lio/flutter/embedding/android/FlutterSplashView;

    return-object p1
.end method

.method a()Lio/flutter/embedding/engine/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    return-object v0
.end method

.method a(I)V
    .locals 3

    .line 60
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 61
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->d()V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onTrimMemory() to FlutterEngine. Level: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->p()Lio/flutter/embedding/engine/i/l;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/i/l;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "onTrimMemory() invoked before FlutterFragment was attached to an Activity."

    .line 65
    invoke-static {v1, p1}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(IILandroid/content/Intent;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 56
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ndata: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/g/c/b;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    const-string p1, "onActivityResult() invoked before FlutterFragment was attached to an Activity."

    .line 59
    invoke-static {v1, p1}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 41
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\npermissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ngrantResults: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    .line 47
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/g/c/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    goto :goto_0

    :cond_0
    const-string p1, "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity."

    .line 49
    invoke-static {v1, p1}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 4
    iget-object p1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/flutter/embedding/android/b;->n()V

    .line 6
    :cond_0
    iget-object p1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {p1}, Lio/flutter/embedding/android/b$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0, v1}, Lio/flutter/embedding/android/b$b;->providePlatformPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/d;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/b;->e:Lio/flutter/plugin/platform/d;

    .line 7
    iget-object p1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {p1}, Lio/flutter/embedding/android/b$b;->shouldAttachEngineToActivity()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string v0, "Attaching FlutterEngine to the Activity that owns this Fragment."

    .line 8
    invoke-static {p1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    .line 10
    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    .line 11
    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v1}, Lio/flutter/embedding/android/b$b;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/flutter/embedding/engine/g/c/b;->a(Landroid/app/Activity;Landroidx/lifecycle/e;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0}, Lio/flutter/embedding/android/b$b;->configureFlutterEngine(Lio/flutter/embedding/engine/a;)V

    return-void
.end method

.method a(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 51
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onNewIntent() to FlutterEngine."

    .line 52
    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/g/c/b;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "onNewIntent() invoked before FlutterFragment was attached to an Activity."

    .line 54
    invoke-static {v1, p1}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onActivityCreated. Giving framework and plugins an opportunity to restore state."

    .line 32
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v0, "plugins"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "framework"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 36
    :goto_0
    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v1}, Lio/flutter/embedding/android/b$b;->shouldRestoreAndSaveState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->n()Lio/flutter/embedding/engine/i/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/i/j;->a([B)V

    .line 38
    :cond_1
    iget-object p1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {p1}, Lio/flutter/embedding/android/b$b;->shouldAttachEngineToActivity()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39
    iget-object p1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/g/c/b;->a(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onSaveInstanceState. Giving framework and plugins an opportunity to save state."

    .line 2
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->shouldRestoreAndSaveState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    .line 6
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->n()Lio/flutter/embedding/engine/i/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/j;->b()[B

    move-result-object v0

    const-string v1, "framework"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 8
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->shouldAttachEngineToActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/g/c/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "plugins"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/embedding/android/b;->f:Z

    return v0
.end method

.method c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onBackPressed() to FlutterEngine."

    .line 3
    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Lio/flutter/embedding/engine/i/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/g;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked onBackPressed() before FlutterFragment was attached to an Activity."

    .line 5
    invoke-static {v1, v0}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method d()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDestroyView()"

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/android/b;->d:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->detachFromFlutterEngine()V

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/android/b;->d:Lio/flutter/embedding/android/FlutterView;

    iget-object v1, p0, Lio/flutter/embedding/android/b;->g:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterView;->removeOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/h/b;)V

    return-void
.end method

.method e()V
    .locals 3

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDetach()"

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 3
    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    iget-object v2, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {v1, v2}, Lio/flutter/embedding/android/b$b;->cleanUpFlutterEngine(Lio/flutter/embedding/engine/a;)V

    .line 4
    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v1}, Lio/flutter/embedding/android/b$b;->shouldAttachEngineToActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Detaching FlutterEngine from the Activity that owns this Fragment."

    .line 5
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/g/c/b;->b()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/g/c/b;->a()V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/flutter/embedding/android/b;->e:Lio/flutter/plugin/platform/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lio/flutter/plugin/platform/d;->a()V

    .line 11
    iput-object v1, p0, Lio/flutter/embedding/android/b;->e:Lio/flutter/plugin/platform/d;

    .line 12
    :cond_2
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->f()Lio/flutter/embedding/engine/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/d;->a()V

    .line 13
    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->shouldDestroyEngineWithHost()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->a()V

    .line 15
    iget-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-static {}, Lio/flutter/embedding/engine/b;->a()Lio/flutter/embedding/engine/b;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v2}, Lio/flutter/embedding/android/b$b;->getCachedEngineId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/embedding/engine/b;->b(Ljava/lang/String;)V

    .line 17
    :cond_3
    iput-object v1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    :cond_4
    return-void
.end method

.method f()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "Forwarding onLowMemory() to FlutterEngine."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->d()V

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->p()Lio/flutter/embedding/engine/i/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/l;->a()V

    return-void
.end method

.method g()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPause()"

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->f()Lio/flutter/embedding/engine/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/d;->b()V

    return-void
.end method

.method h()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPostResume()"

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 3
    iget-object v1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/android/b;->e:Lio/flutter/plugin/platform/d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lio/flutter/plugin/platform/d;->b()V

    goto :goto_0

    :cond_0
    const-string v1, "onPostResume() invoked before FlutterFragment was attached to an Activity."

    .line 6
    invoke-static {v0, v1}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method i()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onResume()"

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->f()Lio/flutter/embedding/engine/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/d;->d()V

    return-void
.end method

.method j()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStart()"

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 3
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->o()V

    return-void
.end method

.method k()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStop()"

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->f()Lio/flutter/embedding/engine/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/d;->c()V

    return-void
.end method

.method l()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/b;->p()V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onUserLeaveHint() to FlutterEngine."

    .line 3
    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/g/c/b;->onUserLeaveHint()V

    goto :goto_0

    :cond_0
    const-string v0, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity."

    .line 5
    invoke-static {v1, v0}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    .line 2
    iput-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    .line 3
    iput-object v0, p0, Lio/flutter/embedding/android/b;->d:Lio/flutter/embedding/android/FlutterView;

    .line 4
    iput-object v0, p0, Lio/flutter/embedding/android/b;->e:Lio/flutter/plugin/platform/d;

    return-void
.end method

.method n()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "Setting up FlutterEngine."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v1}, Lio/flutter/embedding/android/b$b;->getCachedEngineId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lio/flutter/embedding/engine/b;->a()Lio/flutter/embedding/engine/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/b;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    .line 4
    iput-boolean v2, p0, Lio/flutter/embedding/android/b;->f:Z

    .line 5
    iget-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The requested cached FlutterEngine did not exist in the FlutterEngineCache: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    invoke-interface {v1}, Lio/flutter/embedding/android/b$b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/flutter/embedding/android/b$b;->provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/a;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    .line 8
    iget-object v1, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_2

    .line 9
    iput-boolean v2, p0, Lio/flutter/embedding/android/b;->f:Z

    return-void

    :cond_2
    const-string v1, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment."

    .line 10
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lio/flutter/embedding/engine/a;

    iget-object v1, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    .line 12
    invoke-interface {v1}, Lio/flutter/embedding/android/b$b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    .line 13
    invoke-interface {v2}, Lio/flutter/embedding/android/b$b;->getFlutterShellArgs()Lio/flutter/embedding/engine/d;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/embedding/engine/d;->a()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/b;->a:Lio/flutter/embedding/android/b$b;

    .line 14
    invoke-interface {v3}, Lio/flutter/embedding/android/b$b;->shouldRestoreAndSaveState()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lio/flutter/embedding/android/b;->b:Lio/flutter/embedding/engine/a;

    .line 15
    iput-boolean v4, p0, Lio/flutter/embedding/android/b;->f:Z

    return-void
.end method
