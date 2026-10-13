.class Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;
.super Ljava/lang/Object;
.source "ToygerFaceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->release()V

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
