.class Lcom/ap/zoloz/hummer/common/WebTask$1;
.super Ljava/lang/Object;
.source "WebTask.java"

# interfaces
.implements Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;


# instance fields
.field final synthetic this$0:Lcom/ap/zoloz/hummer/common/WebTask;

.field final synthetic val$taskConfig:Lcom/ap/zoloz/hummer/common/TaskConfig;


# direct methods
.method constructor <init>(Lcom/ap/zoloz/hummer/common/WebTask;Lcom/ap/zoloz/hummer/common/TaskConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ap/zoloz/hummer/common/WebTask$1;->this$0:Lcom/ap/zoloz/hummer/common/WebTask;

    iput-object p2, p0, Lcom/ap/zoloz/hummer/common/WebTask$1;->val$taskConfig:Lcom/ap/zoloz/hummer/common/TaskConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandelNetworkError(Z)V
    .locals 0

    return-void
.end method

.method public onHandelSystemError()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ap/zoloz/hummer/common/WebTask$1;->this$0:Lcom/ap/zoloz/hummer/common/WebTask;

    iget-object v1, v0, Lcom/ap/zoloz/hummer/common/TaskTracker;->mITaskTrackerCallback:Lcom/ap/zoloz/hummer/common/ITaskTrackerCallback;

    iget-object v0, v0, Lcom/ap/zoloz/hummer/common/TaskTracker;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    iget-object v2, p0, Lcom/ap/zoloz/hummer/common/WebTask$1;->val$taskConfig:Lcom/ap/zoloz/hummer/common/TaskConfig;

    iget-object v2, v2, Lcom/ap/zoloz/hummer/common/TaskConfig;->navigateConfig:Lcom/ap/zoloz/hummer/common/NavigateConfig;

    iget-object v2, v2, Lcom/ap/zoloz/hummer/common/NavigateConfig;->error:Ljava/util/Map;

    const-string v3, "index"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/ap/zoloz/hummer/common/ITaskTrackerCallback;->onCompletion(Lcom/ap/zoloz/hummer/common/HummerContext;I)V

    return-void
.end method
