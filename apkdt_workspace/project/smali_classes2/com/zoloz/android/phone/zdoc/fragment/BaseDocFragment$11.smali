.class Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$11;
.super Ljava/lang/Object;
.source "BaseDocFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

.field final synthetic val$bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$11;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iput-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$11;->val$bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$11;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "overthreshold_error"

    invoke-virtual {p1, v0, p2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertChoose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$11;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$11;->val$bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    const/16 v0, 0xd1

    invoke-virtual {p1, v0, p2}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->responseWithCode(ILcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    return-void
.end method
