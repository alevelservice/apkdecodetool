.class public Landroidx/lifecycle/o;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/o$b;,
        Landroidx/lifecycle/o$a;
    }
.end annotation


# instance fields
.field private e:Landroidx/lifecycle/o$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/o$b;

    invoke-direct {v0}, Landroidx/lifecycle/o$b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/o;

    invoke-direct {v2}, Landroidx/lifecycle/o;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 6
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method static a(Landroid/app/Activity;Landroidx/lifecycle/e$a;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    instance-of v0, p0, Landroidx/lifecycle/j;

    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Landroidx/lifecycle/j;

    invoke-interface {p0}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void

    .line 9
    :cond_0
    instance-of v0, p0, Landroidx/lifecycle/h;

    if-eqz v0, :cond_1

    .line 10
    check-cast p0, Landroidx/lifecycle/h;

    invoke-interface {p0}, Landroidx/lifecycle/h;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p0

    .line 11
    instance-of v0, p0, Landroidx/lifecycle/i;

    if-eqz v0, :cond_1

    .line 12
    check-cast p0, Landroidx/lifecycle/i;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    :cond_1
    return-void
.end method

.method private a(Landroidx/lifecycle/e$a;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/o;->a(Landroid/app/Activity;Landroidx/lifecycle/e$a;)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/lifecycle/o$a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Landroidx/lifecycle/o$a;->a()V

    :cond_0
    return-void
.end method

.method private b(Landroidx/lifecycle/o$a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/o$a;->onResume()V

    :cond_0
    return-void
.end method

.method private c(Landroidx/lifecycle/o$a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/o$a;->onStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/o;->e:Landroidx/lifecycle/o$a;

    invoke-direct {p0, p1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/o$a;)V

    .line 3
    sget-object p1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-direct {p0, p1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    sget-object v0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/lifecycle/o;->e:Landroidx/lifecycle/o$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/o;->e:Landroidx/lifecycle/o$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/o$a;)V

    .line 3
    sget-object v0, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/o;->e:Landroidx/lifecycle/o$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->c(Landroidx/lifecycle/o$a;)V

    .line 3
    sget-object v0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    sget-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method
