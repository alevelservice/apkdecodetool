.class Ltop/xy12/codetransporter/page/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/page/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/xy12/codetransporter/page/LoginActivity;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/page/LoginActivity;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity$1;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    iput-object p2, p0, Ltop/xy12/codetransporter/page/LoginActivity$1;->val$map:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$1;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    iget-object v1, p0, Ltop/xy12/codetransporter/page/LoginActivity$1;->val$map:Ljava/util/HashMap;

    new-instance v2, Ltop/xy12/codetransporter/page/LoginActivity$1$1;

    invoke-direct {v2, p0}, Ltop/xy12/codetransporter/page/LoginActivity$1$1;-><init>(Ltop/xy12/codetransporter/page/LoginActivity$1;)V

    const-string v3, "auth/loginK"

    invoke-static {v0, v3, v1, v2}, Ltop/xy12/codetransporter/util/OkHttpUtils;->login(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ltop/xy12/codetransporter/interfaces/ILoginCallBack;)V

    return-void
.end method
