.class public Lcom/zoloz/android/phone/zdoc/ui/PassportMaskView;
.super Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;
.source "PassportMaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoloz/android/phone/zdoc/ui/PassportMaskView$MRZMarkDrawer;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private createCoverPath()Landroid/graphics/Path;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method private createFramePath()Landroid/graphics/Path;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 4
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v3, 0x43c20000    # 388.0f

    mul-float v1, v1, v3

    const/high16 v3, 0x43e00000    # 448.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 7
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method


# virtual methods
.method protected calcCaptureRect(II)Landroid/graphics/RectF;
    .locals 9

    int-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int p1, v2

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v2, v2

    int-to-double v3, p2

    const-wide v5, 0x3fc3333333333333L    # 0.15

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    double-to-int p2, v5

    int-to-double v5, p2

    const-wide v7, 0x3fe999999999999aL    # 0.8

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v7

    const-wide/high16 v7, 0x407c000000000000L    # 448.0

    mul-double v0, v0, v7

    const-wide v7, 0x4073b00000000000L    # 315.0

    div-double/2addr v0, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v0

    double-to-int v0, v5

    .line 5
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getInvisibleHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v1, v5, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getInvisibleHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide v5, 0x3fa999999999999aL    # 0.05

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v3

    double-to-int v0, v0

    sub-int p1, v0, p2

    mul-int/lit16 p1, p1, 0x13b

    int-to-float p1, p1

    const/high16 v1, 0x43e00000    # 448.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int v2, v1, p1

    move p1, v1

    .line 8
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-direct {v1, p1, p2, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method protected getCoverDrawer(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;

    .line 1
    new-instance p2, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$CoverMaskDrawer;

    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/ui/PassportMaskView;->createCoverPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$CoverMaskDrawer;-><init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->toList([Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getFrameDrawer(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;

    .line 1
    new-instance p2, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$FrameMaskDrawer;

    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/ui/PassportMaskView;->createFramePath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$FrameMaskDrawer;-><init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->toList([Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTipsBottomMargin()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method
