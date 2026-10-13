.class final Lio/flutter/embedding/android/FlutterSplashView;
.super Landroid/widget/FrameLayout;
.source "FlutterSplashView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterSplashView$SavedState;
    }
.end annotation


# static fields
.field private static n:Ljava/lang/String; = "FlutterSplashView"


# instance fields
.field private e:Lio/flutter/embedding/android/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lio/flutter/embedding/android/FlutterView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Lio/flutter/embedding/android/FlutterView$d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final l:Lio/flutter/embedding/engine/h/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final m:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


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
    invoke-direct {p0, p1, v0, v1}, Lio/flutter/embedding/android/FlutterSplashView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lio/flutter/embedding/android/FlutterSplashView$a;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterSplashView$a;-><init>(Lio/flutter/embedding/android/FlutterSplashView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView;->k:Lio/flutter/embedding/android/FlutterView$d;

    .line 4
    new-instance p1, Lio/flutter/embedding/android/FlutterSplashView$b;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterSplashView$b;-><init>(Lio/flutter/embedding/android/FlutterSplashView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView;->l:Lio/flutter/embedding/engine/h/b;

    .line 5
    new-instance p1, Lio/flutter/embedding/android/FlutterSplashView$c;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterSplashView$c;-><init>(Lio/flutter/embedding/android/FlutterSplashView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView;->m:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSaveEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/android/FlutterSplashView;)Lio/flutter/embedding/android/FlutterView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    return-object p0
.end method

.method static synthetic a(Lio/flutter/embedding/android/FlutterSplashView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->getAttachedFlutterEngine()Lio/flutter/embedding/engine/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    .line 27
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->getAttachedFlutterEngine()Lio/flutter/embedding/engine/a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSplashView;->j:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine if splash has completed when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine if splash has completed when no FlutterView is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lio/flutter/embedding/android/FlutterSplashView;)Lio/flutter/embedding/android/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterSplashView;->e:Lio/flutter/embedding/android/i;

    return-object p0
.end method

.method private b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    .line 4
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->hasRenderedFirstFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSplashView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Lio/flutter/embedding/android/FlutterSplashView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSplashView;->d()V

    return-void
.end method

.method private c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->e:Lio/flutter/embedding/android/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lio/flutter/embedding/android/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSplashView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lio/flutter/embedding/android/FlutterSplashView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterSplashView;->g:Landroid/view/View;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    .line 3
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->getAttachedFlutterEngine()Lio/flutter/embedding/engine/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->i:Ljava/lang/String;

    .line 4
    sget-object v0, Lio/flutter/embedding/android/FlutterSplashView;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transitioning splash screen to a Flutter UI. Isolate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterSplashView;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->e:Lio/flutter/embedding/android/i;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSplashView;->m:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lio/flutter/embedding/android/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lio/flutter/embedding/android/FlutterSplashView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterSplashView;->i:Ljava/lang/String;

    return-object p0
.end method

.method private e()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->hasRenderedFirstFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSplashView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine if previous splash transition was interrupted when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine if previous splash transition was interrupted when no FlutterView is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lio/flutter/embedding/android/FlutterView;Lio/flutter/embedding/android/i;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/android/FlutterView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/android/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSplashView;->l:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterView;->removeOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/h/b;)V

    .line 5
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 8
    :cond_1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView;->f:Lio/flutter/embedding/android/FlutterView;

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    iput-object p2, p0, Lio/flutter/embedding/android/FlutterSplashView;->e:Lio/flutter/embedding/android/i;

    if-eqz p2, :cond_4

    .line 11
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSplashView;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lio/flutter/embedding/android/FlutterSplashView;->n:Ljava/lang/String;

    const-string v1, "Showing splash screen UI."

    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSplashView;->h:Landroid/os/Bundle;

    invoke-interface {p2, v0, v1}, Lio/flutter/embedding/android/i;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterSplashView;->g:Landroid/view/View;

    .line 14
    iget-object p2, p0, Lio/flutter/embedding/android/FlutterSplashView;->g:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 15
    iget-object p2, p0, Lio/flutter/embedding/android/FlutterSplashView;->l:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/android/FlutterView;->addOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/h/b;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSplashView;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    sget-object p1, Lio/flutter/embedding/android/FlutterSplashView;->n:Ljava/lang/String;

    const-string v0, "Showing an immediate splash transition to Flutter due to previously interrupted transition."

    invoke-static {p1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->h:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lio/flutter/embedding/android/i;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView;->g:Landroid/view/View;

    .line 19
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView;->g:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 20
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSplashView;->d()V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p1}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result p2

    if-nez p2, :cond_4

    .line 22
    sget-object p2, Lio/flutter/embedding/android/FlutterSplashView;->n:Ljava/lang/String;

    const-string v0, "FlutterView is not yet attached to a FlutterEngine. Showing nothing until a FlutterEngine is attached."

    invoke-static {p2, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lio/flutter/embedding/android/FlutterSplashView;->k:Lio/flutter/embedding/android/FlutterView$d;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/android/FlutterView;->addFlutterEngineAttachmentListener(Lio/flutter/embedding/android/FlutterView$d;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lio/flutter/embedding/android/FlutterSplashView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSplashView$SavedState;->access$600(Lio/flutter/embedding/android/FlutterSplashView$SavedState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->j:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSplashView$SavedState;->access$700(Lio/flutter/embedding/android/FlutterSplashView$SavedState;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView;->h:Landroid/os/Bundle;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lio/flutter/embedding/android/FlutterSplashView$SavedState;

    invoke-direct {v1, v0}, Lio/flutter/embedding/android/FlutterSplashView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/flutter/embedding/android/FlutterSplashView$SavedState;->access$602(Lio/flutter/embedding/android/FlutterSplashView$SavedState;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSplashView;->e:Lio/flutter/embedding/android/i;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lio/flutter/embedding/android/i;->b()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v1, v0}, Lio/flutter/embedding/android/FlutterSplashView$SavedState;->access$702(Lio/flutter/embedding/android/FlutterSplashView$SavedState;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v1
.end method
