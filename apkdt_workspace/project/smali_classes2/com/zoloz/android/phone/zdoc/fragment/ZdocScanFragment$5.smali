.class Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$5;
.super Ljava/lang/Object;
.source "ZdocScanFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$5;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->alertSystemError()V

    return-void
.end method
