.class Lcom/alipay/zoloz/zface/ui/util/AlertUtil$13;
.super Ljava/lang/Object;
.source "AlertUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

.field final synthetic val$subCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$13;->this$0:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    iput-object p2, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$13;->val$subCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$13;->val$subCode:Ljava/lang/String;

    sget-object p2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_UNSUPPORTED_CPU:Ljava/lang/String;

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$13;->this$0:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-static {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->access$200(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;

    move-result-object p1

    const/16 p2, 0x66

    sget-object v0, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->USER_UNSURPPORT_CPU:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;->sendResponse(ILjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_NO_FRANT_CAMERA:Ljava/lang/String;

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$13;->this$0:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-static {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->access$200(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;

    move-result-object p1

    const/16 p2, 0x65

    sget-object v0, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->ERROR_CAMERA:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;->sendResponse(ILjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$13;->this$0:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-static {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->access$200(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;

    move-result-object p1

    const/16 p2, 0x69

    sget-object v0, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->ANDROID_VERSION_LOW:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;->sendResponse(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
