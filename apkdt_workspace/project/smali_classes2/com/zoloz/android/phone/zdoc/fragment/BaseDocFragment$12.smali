.class Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$12;
.super Ljava/lang/Object;
.source "BaseDocFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

.field final synthetic val$state:Lcom/zoloz/android/phone/zdoc/ui/UIState;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;Lcom/zoloz/android/phone/zdoc/ui/UIState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$12;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iput-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$12;->val$state:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$12;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "active_exit"

    invoke-virtual {p1, v0, p2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertChoose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$12;->val$state:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    sget-object p2, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$12;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-virtual {p1, p2}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    :cond_0
    return-void
.end method
