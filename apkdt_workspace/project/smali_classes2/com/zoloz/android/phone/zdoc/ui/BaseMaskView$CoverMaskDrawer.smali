.class public Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$CoverMaskDrawer;
.super Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;
.source "BaseMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CoverMaskDrawer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;


# direct methods
.method public constructor <init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$CoverMaskDrawer;->this$0:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;-><init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
