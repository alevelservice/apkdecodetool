.class Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$9;
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
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$9;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$9;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "network_error"

    invoke-virtual {p1, v0, p2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertChoose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$9;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    sget-object p2, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOADING:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p1, p2}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$9;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->upLoadImage()V

    return-void
.end method
