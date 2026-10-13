.class public Le/b/b/a/a/b/c/b;
.super Le/b/b/a/a/b/b;
.source "AliveReportLog.java"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/b;-><init>()V

    const-string v0, "reportActive"

    .line 2
    iput-object v0, p0, Le/b/b/a/a/b/c/b;->c:Ljava/lang/String;

    const-string v0, "alivereport"

    .line 3
    iput-object v0, p0, Le/b/b/a/a/b/c/b;->d:Ljava/lang/String;

    const-string v0, "event"

    .line 4
    iput-object v0, p0, Le/b/b/a/a/b/c/b;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Le/b/b/a/a/b/c/b;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Le/b/b/a/a/b/c/b;->f:I

    return v0
.end method
