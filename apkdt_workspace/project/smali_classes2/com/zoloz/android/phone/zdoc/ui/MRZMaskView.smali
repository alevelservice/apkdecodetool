.class public Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;
.super Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;
.source "MRZMaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView$MRZMarkDrawer;
    }
.end annotation


# static fields
.field public static final BOTTOM_RADII:[F

.field public static final ROUND_CORNER:F = 30.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;->BOTTOM_RADII:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

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

.method private createFramePath()Landroid/graphics/Path;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    sget-object v2, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;->BOTTOM_RADII:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method private createPath()Landroid/graphics/Path;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    sget-object v2, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;->BOTTOM_RADII:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method private createWriteCoverPath()Landroid/graphics/Path;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->mCaptureRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 3
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 4
    sget-object v2, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;->BOTTOM_RADII:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-object v1
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

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float p1, p1, v2

    const/high16 v2, 0x44320000    # 712.0f

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;

    .line 1
    new-instance p2, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$CoverMaskDrawer;

    .line 2
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;->createPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$CoverMaskDrawer;-><init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    new-instance p2, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView$MRZMarkDrawer;

    .line 3
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;->createWriteCoverPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView$MRZMarkDrawer;-><init>(Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;Landroid/graphics/Path;)V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 4
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

    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;->createFramePath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$FrameMaskDrawer;-><init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->toList([Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
