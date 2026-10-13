.class public Lcom/zoloz/android/phone/zdoc/ui/DefaultMaskView;
.super Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;
.source "DefaultMaskView.java"


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

.method private createPath(II)Landroid/graphics/Path;
    .locals 2

    .line 1
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-object p1
.end method


# virtual methods
.method protected calcCaptureRect(II)Landroid/graphics/RectF;
    .locals 3

    int-to-float p1, p1

    const v0, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, p1

    float-to-int v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float p1, p1, v1

    float-to-int v1, p1

    int-to-float p2, p2

    const v2, 0x3e4ccccd    # 0.2f

    mul-float p2, p2, v2

    float-to-int p2, p2

    int-to-float p2, p2

    const/high16 v2, 0x43da0000    # 436.0f

    mul-float p1, p1, v2

    const v2, 0x442a8000    # 682.0f

    div-float/2addr p1, v2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 1
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float p1, p1

    invoke-direct {v2, v0, p2, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method protected getCoverDrawer(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;

    .line 1
    new-instance v1, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$CoverMaskDrawer;

    invoke-direct {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/DefaultMaskView;->createPath(II)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$CoverMaskDrawer;-><init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->toList([Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getFrameDrawer(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;

    .line 1
    new-instance v1, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$FrameMaskDrawer;

    invoke-direct {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/DefaultMaskView;->createPath(II)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$FrameMaskDrawer;-><init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->toList([Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
