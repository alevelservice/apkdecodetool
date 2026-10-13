.class public Le/b/b/a/a/b/c/c;
.super Le/b/b/a/a/b/c/a;
.source "AutoBehaviourLog.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Le/b/b/a/a/b/c/e;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/c/a;-><init>()V

    const-string v0, "auto_openPage"

    .line 2
    iput-object v0, p0, Le/b/b/a/a/b/c/c;->e:Ljava/lang/String;

    const-string v0, "autouserbehavor"

    .line 3
    iput-object v0, p0, Le/b/b/a/a/b/c/c;->g:Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Le/b/b/a/a/b/c/c;->i:I

    .line 5
    new-instance v0, Le/b/b/a/a/b/c/e;

    invoke-direct {v0}, Le/b/b/a/a/b/c/e;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/b/c/c;->f:Le/b/b/a/a/b/c/e;

    .line 6
    invoke-virtual {p0}, Le/b/b/a/a/b/b;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Le/b/b/a/a/b/c/a;-><init>()V

    const-string v0, "auto_openPage"

    .line 8
    iput-object v0, p0, Le/b/b/a/a/b/c/c;->e:Ljava/lang/String;

    const-string v0, "autouserbehavor"

    .line 9
    iput-object v0, p0, Le/b/b/a/a/b/c/c;->g:Ljava/lang/String;

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Le/b/b/a/a/b/c/c;->i:I

    .line 11
    invoke-direct {p0}, Le/b/b/a/a/b/c/c;->k()V

    .line 12
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Le/b/b/a/a/e/i;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v1, p0, Le/b/b/a/a/b/c/c;->f:Le/b/b/a/a/b/c/e;

    invoke-virtual {v1, v0}, Le/b/b/a/a/b/c/e;->b(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Le/b/b/a/a/b/c/c;->b(Ljava/lang/String;)Le/b/b/a/a/b/c/c;

    .line 17
    iget-object v1, p0, Le/b/b/a/a/b/c/c;->f:Le/b/b/a/a/b/c/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/b/b/a/a/b/c/e;->e(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    new-instance v0, Le/b/b/a/a/b/c/e;

    invoke-direct {v0}, Le/b/b/a/a/b/c/e;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/b/c/c;->f:Le/b/b/a/a/b/c/e;

    .line 2
    invoke-virtual {p0}, Le/b/b/a/a/b/b;->b()V

    .line 3
    iget-object v0, p0, Le/b/b/a/a/b/c/c;->f:Le/b/b/a/a/b/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/b/a/a/b/c/e;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/b/b/a/a/b/c/c;->f:Le/b/b/a/a/b/c/e;

    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Le/b/b/a/a/a/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/b/a/a/b/c/e;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Le/b/b/a/a/b/c/c;
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/b/c/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/c;->f:Le/b/b/a/a/b/c/e;

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Le/b/b/a/a/b/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/c;->f:Le/b/b/a/a/b/c/e;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Le/b/b/a/a/b/c/c;->i:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/c;->h:Ljava/lang/String;

    return-object v0
.end method
