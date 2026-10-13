.class Le/b/b/a/a/c/c;
.super Ljava/lang/Object;
.source "APLogConfigFacade.java"

# interfaces
.implements Lcom/alipay/iap/android/aplog/core/filter/b;


# instance fields
.field final synthetic a:Le/b/b/a/a/c/b;


# direct methods
.method constructor <init>(Le/b/b/a/a/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/c/c;->a:Le/b/b/a/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/iap/android/aplog/core/filter/d;)Lcom/alipay/iap/android/aplog/core/filter/j;
    .locals 1

    .line 7
    new-instance p1, Lcom/alipay/iap/android/aplog/core/filter/j;

    invoke-direct {p1}, Lcom/alipay/iap/android/aplog/core/filter/j;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Lcom/alipay/iap/android/aplog/core/filter/j;->a:Z

    return-object p1
.end method

.method public a(Lcom/alipay/iap/android/aplog/core/filter/e;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p1, Lcom/alipay/iap/android/aplog/core/filter/e;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Le/b/b/a/a/c/b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Le/b/b/a/a/c/b;->c()Le/b/b/a/a/c/a;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    invoke-static {}, Le/b/b/a/a/c/b;->c()Le/b/b/a/a/c/a;

    move-result-object v1

    iget-object v1, v1, Le/b/b/a/a/c/a;->logTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 4
    invoke-static {}, Le/b/b/a/a/c/b;->c()Le/b/b/a/a/c/a;

    move-result-object v1

    iget-object v1, v1, Le/b/b/a/a/c/a;->logTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Le/b/b/a/a/c/b;->c()Le/b/b/a/a/c/a;

    move-result-object v1

    iget-object v1, v1, Le/b/b/a/a/c/a;->logTypes:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/alipay/iap/android/aplog/core/filter/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Le/b/b/a/a/c/c;->a:Le/b/b/a/a/c/b;

    invoke-static {v0, p1}, Le/b/b/a/a/c/b;->a(Le/b/b/a/a/c/b;Lcom/alipay/iap/android/aplog/core/filter/e;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method
