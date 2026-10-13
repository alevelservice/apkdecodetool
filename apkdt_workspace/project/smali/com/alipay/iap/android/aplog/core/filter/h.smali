.class Lcom/alipay/iap/android/aplog/core/filter/h;
.super Ljava/lang/Object;
.source "StrategyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Lcom/alipay/iap/android/aplog/core/filter/g;


# direct methods
.method constructor <init>(Lcom/alipay/iap/android/aplog/core/filter/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/iap/android/aplog/core/filter/h;->e:Lcom/alipay/iap/android/aplog/core/filter/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/iap/android/aplog/core/filter/h;->e:Lcom/alipay/iap/android/aplog/core/filter/g;

    invoke-static {v0}, Lcom/alipay/iap/android/aplog/core/filter/g;->a(Lcom/alipay/iap/android/aplog/core/filter/g;)I

    .line 2
    iget-object v0, p0, Lcom/alipay/iap/android/aplog/core/filter/h;->e:Lcom/alipay/iap/android/aplog/core/filter/g;

    invoke-static {v0}, Lcom/alipay/iap/android/aplog/core/filter/g;->b(Lcom/alipay/iap/android/aplog/core/filter/g;)V

    return-void
.end method
