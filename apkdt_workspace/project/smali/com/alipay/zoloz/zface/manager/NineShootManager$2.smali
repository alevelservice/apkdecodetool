.class Lcom/alipay/zoloz/zface/manager/NineShootManager$2;
.super Ljava/lang/Object;
.source "NineShootManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/zface/manager/NineShootManager;

.field final synthetic val$frameCopy:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

.field final synthetic val$tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/zface/manager/NineShootManager;Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->this$0:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    iput-object p2, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->val$frameCopy:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    iput-object p3, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->val$tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, ", count="

    const-string v1, "NineShootManager.addMonitoryFrame() : "

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->this$0:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    invoke-static {v2}, Lcom/alipay/zoloz/zface/manager/NineShootManager;->access$100(Lcom/alipay/zoloz/zface/manager/NineShootManager;)Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->this$0:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    invoke-static {v2}, Lcom/alipay/zoloz/zface/manager/NineShootManager;->access$100(Lcom/alipay/zoloz/zface/manager/NineShootManager;)Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->val$frameCopy:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-virtual {v2, v3}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManager;->addMonitorFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->this$0:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    invoke-static {v2}, Lcom/alipay/zoloz/zface/manager/NineShootManager;->access$208(Lcom/alipay/zoloz/zface/manager/NineShootManager;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->val$tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->this$0:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    .line 5
    invoke-static {v0}, Lcom/alipay/zoloz/zface/manager/NineShootManager;->access$200(Lcom/alipay/zoloz/zface/manager/NineShootManager;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    throw v2

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->val$tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/NineShootManager$2;->this$0:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    .line 7
    invoke-static {v0}, Lcom/alipay/zoloz/zface/manager/NineShootManager;->access$200(Lcom/alipay/zoloz/zface/manager/NineShootManager;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
