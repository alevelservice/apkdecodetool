.class public abstract Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;
.super Ljava/lang/Object;
.source "BaseMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbsMaskDrawer"
.end annotation


# instance fields
.field protected mPath:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;


# direct methods
.method public constructor <init>(Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;Landroid/graphics/Path;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;->this$0:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView$AbsMaskDrawer;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method
