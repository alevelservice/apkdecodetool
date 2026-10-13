.class Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView$MRZMarkDrawer;
.super Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;
.source "MRZMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRZMarkDrawer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;


# direct methods
.method public constructor <init>(Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;Landroid/graphics/Path;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView$MRZMarkDrawer;->this$0:Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;-><init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;->mPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 3
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView$MRZMarkDrawer;->this$0:Lcom/zoloz/android/phone/zdoc/ui/MRZMaskView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/zoloz/android/phone/zdoc/R$color;->z_white_50:I

    invoke-static {p2, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
