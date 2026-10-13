.class Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager$1;
.super Ljava/util/TimerTask;
.source "DocMonitorFrameManager.java"


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

.field final synthetic val$callback:Lcom/zoloz/android/phone/zdoc/service/IMonitorCallback;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;Lcom/zoloz/android/phone/zdoc/service/IMonitorCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager$1;->this$0:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    iput-object p2, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager$1;->val$callback:Lcom/zoloz/android/phone/zdoc/service/IMonitorCallback;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager$1;->this$0:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    invoke-static {v0}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->access$000(Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;)I

    move-result v0

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager$1;->this$0:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    invoke-static {v1}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->access$100(Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;)Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getMonitorMaxFrameCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager$1;->val$callback:Lcom/zoloz/android/phone/zdoc/service/IMonitorCallback;

    invoke-interface {v0}, Lcom/zoloz/android/phone/zdoc/service/IMonitorCallback;->onTimeout()V

    :cond_0
    return-void
.end method
