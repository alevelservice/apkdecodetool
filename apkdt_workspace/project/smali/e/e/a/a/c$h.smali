.class Le/e/a/a/c$h;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/e/a/a/c;->a(Ljava/lang/String;)V
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
    iput-object p1, p0, Le/e/a/a/c$h;->e:Le/e/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/e/a/a/c$h;->e:Le/e/a/a/c;

    invoke-static {v0}, Le/e/a/a/c;->a(Le/e/a/a/c;)Lcom/example/native_webview/WebViewActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Le/e/a/a/c$h;->e:Le/e/a/a/c;

    invoke-static {v1}, Le/e/a/a/c;->b(Le/e/a/a/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "responseData"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/example/native_webview/e;->k:Lg/a/c/a/k;

    const-string v2, "notifyAppWithData"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
