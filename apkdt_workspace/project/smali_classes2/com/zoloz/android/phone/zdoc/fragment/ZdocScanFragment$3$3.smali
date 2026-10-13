.class Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3$3;
.super Ljava/lang/Object;
.source "ZdocScanFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3$3;->this$1:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3$3;->this$1:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;

    iget-object v0, v0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    iget-object v1, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    invoke-static {v0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->access$100(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->updateMessage(I)V

    return-void
.end method
