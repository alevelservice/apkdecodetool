.class Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1$1;
.super Ljava/lang/Object;
.source "ZFaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1$1;->this$1:Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1$1;->this$1:Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1;

    iget-object v0, v0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1;->this$0:Lcom/alipay/zoloz/zface/ui/ZFaceActivity;

    invoke-static {v0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->access$100(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertTimeOut()V

    return-void
.end method
