.class Le/e/a/a/b$a;
.super Ljava/lang/Object;
.source "interceptWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/e/a/a/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Le/e/a/a/b;


# direct methods
.method constructor <init>(Le/e/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/e/a/a/b$a;->e:Le/e/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/e/a/a/b$a;->e:Le/e/a/a/b;

    invoke-static {v0}, Le/e/a/a/b;->a(Le/e/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/e/a/a/b$a;->e:Le/e/a/a/b;

    invoke-static {v0}, Le/e/a/a/b;->b(Le/e/a/a/b;)Le/e/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Le/e/a/a/c;->h()V

    .line 3
    iget-object v0, p0, Le/e/a/a/b$a;->e:Le/e/a/a/b;

    iget-boolean v1, v0, Le/e/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 4
    invoke-static {v0}, Le/e/a/a/b;->c(Le/e/a/a/b;)V

    :cond_1
    return-void
.end method
