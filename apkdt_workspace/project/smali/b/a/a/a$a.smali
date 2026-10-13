.class Lb/a/a/a$a;
.super Ljava/lang/Object;
.source "AppInstallReferrerService.java"

# interfaces
.implements Lcom/android/installreferrer/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/a;->a(Landroid/content/Context;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/a/c/a/k$d;

.field final synthetic b:Lb/a/a/a;


# direct methods
.method constructor <init>(Lb/a/a/a;Lg/a/c/a/k$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/a$a;->b:Lb/a/a/a;

    iput-object p2, p0, Lb/a/a/a$a;->a:Lg/a/c/a/k$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lb/a/a/a$a;->a:Lg/a/c/a/k$d;

    const-string v2, "FEATURE_NOT_SUPPORTED"

    invoke-interface {p1, v1, v2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lb/a/a/a$a;->a:Lg/a/c/a/k$d;

    const-string v2, "SERVICE_UNAVAILABLE"

    invoke-interface {p1, v1, v2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_2
    :try_start_0
    iget-object p1, p0, Lb/a/a/a$a;->b:Lb/a/a/a;

    invoke-static {p1}, Lb/a/a/a;->a(Lb/a/a/a;)Lb/a/a/d;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lb/a/a/a$a;->a:Lg/a/c/a/k$d;

    invoke-virtual {p1}, Lb/a/a/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v2, p0, Lb/a/a/a$a;->a:Lg/a/c/a/k$d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
