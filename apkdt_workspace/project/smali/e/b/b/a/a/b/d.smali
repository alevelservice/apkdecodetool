.class public Le/b/b/a/a/b/d;
.super Le/b/b/a/a/b/b;
.source "FlushLog.java"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/b;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/b/a/a/b/d;->c:Ljava/lang/String;

    const-string p1, "flush"

    .line 3
    iput-object p1, p0, Le/b/b/a/a/b/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/d;->c:Ljava/lang/String;

    return-object v0
.end method
