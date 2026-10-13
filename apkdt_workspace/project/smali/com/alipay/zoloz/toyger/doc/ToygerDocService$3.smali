.class Lcom/alipay/zoloz/toyger/doc/ToygerDocService$3;
.super Ljava/lang/Object;
.source "ToygerDocService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

.field final synthetic val$copiedFrames:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$3;->this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$3;->val$copiedFrames:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$3;->val$copiedFrames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->processImage(Ljava/util/List;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;Lcom/alipay/zoloz/toyger/ToygerAttr;)V

    return-void
.end method
