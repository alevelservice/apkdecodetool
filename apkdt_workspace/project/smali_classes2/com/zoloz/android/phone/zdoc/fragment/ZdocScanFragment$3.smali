.class Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;
.super Ljava/lang/Object;
.source "ZdocScanFragment.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countdown(I)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->access$000(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->access$000(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->isTimeOut()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordOverTime()V

    .line 3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordEndScan(Z)V

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->retry()V

    .line 5
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->ALERT:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 7
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget v0, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentRetryTimes:I

    iget v1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMaxRetryTimes:I

    if-ge v0, v1, :cond_1

    .line 8
    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v0, "overtime_error"

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertAppear(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget-object v0, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    sget v1, Lcom/zoloz/android/phone/zdoc/R$string;->alert_timeout_error_title:I

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    sget v2, Lcom/zoloz/android/phone/zdoc/R$string;->alert_timeout_error_msg:I

    .line 10
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    sget v3, Lcom/zoloz/android/phone/zdoc/R$string;->btn_retry:I

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3$1;

    invoke-direct {v4, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3$1;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;)V

    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    sget v5, Lcom/zoloz/android/phone/zdoc/R$string;->btn_exit:I

    .line 11
    invoke-virtual {p1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3$2;

    invoke-direct {v6, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3$2;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;)V

    .line 12
    invoke-virtual/range {v0 .. v6}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->failQuit(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    new-instance v0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3$3;

    invoke-direct {v0, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3$3;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;)V

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
