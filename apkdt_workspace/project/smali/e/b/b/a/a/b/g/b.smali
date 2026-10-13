.class public Le/b/b/a/a/b/g/b;
.super Le/b/b/a/a/b/b;
.source "PerformanceLog.java"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Le/b/b/a/a/b/g/a;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/b;-><init>()V

    const-string v0, "performance"

    .line 2
    iput-object v0, p0, Le/b/b/a/a/b/g/b;->c:Ljava/lang/String;

    .line 3
    sget-object v0, Le/b/b/a/a/b/g/a;->MONITORPOINT_PERFORMANCE:Le/b/b/a/a/b/g/a;

    iput-object v0, p0, Le/b/b/a/a/b/g/b;->h:Le/b/b/a/a/b/g/a;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Le/b/b/a/a/b/g/b;->j:I

    .line 5
    invoke-virtual {p0}, Le/b/b/a/a/b/b;->b()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/g/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/g/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/g/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/g/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/g/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Le/b/b/a/a/b/g/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/g/b;->h:Le/b/b/a/a/b/g/a;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Le/b/b/a/a/b/g/b;->j:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/g/b;->i:Ljava/lang/String;

    return-object v0
.end method
