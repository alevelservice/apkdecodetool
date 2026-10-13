.class public Lio/flutter/view/FlutterView;
.super Landroid/view/SurfaceView;
.source "FlutterView.java"

# interfaces
.implements Lg/a/c/a/c;
.implements Lio/flutter/view/g;
.implements Lg/a/c/c/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/FlutterView$f;,
        Lio/flutter/view/FlutterView$d;,
        Lio/flutter/view/FlutterView$h;,
        Lio/flutter/view/FlutterView$g;,
        Lio/flutter/view/FlutterView$e;
    }
.end annotation


# instance fields
.field private final A:Lio/flutter/view/c$i;

.field private final e:Lio/flutter/embedding/engine/e/a;

.field private final f:Lio/flutter/embedding/engine/h/a;

.field private final g:Lio/flutter/embedding/engine/i/g;

.field private final h:Lio/flutter/embedding/engine/i/c;

.field private final i:Lio/flutter/embedding/engine/i/d;

.field private final j:Lio/flutter/embedding/engine/i/e;

.field private final k:Lio/flutter/embedding/engine/i/h;

.field private final l:Lio/flutter/embedding/engine/i/k;

.field private final m:Lio/flutter/embedding/engine/i/l;

.field private final n:Lio/flutter/plugin/editing/c;

.field private final o:Lg/a/c/b/a;

.field private final p:Lio/flutter/embedding/android/a;

.field private final q:Lio/flutter/embedding/android/AndroidTouchProcessor;

.field private r:Lio/flutter/view/c;

.field private final s:Landroid/view/SurfaceHolder$Callback;

.field private final t:Lio/flutter/view/FlutterView$g;

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/a/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/FlutterView$d;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/concurrent/atomic/AtomicLong;

.field private x:Lio/flutter/view/e;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/flutter/view/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/flutter/view/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/e;)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lio/flutter/view/FlutterView;->w:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lio/flutter/view/FlutterView;->y:Z

    .line 6
    iput-boolean p2, p0, Lio/flutter/view/FlutterView;->z:Z

    .line 7
    new-instance v0, Lio/flutter/view/FlutterView$a;

    invoke-direct {v0, p0}, Lio/flutter/view/FlutterView$a;-><init>(Lio/flutter/view/FlutterView;)V

    iput-object v0, p0, Lio/flutter/view/FlutterView;->A:Lio/flutter/view/c$i;

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/view/FlutterView;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    .line 9
    new-instance p3, Lio/flutter/view/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Lio/flutter/view/e;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p3, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    .line 11
    :goto_0
    iget-object p3, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {p3}, Lio/flutter/view/e;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object p3

    iput-object p3, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    .line 12
    new-instance p3, Lio/flutter/embedding/engine/h/a;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v1}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    invoke-direct {p3, v1}, Lio/flutter/embedding/engine/h/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->f:Lio/flutter/embedding/engine/h/a;

    .line 13
    iget-object p3, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {p3}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p3

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->getIsSoftwareRenderingEnabled()Z

    move-result p3

    iput-boolean p3, p0, Lio/flutter/view/FlutterView;->y:Z

    .line 14
    new-instance p3, Lio/flutter/view/FlutterView$g;

    invoke-direct {p3}, Lio/flutter/view/FlutterView$g;-><init>()V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    .line 15
    iget-object p3, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p3, Lio/flutter/view/FlutterView$g;->a:F

    const/4 p3, 0x1

    .line 16
    invoke-virtual {p0, p3}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 17
    invoke-virtual {p0, p3}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 18
    iget-object p3, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {p3, p0, v0}, Lio/flutter/view/e;->a(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V

    .line 19
    new-instance p3, Lio/flutter/view/FlutterView$b;

    invoke-direct {p3, p0}, Lio/flutter/view/FlutterView$b;-><init>(Lio/flutter/view/FlutterView;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->s:Landroid/view/SurfaceHolder$Callback;

    .line 20
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    iget-object v1, p0, Lio/flutter/view/FlutterView;->s:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p3, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 21
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->u:Ljava/util/List;

    .line 22
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->v:Ljava/util/List;

    .line 23
    new-instance p3, Lio/flutter/embedding/engine/i/g;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p3, v1}, Lio/flutter/embedding/engine/i/g;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->g:Lio/flutter/embedding/engine/i/g;

    .line 24
    new-instance p3, Lio/flutter/embedding/engine/i/c;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p3, v1}, Lio/flutter/embedding/engine/i/c;-><init>(Lg/a/c/a/c;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->h:Lio/flutter/embedding/engine/i/c;

    .line 25
    new-instance p3, Lio/flutter/embedding/engine/i/d;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p3, v1}, Lio/flutter/embedding/engine/i/d;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->i:Lio/flutter/embedding/engine/i/d;

    .line 26
    new-instance p3, Lio/flutter/embedding/engine/i/e;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p3, v1}, Lio/flutter/embedding/engine/i/e;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->j:Lio/flutter/embedding/engine/i/e;

    .line 27
    new-instance p3, Lio/flutter/embedding/engine/i/h;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p3, v1}, Lio/flutter/embedding/engine/i/h;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->k:Lio/flutter/embedding/engine/i/h;

    .line 28
    new-instance p3, Lio/flutter/embedding/engine/i/l;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p3, v1}, Lio/flutter/embedding/engine/i/l;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->m:Lio/flutter/embedding/engine/i/l;

    .line 29
    new-instance p3, Lio/flutter/embedding/engine/i/k;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p3, v1}, Lio/flutter/embedding/engine/i/k;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->l:Lio/flutter/embedding/engine/i/k;

    .line 30
    new-instance p3, Lio/flutter/plugin/platform/d;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->k:Lio/flutter/embedding/engine/i/h;

    invoke-direct {p3, v0, v1}, Lio/flutter/plugin/platform/d;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/i/h;)V

    .line 31
    new-instance v0, Lio/flutter/view/FlutterView$c;

    invoke-direct {v0, p0, p3}, Lio/flutter/view/FlutterView$c;-><init>(Lio/flutter/view/FlutterView;Lio/flutter/plugin/platform/d;)V

    invoke-virtual {p0, v0}, Lio/flutter/view/FlutterView;->addActivityLifecycleListener(Lg/a/c/a/a;)V

    .line 32
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "input_method"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodManager;

    .line 33
    iget-object p3, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    .line 34
    invoke-virtual {p3}, Lio/flutter/view/e;->f()Lio/flutter/app/c;

    move-result-object p3

    invoke-virtual {p3}, Lio/flutter/app/c;->c()Lio/flutter/plugin/platform/k;

    move-result-object p3

    .line 35
    new-instance v0, Lio/flutter/plugin/editing/c;

    new-instance v1, Lio/flutter/embedding/engine/i/m;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/i/m;-><init>(Lio/flutter/embedding/engine/e/a;)V

    invoke-direct {v0, p0, v1, p3}, Lio/flutter/plugin/editing/c;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/i/m;Lio/flutter/plugin/platform/k;)V

    iput-object v0, p0, Lio/flutter/view/FlutterView;->n:Lio/flutter/plugin/editing/c;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 37
    new-instance v0, Lg/a/c/c/a;

    new-instance v1, Lio/flutter/embedding/engine/i/f;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/i/f;-><init>(Lio/flutter/embedding/engine/e/a;)V

    invoke-direct {v0, p0, v1}, Lg/a/c/c/a;-><init>(Lg/a/c/c/a$c;Lio/flutter/embedding/engine/i/f;)V

    .line 38
    :cond_1
    new-instance v0, Lg/a/c/b/a;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->j:Lio/flutter/embedding/engine/i/e;

    invoke-direct {v0, p1, v1}, Lg/a/c/b/a;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/i/e;)V

    iput-object v0, p0, Lio/flutter/view/FlutterView;->o:Lg/a/c/b/a;

    .line 39
    new-instance p1, Lio/flutter/embedding/android/a;

    iget-object v0, p0, Lio/flutter/view/FlutterView;->h:Lio/flutter/embedding/engine/i/c;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->n:Lio/flutter/plugin/editing/c;

    invoke-direct {p1, p0, v0, v1}, Lio/flutter/embedding/android/a;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/i/c;Lio/flutter/plugin/editing/c;)V

    iput-object p1, p0, Lio/flutter/view/FlutterView;->p:Lio/flutter/embedding/android/a;

    .line 40
    new-instance p1, Lio/flutter/embedding/android/AndroidTouchProcessor;

    iget-object v0, p0, Lio/flutter/view/FlutterView;->f:Lio/flutter/embedding/engine/h/a;

    invoke-direct {p1, v0, p2}, Lio/flutter/embedding/android/AndroidTouchProcessor;-><init>(Lio/flutter/embedding/engine/h/a;Z)V

    iput-object p1, p0, Lio/flutter/view/FlutterView;->q:Lio/flutter/embedding/android/AndroidTouchProcessor;

    .line 41
    iget-object p1, p0, Lio/flutter/view/FlutterView;->f:Lio/flutter/embedding/engine/h/a;

    invoke-virtual {p3, p1}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/embedding/engine/h/a;)V

    .line 42
    iget-object p1, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    .line 43
    invoke-virtual {p1}, Lio/flutter/view/e;->f()Lio/flutter/app/c;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lio/flutter/app/c;->c()Lio/flutter/plugin/platform/k;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/view/FlutterView;->n:Lio/flutter/plugin/editing/c;

    .line 45
    invoke-virtual {p1, p2}, Lio/flutter/plugin/platform/k;->a(Lio/flutter/plugin/editing/c;)V

    .line 46
    iget-object p1, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {p1}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/view/FlutterView;->o:Lg/a/c/b/a;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(Lg/a/c/b/a;)V

    .line 47
    iget-object p1, p0, Lio/flutter/view/FlutterView;->o:Lg/a/c/b/a;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/a/c/b/a;->a(Landroid/content/res/Configuration;)V

    .line 48
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->f()V

    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/view/WindowInsets;)I
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .line 14
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    const-wide v5, 0x3fc70a3d70a3d70aL    # 0.18

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    return p1
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 2
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 3
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 4
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/view/FlutterView;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private a()Lio/flutter/view/FlutterView$h;
    .locals 3

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "window"

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 8
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 10
    sget-object v0, Lio/flutter/view/FlutterView$h;->RIGHT:Lio/flutter/view/FlutterView$h;

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    sget-object v0, Lio/flutter/view/FlutterView$h;->LEFT:Lio/flutter/view/FlutterView$h;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/flutter/view/FlutterView$h;->RIGHT:Lio/flutter/view/FlutterView$h;

    :goto_0
    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_4

    .line 12
    :cond_3
    sget-object v0, Lio/flutter/view/FlutterView$h;->BOTH:Lio/flutter/view/FlutterView$h;

    return-object v0

    .line 13
    :cond_4
    sget-object v0, Lio/flutter/view/FlutterView$h;->NONE:Lio/flutter/view/FlutterView$h;

    return-object v0
.end method

.method private a(ZZ)V
    .locals 2

    .line 17
    iget-boolean v0, p0, Lio/flutter/view/FlutterView;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    .line 18
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/flutter/view/FlutterView;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/view/FlutterView;->a(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    return-object p0
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/view/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c()V
    .locals 0

    return-void
.end method

.method private d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->resetAccessibilityTree()V

    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/flutter/view/c;->c()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lio/flutter/embedding/engine/i/k$b;->dark:Lio/flutter/embedding/engine/i/k$b;

    goto :goto_1

    :cond_1
    sget-object v0, Lio/flutter/embedding/engine/i/k$b;->light:Lio/flutter/embedding/engine/i/k$b;

    .line 3
    :goto_1
    iget-object v1, p0, Lio/flutter/view/FlutterView;->l:Lio/flutter/embedding/engine/i/k;

    .line 4
    invoke-virtual {v1}, Lio/flutter/embedding/engine/i/k;->a()Lio/flutter/embedding/engine/i/k$a;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/i/k$a;->a(F)Lio/flutter/embedding/engine/i/k$a;

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/i/k$a;->a(Z)Lio/flutter/embedding/engine/i/k$a;

    .line 7
    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/i/k$a;->a(Lio/flutter/embedding/engine/i/k$b;)Lio/flutter/embedding/engine/i/k$a;

    .line 8
    invoke-virtual {v1}, Lio/flutter/embedding/engine/i/k$a;->a()V

    return-void
.end method

.method private g()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lio/flutter/view/FlutterView;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    .line 3
    invoke-virtual {v1}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    iget-object v1, v0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v3, v1, Lio/flutter/view/FlutterView$g;->a:F

    iget v4, v1, Lio/flutter/view/FlutterView$g;->b:I

    iget v5, v1, Lio/flutter/view/FlutterView$g;->c:I

    iget v6, v1, Lio/flutter/view/FlutterView$g;->d:I

    iget v7, v1, Lio/flutter/view/FlutterView$g;->e:I

    iget v8, v1, Lio/flutter/view/FlutterView$g;->f:I

    iget v9, v1, Lio/flutter/view/FlutterView$g;->g:I

    iget v10, v1, Lio/flutter/view/FlutterView$g;->h:I

    iget v11, v1, Lio/flutter/view/FlutterView$g;->i:I

    iget v12, v1, Lio/flutter/view/FlutterView$g;->j:I

    iget v13, v1, Lio/flutter/view/FlutterView$g;->k:I

    iget v14, v1, Lio/flutter/view/FlutterView$g;->l:I

    iget v15, v1, Lio/flutter/view/FlutterView$g;->m:I

    iget v0, v1, Lio/flutter/view/FlutterView$g;->n:I

    iget v1, v1, Lio/flutter/view/FlutterView$g;->o:I

    move/from16 v16, v0

    move/from16 v17, v1

    .line 4
    invoke-virtual/range {v2 .. v17}, Lio/flutter/embedding/engine/FlutterJNI;->setViewportMetrics(FIIIIIIIIIIIIII)V

    return-void
.end method


# virtual methods
.method public addActivityLifecycleListener(Lg/a/c/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFirstFrameListener(Lio/flutter/view/FlutterView$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method assertAttached()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Platform view is not attached"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->n:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/c;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    .line 2
    invoke-virtual {v0}, Lio/flutter/view/e;->f()Lio/flutter/app/c;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/flutter/app/c;->c()Lio/flutter/plugin/platform/k;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/k;->b(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public createSurfaceTexture()Lio/flutter/view/g$a;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 2
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 3
    new-instance v1, Lio/flutter/view/FlutterView$f;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->w:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3, v0}, Lio/flutter/view/FlutterView$f;-><init>(Lio/flutter/view/FlutterView;JLandroid/graphics/SurfaceTexture;)V

    .line 5
    iget-object v2, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v2}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    invoke-virtual {v1}, Lio/flutter/view/FlutterView$f;->id()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lio/flutter/embedding/engine/FlutterJNI;->registerTexture(JLandroid/graphics/SurfaceTexture;)V

    return-object v1
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/FlutterView;->s:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->e()V

    .line 4
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v0}, Lio/flutter/view/e;->b()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    return-void
.end method

.method public detach()Lio/flutter/view/e;
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/view/FlutterView;->s:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v0}, Lio/flutter/view/e;->c()V

    .line 4
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    .line 5
    iput-object v1, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    return-object v0
.end method

.method public disableTransparentBackground()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method public enableTransparentBackground()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lio/flutter/view/FlutterView$g;->d:I

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lio/flutter/view/FlutterView$g;->e:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lio/flutter/view/FlutterView$g;->f:I

    .line 5
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lio/flutter/view/FlutterView$g;->g:I

    .line 6
    iput v1, v0, Lio/flutter/view/FlutterView$g;->h:I

    .line 7
    iput v1, v0, Lio/flutter/view/FlutterView$g;->i:I

    .line 8
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Lio/flutter/view/FlutterView$g;->j:I

    .line 9
    iput v1, v0, Lio/flutter/view/FlutterView$g;->k:I

    .line 10
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->g()V

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/view/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->assertAttached()V

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v0}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDartExecutor()Lio/flutter/embedding/engine/e/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    return-object v0
.end method

.method getDevicePixelRatio()F
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v0, v0, Lio/flutter/view/FlutterView$g;->a:F

    return v0
.end method

.method public getFlutterNativeView()Lio/flutter/view/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    return-object v0
.end method

.method public getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lio/flutter/view/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lio/flutter/view/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPluginRegistry()Lio/flutter/app/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v0}, Lio/flutter/view/e;->f()Lio/flutter/app/c;

    move-result-object v0

    return-object v0
.end method

.method public getSystemPointerIcon(I)Landroid/view/PointerIcon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public hasRenderedFirstFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/view/FlutterView;->z:Z

    return v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->l:I

    .line 4
    iget v2, v0, Landroid/graphics/Insets;->right:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->m:I

    .line 5
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->n:I

    .line 6
    iget v0, v0, Landroid/graphics/Insets;->left:I

    iput v0, v1, Lio/flutter/view/FlutterView$g;->o:I

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSystemUiVisibility()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_5

    if-eqz v1, :cond_3

    .line 10
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v2, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 11
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    or-int/2addr v2, v0

    .line 12
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->d:I

    .line 14
    iget v2, v0, Landroid/graphics/Insets;->right:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->e:I

    .line 15
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->f:I

    .line 16
    iget v0, v0, Landroid/graphics/Insets;->left:I

    iput v0, v1, Lio/flutter/view/FlutterView$g;->g:I

    .line 17
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->h:I

    .line 19
    iget v2, v0, Landroid/graphics/Insets;->right:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->i:I

    .line 20
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->j:I

    .line 21
    iget v0, v0, Landroid/graphics/Insets;->left:I

    iput v0, v1, Lio/flutter/view/FlutterView$g;->k:I

    .line 22
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->l:I

    .line 24
    iget v2, v0, Landroid/graphics/Insets;->right:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->m:I

    .line 25
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Lio/flutter/view/FlutterView$g;->n:I

    .line 26
    iget v0, v0, Landroid/graphics/Insets;->left:I

    iput v0, v1, Lio/flutter/view/FlutterView$g;->o:I

    .line 27
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v3, v2, Lio/flutter/view/FlutterView$g;->d:I

    iget v4, v1, Landroid/graphics/Insets;->top:I

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 31
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/view/FlutterView$g;->d:I

    .line 33
    iget-object v2, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v3, v2, Lio/flutter/view/FlutterView$g;->e:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 35
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/view/FlutterView$g;->e:I

    .line 37
    iget-object v2, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v3, v2, Lio/flutter/view/FlutterView$g;->f:I

    iget v4, v1, Landroid/graphics/Insets;->bottom:I

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 39
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v4

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/view/FlutterView$g;->f:I

    .line 41
    iget-object v2, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iget v3, v2, Lio/flutter/view/FlutterView$g;->g:I

    iget v1, v1, Landroid/graphics/Insets;->left:I

    .line 42
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 43
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 44
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lio/flutter/view/FlutterView$g;->g:I

    goto :goto_8

    .line 45
    :cond_5
    sget-object v3, Lio/flutter/view/FlutterView$h;->NONE:Lio/flutter/view/FlutterView$h;

    if-nez v1, :cond_6

    .line 46
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->a()Lio/flutter/view/FlutterView$h;

    move-result-object v3

    .line 47
    :cond_6
    iget-object v4, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iput v0, v4, Lio/flutter/view/FlutterView$g;->d:I

    .line 48
    iget-object v0, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    sget-object v4, Lio/flutter/view/FlutterView$h;->RIGHT:Lio/flutter/view/FlutterView$h;

    if-eq v3, v4, :cond_9

    sget-object v4, Lio/flutter/view/FlutterView$h;->BOTH:Lio/flutter/view/FlutterView$h;

    if-ne v3, v4, :cond_8

    goto :goto_3

    .line 49
    :cond_8
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v4, 0x0

    :goto_4
    iput v4, v0, Lio/flutter/view/FlutterView$g;->e:I

    .line 50
    iget-object v0, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iput v2, v0, Lio/flutter/view/FlutterView$g;->f:I

    .line 51
    sget-object v4, Lio/flutter/view/FlutterView$h;->LEFT:Lio/flutter/view/FlutterView$h;

    if-eq v3, v4, :cond_b

    sget-object v4, Lio/flutter/view/FlutterView$h;->BOTH:Lio/flutter/view/FlutterView$h;

    if-ne v3, v4, :cond_a

    goto :goto_5

    .line 52
    :cond_a
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v3, 0x0

    :goto_6
    iput v3, v0, Lio/flutter/view/FlutterView$g;->g:I

    .line 53
    iget-object v0, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iput v2, v0, Lio/flutter/view/FlutterView$g;->h:I

    .line 54
    iput v2, v0, Lio/flutter/view/FlutterView$g;->i:I

    if-eqz v1, :cond_c

    .line 55
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    goto :goto_7

    .line 56
    :cond_c
    invoke-direct {p0, p1}, Lio/flutter/view/FlutterView;->a(Landroid/view/WindowInsets;)I

    move-result v1

    :goto_7
    iput v1, v0, Lio/flutter/view/FlutterView$g;->j:I

    .line 57
    iget-object v0, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iput v2, v0, Lio/flutter/view/FlutterView$g;->k:I

    .line 58
    :cond_d
    :goto_8
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->g()V

    .line 59
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/app/c;->c()Lio/flutter/plugin/platform/k;

    move-result-object v6

    .line 3
    new-instance v0, Lio/flutter/view/c;

    new-instance v3, Lio/flutter/embedding/engine/i/b;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->e:Lio/flutter/embedding/engine/e/a;

    .line 4
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getFlutterNativeView()Lio/flutter/view/e;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lio/flutter/embedding/engine/i/b;-><init>(Lio/flutter/embedding/engine/e/a;Lio/flutter/embedding/engine/FlutterJNI;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/flutter/view/c;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/i/b;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/j;)V

    iput-object v0, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    .line 7
    iget-object v0, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->A:Lio/flutter/view/c$i;

    invoke-virtual {v0, v1}, Lio/flutter/view/c;->a(Lio/flutter/view/c$i;)V

    .line 8
    iget-object v0, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    .line 9
    invoke-virtual {v0}, Lio/flutter/view/c;->a()Z

    move-result v0

    iget-object v1, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    .line 10
    invoke-virtual {v1}, Lio/flutter/view/c;->b()Z

    move-result v1

    .line 11
    invoke-direct {p0, v0, v1}, Lio/flutter/view/FlutterView;->a(ZZ)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterView;->o:Lg/a/c/b/a;

    invoke-virtual {v0, p1}, Lg/a/c/b/a;->a(Landroid/content/res/Configuration;)V

    .line 3
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->f()V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->n:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugin/editing/c;->a(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->e()V

    return-void
.end method

.method public onFirstFrame()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/flutter/view/FlutterView;->z:Z

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->v:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/FlutterView$d;

    .line 4
    invoke-interface {v1}, Lio/flutter/view/FlutterView$d;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/FlutterView;->q:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/AndroidTouchProcessor;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    invoke-virtual {v0, p1}, Lio/flutter/view/c;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterView;->p:Lio/flutter/embedding/android/a;

    invoke-virtual {v0, p2}, Lio/flutter/embedding/android/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterView;->p:Lio/flutter/embedding/android/a;

    invoke-virtual {v0, p2}, Lio/flutter/embedding/android/a;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onMemoryPressure()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v0}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->notifyLowMemoryWarning()V

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterView;->m:Lio/flutter/embedding/engine/i/l;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/l;->a()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->i:Lio/flutter/embedding/engine/i/d;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/d;->b()V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/c/a/a;

    .line 2
    invoke-interface {v1}, Lg/a/c/a/a;->onPostResume()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterView;->i:Lio/flutter/embedding/engine/i/d;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/d;->d()V

    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterView;->n:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/c;->a(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->t:Lio/flutter/view/FlutterView$g;

    iput p1, v0, Lio/flutter/view/FlutterView$g;->b:I

    .line 2
    iput p2, v0, Lio/flutter/view/FlutterView$g;->c:I

    .line 3
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->g()V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->i:Lio/flutter/embedding/engine/i/d;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/d;->b()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->i:Lio/flutter/embedding/engine/i/d;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/d;->c()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->q:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/AndroidTouchProcessor;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public popRoute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->g:Lio/flutter/embedding/engine/i/g;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/g;->a()V

    return-void
.end method

.method public pushRoute(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->g:Lio/flutter/embedding/engine/i/g;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/i/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public removeFirstFrameListener(Lio/flutter/view/FlutterView$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetAccessibilityTree()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->r:Lio/flutter/view/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/flutter/view/c;->d()V

    :cond_0
    return-void
.end method

.method public runFromBundle(Lio/flutter/view/f;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->assertAttached()V

    .line 2
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->d()V

    .line 3
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v0, p1}, Lio/flutter/view/e;->a(Lio/flutter/view/f;)V

    .line 4
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->c()V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/view/FlutterView;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->b()Z

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
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/e;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V

    return-void
.end method

.method public setInitialRoute(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->g:Lio/flutter/embedding/engine/i/g;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/i/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->x:Lio/flutter/view/e;

    invoke-virtual {v0, p1, p2}, Lio/flutter/view/e;->setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V

    return-void
.end method
