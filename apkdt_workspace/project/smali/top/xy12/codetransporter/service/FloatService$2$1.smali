.class Ltop/xy12/codetransporter/service/FloatService$2$1;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/service/FloatService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltop/xy12/codetransporter/service/FloatService$2;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/service/FloatService$2;)V
    .locals 0

    .line 180
    iput-object p1, p0, Ltop/xy12/codetransporter/service/FloatService$2$1;->this$1:Ltop/xy12/codetransporter/service/FloatService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x3e8

    .line 184
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 188
    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    .line 189
    iput v2, v1, Landroid/os/Message;->what:I

    .line 190
    iget-object v2, p0, Ltop/xy12/codetransporter/service/FloatService$2$1;->this$1:Ltop/xy12/codetransporter/service/FloatService$2;

    iget-object v2, v2, Ltop/xy12/codetransporter/service/FloatService$2;->this$0:Ltop/xy12/codetransporter/service/FloatService;

    invoke-static {v2}, Ltop/xy12/codetransporter/service/FloatService;->access$000(Ltop/xy12/codetransporter/service/FloatService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
