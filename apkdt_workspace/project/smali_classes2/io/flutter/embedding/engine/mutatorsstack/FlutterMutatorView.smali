.class public Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
.super Landroid/widget/FrameLayout;
.source "FlutterMutatorView.java"


# instance fields
.field private e:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Lio/flutter/embedding/android/AndroidTouchProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->f:F

    .line 6
    iput-object v0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->k:Lio/flutter/embedding/android/AndroidTouchProcessor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLio/flutter/embedding/android/AndroidTouchProcessor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/embedding/android/AndroidTouchProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput p2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->f:F

    .line 3
    iput-object p3, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->k:Lio/flutter/embedding/android/AndroidTouchProcessor;

    return-void
.end method

.method private getPlatformViewMatrix()Landroid/graphics/Matrix;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->e:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->getFinalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 2
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->f:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->g:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->h:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->getPlatformViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->e:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->getFinalClippingPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 3
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 4
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->g:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->h:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->offset(FF)V

    .line 5
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->k:Lio/flutter/embedding/android/AndroidTouchProcessor;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 5
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 6
    :cond_1
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->g:I

    iput v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->i:I

    .line 8
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->h:I

    iput v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->j:I

    goto :goto_0

    .line 9
    :cond_2
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->g:I

    iput v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->i:I

    .line 10
    iget v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->h:I

    iput v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->j:I

    int-to-float v1, v1

    int-to-float v2, v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 12
    :goto_0
    iget-object v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->k:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v1, p1, v0}, Lio/flutter/embedding/android/AndroidTouchProcessor;->a(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public readyToDisplay(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;IIII)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->e:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    .line 2
    iput p2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->g:I

    .line 3
    iput p3, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->h:I

    .line 4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 6
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method
