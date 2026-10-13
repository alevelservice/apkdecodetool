.class Ltop/xy12/codetransporter/service/FloatService$2;
.super Landroid/os/Handler;
.source "FloatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/xy12/codetransporter/service/FloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/xy12/codetransporter/service/FloatService;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/service/FloatService;)V
    .locals 0

    .line 172
    iput-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 175
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget v0, v0, Ltop/xy12/codetransporter/service/FloatService;->HANDLE_CHECK_ACTIVITY:I

    if-ne p1, v0, :cond_1

    .line 177
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object p1, p1, Ltop/xy12/codetransporter/service/FloatService;->isAdded:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 178
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object p1, p1, Ltop/xy12/codetransporter/service/FloatService;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object v0, v0, Ltop/xy12/codetransporter/service/FloatService;->btnView:Landroid/widget/Button;

    iget-object v1, p0, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget-object v1, v1, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ltop/xy12/codetransporter/service/FloatService;->isAdded:Ljava/lang/Boolean;

    .line 180
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Ltop/xy12/codetransporter/service/FloatService$2$1;

    invoke-direct {v0, p0}, Ltop/xy12/codetransporter/service/FloatService$2$1;-><init>(Ltop/xy12/codetransporter/service/FloatService$2;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 193
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 201
    :cond_0
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    invoke-static {p1}, Ltop/xy12/codetransporter/service/FloatService;->access$000(Ltop/xy12/codetransporter/service/FloatService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    iget v0, v0, Ltop/xy12/codetransporter/service/FloatService;->HANDLE_CHECK_ACTIVITY:I

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
