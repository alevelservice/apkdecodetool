.class public Le/g/a/a/a;
.super Ljava/lang/Object;
.source "KeyboardVisibilityPlugin.java"

# interfaces
.implements Lg/a/c/a/d$d;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field e:Landroid/view/View;

.field f:Lg/a/c/a/d$b;

.field g:Z


# direct methods
.method constructor <init>(Lg/a/c/a/m$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/g/a/a/a;->e:Landroid/view/View;

    .line 3
    iput-object p1, p0, Le/g/a/a/a;->f:Lg/a/c/a/d$b;

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/g/a/a/a;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/g/a/a/a;->e:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public static a(Lg/a/c/a/m$d;)V
    .locals 3

    .line 4
    new-instance v0, Lg/a/c/a/d;

    invoke-interface {p0}, Lg/a/c/a/m$d;->d()Lg/a/c/a/c;

    move-result-object v1

    const-string v2, "github.com/adee42/flutter_keyboard_visibility"

    invoke-direct {v0, v1, v2}, Lg/a/c/a/d;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    .line 5
    new-instance v1, Le/g/a/a/a;

    invoke-direct {v1, p0}, Le/g/a/a/a;-><init>(Lg/a/c/a/m$d;)V

    .line 6
    invoke-virtual {v0, v1}, Lg/a/c/a/d;->a(Lg/a/c/a/d$d;)V

    .line 7
    invoke-interface {p0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Le/g/a/a/a;->f:Lg/a/c/a/d$b;

    return-void
.end method

.method public a(Ljava/lang/Object;Lg/a/c/a/d$b;)V
    .locals 0

    .line 8
    iput-object p2, p0, Le/g/a/a/a;->f:Lg/a/c/a/d$b;

    .line 9
    iget-boolean p1, p0, Le/g/a/a/a;->g:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/d$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/g/a/a/a;->a()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x1020002

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/g/a/a/a;->e:Landroid/view/View;

    .line 2
    iget-object p1, p0, Le/g/a/a/a;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/g/a/a/a;->a()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Le/g/a/a/a;->e:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Le/g/a/a/a;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x3feb333333333333L    # 0.85

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-boolean v1, p0, Le/g/a/a/a;->g:Z

    if-eq v0, v1, :cond_1

    .line 6
    iput-boolean v0, p0, Le/g/a/a/a;->g:Z

    .line 7
    iget-object v0, p0, Le/g/a/a/a;->f:Lg/a/c/a/d$b;

    if-eqz v0, :cond_1

    .line 8
    iget-boolean v1, p0, Le/g/a/a/a;->g:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/a/c/a/d$b;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
