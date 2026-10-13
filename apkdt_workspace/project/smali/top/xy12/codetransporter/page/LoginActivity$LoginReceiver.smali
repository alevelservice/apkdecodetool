.class public Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/xy12/codetransporter/page/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ltop/xy12/codetransporter/page/LoginActivity;


# direct methods
.method public constructor <init>(Ltop/xy12/codetransporter/page/LoginActivity;)V
    .locals 0

    .line 178
    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "access_token"

    .line 181
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 183
    invoke-static {p1}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object p2

    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/LoginActivity;->access$000(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "etChannelId"

    invoke-virtual {p2, v1, v0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object p2

    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/LoginActivity;->access$100(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "etUserName"

    invoke-virtual {p2, v1, v0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object p2

    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/LoginActivity;->access$200(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "etPassword"

    invoke-virtual {p2, v1, v0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    const-class v1, Ltop/xy12/codetransporter/page/MainActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-virtual {p1}, Ltop/xy12/codetransporter/page/LoginActivity;->finish()V

    :cond_0
    return-void
.end method
