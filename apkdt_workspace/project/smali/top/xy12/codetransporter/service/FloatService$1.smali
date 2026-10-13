.class Ltop/xy12/codetransporter/service/FloatService$1;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/service/FloatService;->createWindowView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastX:I

.field lastY:I

.field paramX:I

.field paramY:I

.field final synthetic this$0:Ltop/xy12/codetransporter/service/FloatService;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/service/FloatService;)V
    .locals 0

    .line 99
    iput-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Ltop/xy12/codetransporter/service/FloatService$1;->lastX:I

    sub-int/2addr p1, v0

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget v0, p0, Ltop/xy12/codetransporter/service/FloatService$1;->lastY:I

    sub-int/2addr p2, v0

    .line 116
    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService$1;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object v0, v0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->paramX:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 117
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object p1, p1, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Ltop/xy12/codetransporter/service/FloatService$1;->paramY:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 119
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object p1, p1, Ltop/xy12/codetransporter/service/FloatService;->windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Ltop/xy12/codetransporter/service/FloatService$1;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object p2, p2, Ltop/xy12/codetransporter/service/FloatService;->btnView:Landroid/widget/Button;

    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService$1;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object v0, v0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->lastX:I

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->lastY:I

    .line 110
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object p1, p1, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->paramX:I

    .line 111
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object p1, p1, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Ltop/xy12/codetransporter/service/FloatService$1;->paramY:I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
