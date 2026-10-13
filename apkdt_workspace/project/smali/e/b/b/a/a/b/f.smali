.class public Le/b/b/a/a/b/f;
.super Le/b/b/a/a/b/b;
.source "TraceLog.java"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Le/b/b/a/a/a/c;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/b;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/b/a/a/b/f;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/b/b/a/a/b/f;->d:Le/b/b/a/a/a/c;

    .line 4
    iput-object p3, p0, Le/b/b/a/a/b/f;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Le/b/b/a/a/b/f;->f:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "applog"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Le/b/b/a/a/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/f;->d:Le/b/b/a/a/a/c;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/f;->f:Ljava/lang/Throwable;

    return-object v0
.end method
