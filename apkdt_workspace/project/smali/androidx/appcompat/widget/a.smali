.class abstract Landroidx/appcompat/widget/a;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/a$b;
    }
.end annotation


# instance fields
.field private e:Z

.field private f:Z

.field protected mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field protected mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Landroidx/appcompat/widget/a$b;

.field protected mVisibilityAnim:Landroidx/core/view/a0;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroidx/appcompat/widget/a$b;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/a$b;-><init>(Landroidx/appcompat/widget/a;)V

    iput-object p2, p0, Landroidx/appcompat/widget/a;->mVisAnimListener:Landroidx/appcompat/widget/a$b;

    .line 5
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v0, La/a/a;->actionBarPopupTheme:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_0

    .line 7
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Landroidx/appcompat/widget/a;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/a;->mPopupContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method static synthetic access$001(Landroidx/appcompat/widget/a;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Landroidx/appcompat/widget/a;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static next(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/widget/a;->setupAnimatorToVisibility(IJ)Landroidx/core/view/a0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/core/view/a0;->c()V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/a;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->mVisibilityAnim:Landroidx/core/view/a0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/a;->mVisAnimListener:Landroidx/appcompat/widget/a$b;

    iget v0, v0, Landroidx/appcompat/widget/a$b;->b:I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/a;->mContentHeight:I

    return v0
.end method

.method public abstract hideOverflowMenu()Z
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isOverflowMenuShowing()Z
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, p4

    const/4 p1, 0x0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, La/a/j;->ActionBar:[I

    sget v2, La/a/a;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    sget v1, La/a/j;->ActionBar_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/a;->setContentHeight(I)V

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/a;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->f:Z

    .line 3
    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/a;->f:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v4, p0, Landroidx/appcompat/widget/a;->f:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->f:Z

    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->e:Z

    .line 3
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/a;->e:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v3, p0, Landroidx/appcompat/widget/a;->e:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->e:Z

    :cond_3
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    .line 3
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-eqz p5, :cond_0

    sub-int p4, p2, v0

    add-int/2addr v1, p3

    .line 4
    invoke-virtual {p1, p4, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    add-int p4, p2, v0

    add-int/2addr v1, p3

    .line 5
    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p5, :cond_1

    neg-int v0, v0

    :cond_1
    return v0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/a$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/a$a;-><init>(Landroidx/appcompat/widget/a;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract setContentHeight(I)V
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/a;->mVisibilityAnim:Landroidx/core/view/a0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/core/view/a0;->a()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroidx/core/view/a0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->mVisibilityAnim:Landroidx/core/view/a0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/core/view/a0;->a()V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 5
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;)Landroidx/core/view/a0;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/core/view/a0;->a(F)Landroidx/core/view/a0;

    .line 6
    invoke-virtual {v0, p2, p3}, Landroidx/core/view/a0;->a(J)Landroidx/core/view/a0;

    .line 7
    iget-object p2, p0, Landroidx/appcompat/widget/a;->mVisAnimListener:Landroidx/appcompat/widget/a$b;

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/widget/a$b;->a(Landroidx/core/view/a0;I)Landroidx/appcompat/widget/a$b;

    invoke-virtual {v0, p2}, Landroidx/core/view/a0;->a(Landroidx/core/view/b0;)Landroidx/core/view/a0;

    return-object v0

    .line 8
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;)Landroidx/core/view/a0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/view/a0;->a(F)Landroidx/core/view/a0;

    .line 9
    invoke-virtual {v1, p2, p3}, Landroidx/core/view/a0;->a(J)Landroidx/core/view/a0;

    .line 10
    iget-object p2, p0, Landroidx/appcompat/widget/a;->mVisAnimListener:Landroidx/appcompat/widget/a$b;

    invoke-virtual {p2, v1, p1}, Landroidx/appcompat/widget/a$b;->a(Landroidx/core/view/a0;I)Landroidx/appcompat/widget/a$b;

    invoke-virtual {v1, p2}, Landroidx/core/view/a0;->a(Landroidx/core/view/b0;)Landroidx/core/view/a0;

    return-object v1
.end method

.method public abstract showOverflowMenu()Z
.end method
