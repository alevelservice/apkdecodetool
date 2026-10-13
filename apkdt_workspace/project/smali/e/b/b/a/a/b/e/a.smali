.class public Le/b/b/a/a/b/e/a;
.super Le/b/b/a/a/b/b;
.source "ExceptionLog.java"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/b;-><init>()V

    const-string v0, "exception"

    .line 2
    iput-object v0, p0, Le/b/b/a/a/b/e/a;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Le/b/b/a/a/b/b;->b()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/e/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/e/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/e/a;->f:Ljava/lang/String;

    return-object v0
.end method
