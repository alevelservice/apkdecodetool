.class public Lcom/zoloz/android/phone/zdoc/ui/EmptyMaskView;
.super Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;
.source "EmptyMaskView.java"


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


# virtual methods
.method protected calcCaptureRect(II)Landroid/graphics/RectF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getInvisibleHeight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    int-to-float v2, v2

    int-to-float v0, v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method protected getCoverDrawer(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFrameDrawer(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTipsBottomMargin()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method
