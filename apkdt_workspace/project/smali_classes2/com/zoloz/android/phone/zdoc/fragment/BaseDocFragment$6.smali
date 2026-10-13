.class Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$6;
.super Ljava/lang/Object;
.source "BaseDocFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$6;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$6;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget v0, p2, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentRetryTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentRetryTimes:I

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$6;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "serverQuality_error"

    invoke-virtual {p1, v0, p2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertChoose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$6;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    sget-object p2, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p1, p2}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    return-void
.end method
