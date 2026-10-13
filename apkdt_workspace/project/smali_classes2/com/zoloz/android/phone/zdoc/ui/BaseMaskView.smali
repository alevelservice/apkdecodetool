.class public abstract Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;
.super Landroid/view/View;
.source "BaseMaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$FrameMaskDrawer;,
        Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$CoverMaskDrawer;,
        Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mBottomMargin:F

.field protected mCaptureRect:Landroid/graphics/RectF;

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mFramePaint:Landroid/graphics/Paint;

.field private mInvisibleHeight:F

.field private mIsDrawn:Z

.field private mLineColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x3e4ccccd    # 0.2f

    .line 2
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mInvisibleHeight:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 3
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mBottomMargin:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mIsDrawn:Z

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3e4ccccd    # 0.2f

    .line 7
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mInvisibleHeight:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 8
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mBottomMargin:F

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mIsDrawn:Z

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3e4ccccd    # 0.2f

    .line 12
    iput p3, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mInvisibleHeight:F

    const p3, 0x3f4ccccd    # 0.8f

    .line 13
    iput p3, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mBottomMargin:F

    const/4 p3, 0x0

    .line 14
    iput-boolean p3, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mIsDrawn:Z

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getColor(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/zoloz/android/phone/zdoc/R$styleable;->DefaultMaskView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lcom/zoloz/android/phone/zdoc/R$styleable;->DefaultMaskView_z_mask_background:I

    sget v2, Lcom/zoloz/android/phone/zdoc/R$color;->z_black_60:I

    .line 3
    invoke-direct {p0, v2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getColor(I)I

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mBackgroundColor:I

    .line 5
    sget v1, Lcom/zoloz/android/phone/zdoc/R$styleable;->DefaultMaskView_z_line_color:I

    sget v2, Lcom/zoloz/android/phone/zdoc/R$color;->z_white:I

    .line 6
    invoke-direct {p0, v2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getColor(I)I

    move-result v2

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mLineColor:I

    .line 8
    sget v1, Lcom/zoloz/android/phone/zdoc/R$styleable;->DefaultMaskView_z_mask_invisible_height:I

    iget v2, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mInvisibleHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mInvisibleHeight:F

    .line 9
    sget v1, Lcom/zoloz/android/phone/zdoc/R$styleable;->DefaultMaskView_z_mask_bottom_margin:I

    iget v2, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mBottomMargin:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mBottomMargin:F

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->initCustomAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCoverPaint:Landroid/graphics/Paint;

    .line 13
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCoverPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCoverPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCoverPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mFramePaint:Landroid/graphics/Paint;

    .line 17
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mFramePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mLineColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getStokeWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 21
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mFramePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private isCanRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract calcCaptureRect(II)Landroid/graphics/RectF;
.end method

.method public getCenterPositionY()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method protected abstract getCoverDrawer(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation
.end method

.method public getDocFrame()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected abstract getFrameDrawer(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation
.end method

.method public getInvisibleHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mInvisibleHeight:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getStokeWidth()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getTipsBottomMargin()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mBottomMargin:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected initCustomAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mIsDrawn:Z

    .line 2
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mIsDrawn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->isCanRefresh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->calcCaptureRect(II)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getCoverDrawer(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;

    .line 6
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getFrameDrawer(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;

    .line 9
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected varargs toList([Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ")",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
