.class public Le/b/b/a/a/b/a/a;
.super Le/b/b/a/a/b/b;
.source "ApmLog.java"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Throwable;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/b;-><init>()V

    const-string v0, "apm"

    .line 2
    iput-object v0, p0, Le/b/b/a/a/b/a/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/a/a;->e:Ljava/lang/Throwable;

    return-object v0
.end method
