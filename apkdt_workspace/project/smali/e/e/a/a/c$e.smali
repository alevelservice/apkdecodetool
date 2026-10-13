.class Le/e/a/a/c$e;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/e/a/a/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Le/e/a/a/c;


# direct methods
.method constructor <init>(Le/e/a/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/e/a/a/c$e;->e:Le/e/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/e/a/a/c$e;->e:Le/e/a/a/c;

    invoke-static {v0}, Le/e/a/a/c;->a(Le/e/a/a/c;)Lcom/example/native_webview/WebViewActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2
    sget-object v0, Lcom/example/native_webview/e;->k:Lg/a/c/a/k;

    const-string v1, "backToHome"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
