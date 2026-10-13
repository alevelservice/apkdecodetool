.class public Le/m/b/u;
.super Ljava/lang/Object;
.source "MapboxMapsPlugin.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:I


# direct methods
.method private constructor <init>(Lg/a/c/a/m$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Le/m/b/u;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-interface {p1}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Le/m/b/u;->f:I

    return-void
.end method

.method public static a(Lg/a/c/a/m$d;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Le/m/b/u;

    invoke-direct {v0, p0}, Le/m/b/u;-><init>(Lg/a/c/a/m$d;)V

    .line 3
    invoke-interface {p0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    invoke-interface {p0}, Lg/a/c/a/m$d;->e()Lio/flutter/plugin/platform/h;

    move-result-object v1

    new-instance v2, Le/m/b/s;

    iget-object v0, v0, Le/m/b/u;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0, p0}, Le/m/b/s;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lg/a/c/a/m$d;)V

    const-string v0, "plugins.flutter.io/mapbox_gl"

    .line 5
    invoke-interface {v1, v0, v2}, Lio/flutter/plugin/platform/h;->a(Ljava/lang/String;Lio/flutter/plugin/platform/g;)Z

    .line 6
    new-instance v1, Lg/a/c/a/k;

    .line 7
    invoke-interface {p0}, Lg/a/c/a/m$d;->d()Lg/a/c/a/c;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    .line 8
    new-instance v0, Le/m/b/m;

    invoke-direct {v0, p0}, Le/m/b/m;-><init>(Lg/a/c/a/m$d;)V

    invoke-virtual {v1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget p2, p0, Le/m/b/u;->f:I

    if-eq p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/u;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/u;->f:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/u;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/u;->f:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/u;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/u;->f:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/u;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/u;->f:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/u;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/u;->f:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/u;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
