.class Lcom/alipay/zoloz/zface/ui/util/AlertUtil$17;
.super Ljava/lang/Object;
.source "AlertUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$17;->this$0:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$17;->this$0:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-static {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->access$200(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;->retryUpload()V

    return-void
.end method
