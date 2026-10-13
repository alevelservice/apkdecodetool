.class Lcom/alipay/zoloz/zface/services/ToygerIspService$1;
.super Ljava/lang/Object;
.source "ToygerIspService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/zface/services/ToygerIspService;

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$tgDepthFrame:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;

.field final synthetic val$tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/zface/services/ToygerIspService;Landroid/graphics/Rect;Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/zface/services/ToygerIspService$1;->this$0:Lcom/alipay/zoloz/zface/services/ToygerIspService;

    iput-object p2, p0, Lcom/alipay/zoloz/zface/services/ToygerIspService$1;->val$rect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/alipay/zoloz/zface/services/ToygerIspService$1;->val$tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    iput-object p4, p0, Lcom/alipay/zoloz/zface/services/ToygerIspService$1;->val$tgDepthFrame:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/services/ToygerIspService$1;->this$0:Lcom/alipay/zoloz/zface/services/ToygerIspService;

    iget-object v1, p0, Lcom/alipay/zoloz/zface/services/ToygerIspService$1;->val$rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alipay/zoloz/zface/services/ToygerIspService$1;->val$tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    iget-object v2, v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    iget-object v3, p0, Lcom/alipay/zoloz/zface/services/ToygerIspService$1;->val$tgDepthFrame:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;

    iget-object v3, v3, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/zoloz/zface/services/ToygerIspService;->access$000(Lcom/alipay/zoloz/zface/services/ToygerIspService;Landroid/graphics/Rect;[B[S)V

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/zface/services/ToygerIspService$1;->this$0:Lcom/alipay/zoloz/zface/services/ToygerIspService;

    invoke-static {v0}, Lcom/alipay/zoloz/zface/services/ToygerIspService;->access$200(Lcom/alipay/zoloz/zface/services/ToygerIspService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/zoloz/zface/services/ToygerIspService$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/zoloz/zface/services/ToygerIspService$1$1;-><init>(Lcom/alipay/zoloz/zface/services/ToygerIspService$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
