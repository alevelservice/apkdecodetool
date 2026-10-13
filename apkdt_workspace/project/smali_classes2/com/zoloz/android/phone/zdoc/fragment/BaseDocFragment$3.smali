.class Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$3;
.super Ljava/lang/Object;
.source "BaseDocFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

.field final synthetic val$goToSettings:Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$3;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iput-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$3;->val$goToSettings:Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$3;->val$goToSettings:Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;

    invoke-interface {p1}, Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;->execute()V

    return-void
.end method
