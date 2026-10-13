.class public Le/b/b/a/a/b/c/d;
.super Le/b/b/a/a/b/c/a;
.source "BehaviourLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/b/a/a/b/c/d$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:Le/b/b/a/a/b/c/e;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/c/a;-><init>()V

    const-string v0, "userbehavor"

    .line 2
    iput-object v0, p0, Le/b/b/a/a/b/c/d;->f:Ljava/lang/String;

    const-string v0, "event"

    .line 3
    iput-object v0, p0, Le/b/b/a/a/b/c/d;->g:Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Le/b/b/a/a/b/c/d;->j:I

    .line 5
    new-instance v0, Le/b/b/a/a/b/c/e;

    invoke-direct {v0}, Le/b/b/a/a/b/c/e;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/b/c/d;->e:Le/b/b/a/a/b/c/e;

    .line 6
    invoke-virtual {p0}, Le/b/b/a/a/b/b;->b()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Le/b/b/a/a/b/c/d;
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/b/c/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Le/b/b/a/a/b/c/d;
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/b/c/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/b/c/d;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Le/b/b/a/a/b/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d;->e:Le/b/b/a/a/b/c/e;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Le/b/b/a/a/b/c/d;->j:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d;->i:Ljava/lang/String;

    return-object v0
.end method
