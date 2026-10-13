.class Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5$1;
.super Ljava/lang/Object;
.source "BaseDocFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;

.field final synthetic val$bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5$1;->this$1:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;

    iput-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5$1;->val$bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5$1;->this$1:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;

    iget-object v0, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object v0, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->dismissDialog()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5$1;->this$1:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;

    iget-object v0, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    const/16 v1, 0x1f4

    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5$1;->val$bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-virtual {v0, v1, v2}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->responseWithCode(ILcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    return-void
.end method
