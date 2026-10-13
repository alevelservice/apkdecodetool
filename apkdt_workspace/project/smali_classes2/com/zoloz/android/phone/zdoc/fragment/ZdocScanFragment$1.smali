.class Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$1;
.super Ljava/lang/Object;
.source "ZdocScanFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$1;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$1;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget-object p2, p2, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "backstage_interrupt"

    invoke-virtual {p2, v1, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertChoose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$1;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    sget-object p2, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p1, p2}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    return-void
.end method
