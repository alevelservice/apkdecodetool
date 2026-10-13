.class public Le/e/a/a/a;
.super Ljava/lang/Object;
.source "AndroidJSInterface.java"


# instance fields
.field private a:Le/e/a/a/d;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Le/e/a/a/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/e/a/a/a;->a:Le/e/a/a/d;

    .line 3
    iput-object p2, p0, Le/e/a/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disableBackButton(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Le/e/a/a/a;->a:Le/e/a/a/d;

    invoke-interface {p1}, Le/e/a/a/d;->c()V

    .line 2
    iget-object p1, p0, Le/e/a/a/a;->a:Le/e/a/a/d;

    invoke-interface {p1}, Le/e/a/a/d;->e()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/e/a/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public goBackHome(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Le/e/a/a/a;->a:Le/e/a/a/d;

    invoke-interface {p1}, Le/e/a/a/d;->f()V

    return-void
.end method

.method public keepSessionAlive()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/e/a/a/a;->a:Le/e/a/a/d;

    invoke-interface {v0}, Le/e/a/a/d;->d()V

    return-void
.end method

.method public notifyAppWithResponseData(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/e/a/a/a;->a:Le/e/a/a/d;

    invoke-interface {v0, p1}, Le/e/a/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public userLoggedOut()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/e/a/a/a;->a:Le/e/a/a/d;

    invoke-interface {v0}, Le/e/a/a/d;->b()V

    return-void
.end method
