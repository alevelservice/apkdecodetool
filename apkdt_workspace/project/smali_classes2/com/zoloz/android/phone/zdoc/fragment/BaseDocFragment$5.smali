.class Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;
.super Ljava/lang/Object;
.source "BaseDocFragment.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object v0, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordBasicCheck()V

    .line 2
    iget v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d2

    if-eq v0, v1, :cond_1

    const/16 p1, 0xbb9

    if-eq v0, p1, :cond_0

    const/16 p1, 0xbba

    if-eq v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {p1, v3, v2, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordUploadEnd(III)V

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_FAIL:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 5
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->ALERT:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 6
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->alertSystemError()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->access$000(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object p1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->access$200(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;Ljava/util/Map;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object v1, v1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {v1, v3, v2, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordUploadEnd(III)V

    .line 10
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_FAIL:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 11
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-virtual {v0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->failQuit(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->access$100(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object v0, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {v0, v3, v3, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordUploadEnd(III)V

    .line 14
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_SUCCESS:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5$1;

    invoke-direct {v1, p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5$1;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    const-wide/16 v3, 0x320

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v2
.end method
