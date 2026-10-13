.class Lcom/alipay/zoloz/toyger/face/ToygerFaceService$3;
.super Ljava/lang/Object;
.source "ToygerFaceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$3;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->reset()V

    return-void
.end method
