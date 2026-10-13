.class Le/e/a/a/c$a;
.super Landroid/webkit/WebChromeClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/e/a/a/c;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/e/a/a/c;


# direct methods
.method constructor <init>(Le/e/a/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/e/a/a/c$a;->a:Le/e/a/a/c;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Le/e/a/a/c$a;->a:Le/e/a/a/c;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "Permission"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " would like to use your current Location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->a(Z)Landroidx/appcompat/app/c$a;

    new-instance v1, Le/e/a/a/c$a$b;

    invoke-direct {v1, p0, p2, p1}, Le/e/a/a/c$a$b;-><init>(Le/e/a/a/c$a;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const-string v2, "Allow"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    new-instance v1, Le/e/a/a/c$a$a;

    invoke-direct {v1, p0, p2, p1}, Le/e/a/a/c$a$a;-><init>(Le/e/a/a/c$a;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const-string p1, "Deny"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
